all: report.html lettercount.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html samechar.csv number.tsv numbhistogram.png lettercount.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.tsv: histogram.r words.txt
	Rscript $<

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

samechar.csv: samecharacter.r words.txt
	Rscript $<

number.tsv: charhistogram.r samechar.csv
	Rscript $<

numbhistogram.png: number.tsv
	Rscript -e 'library(ggplot2); ggplot(data=read.delim("$<"), aes(word_freq,freq))+geom_col()+xlab("Letter")+ylab("Appear frequency")+ggtitle("Number of words(start and end with same letter) for each letter"); ggsave("$@")'
	rm Rplots.pdf

lettercount.html: lettercount.rmd histogram.tsv number.tsv numbhistogram.png
	Rscript -e 'rmarkdown::render("$<")'
	
#words.txt: /usr/share/dict/words
#	cp $< $@

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
