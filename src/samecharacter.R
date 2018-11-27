# import the string library
library(stringr)
library(stringi)
# import the word txt file
word <- readLines('words.txt')

#find all words that start and end with same character using regular expression
samechar <- str_subset(word, "^(.).*\\1$")

# then write those words into a csv file
write.csv(samechar, file = "samechar.csv", 
					row.names = FALSE, quote = FALSE)
