all: data_dir report.html lettercount.html

clean:
	rm -rf data rest_files plot *.txt *.tsv *.csv *.html report.md lettercount.md *.png

data_dir:
	mkdir data
	mkdir plot
	mkdir rest_files

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
	
report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.tsv: ./src/histogram.r words.txt
	Rscript $<

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

samechar.csv: ./src/samecharacter.r words.txt
	Rscript $<

number.tsv: ./src/charhistogram.r samechar.csv
	Rscript $<

numbhistogram.png: number.tsv
	Rscript -e 'library(ggplot2); ggplot(data=read.delim("$<"), aes(word_freq,data))+geom_col()+xlab("Letter")+ylab("Appear frequency")+ggtitle("Number of words(start and end with same letter) for each letter"); ggsave("$@")'
	rm Rplots.pdf

lettercount.html: lettercount.rmd histogram.tsv number.tsv numbhistogram.png
	Rscript -e 'rmarkdown::render("$<")'
	
#words.txt: /usr/share/dict/words
#	cp $< $@


	
	mv *.txt data
	mv *.tsv data
	mv *.csv data
	mv *.png plot
	mv *.html rest_files