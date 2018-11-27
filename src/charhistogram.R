library(stringr)
library(stringi)

# import the csv file which contains words with same and end letter

charnu <- readLines("samechar.csv")

charnu %>% head(10)

word_freq_1 <- c("^a","^b","^c","^d","^e","^f","^g","^h","^i","^j","^k","^l","^m","^n","^o","^p","^q","^r","^s","^t",
								 "^u","^v","^w","^x","^y","^z")

data <- array(1:26)

for (i in 1:26){
	p <- grepl(charnu, pattern = word_freq_1[i])
	data[i] <- sum(p == TRUE)
}



word_freq <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t",
							 "u","v","w","x","y","z")

ct <- data.frame(word_freq, data)

# write into a table in order to plot in makefile

write.table(ct, "number.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)