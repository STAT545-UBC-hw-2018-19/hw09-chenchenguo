# import the library
library(stringr)
library(stringi)

# import the csv file which contains words with same and end letter

charnu <- readLines("samechar.csv")

# count number of words for each letter

a <- str_subset(charnu, "^a")
number_a <- length(a)

b <- str_subset(charnu, "^b")
number_b <- length(b)

c <- str_subset(charnu, "^c")
number_c <- length(c)

d <- str_subset(charnu, "^d")
number_d <- length(d)

e <- str_subset(charnu, "^e")
number_e <- length(e)

f <- str_subset(charnu, "^f")
number_f <- length(f)

g <- str_subset(charnu, "^g")
number_g <- length(g)

h <- str_subset(charnu, "^h")
number_h <- length(h)

i <- str_subset(charnu, "^i")
number_i <- length(i)

j <- str_subset(charnu, "^j")
number_j <- length(j)

k <- str_subset(charnu, "^k")
number_k <- length(k)

l <- str_subset(charnu, "^l")
number_l <- length(l)

m <- str_subset(charnu, "^m")
number_m <- length(m)

n <- str_subset(charnu, "^n")
number_n <- length(n)

o <- str_subset(charnu, "^o")
number_o <- length(o)

p <- str_subset(charnu, "^p")
number_p <- length(p)

q <- str_subset(charnu, "^q")
number_q <- length(q)

r <- str_subset(charnu, "^r")
number_r <- length(r)

s <- str_subset(charnu, "^s")
number_s <- length(s)

t <- str_subset(charnu, "^t")
number_t <- length(t)

u <- str_subset(charnu, "^u")
number_u <- length(u)

v <- str_subset(charnu, "^v")
number_v <- length(v)

w <- str_subset(charnu, "^w")
number_w <- length(w)

x <- str_subset(charnu, "^x")
number_x <- length(x)

y <- str_subset(charnu, "^y")
number_y <- length(y)

z <- str_subset(charnu, "^z")
number_z <- length(z)


# write these data into a data frame

freq <- c(number_a, number_b, number_c, number_d, number_e, number_f,number_g,
										 number_h, number_i, number_j, number_k, number_l,number_m, number_n,
										 number_o, number_p, number_q, number_r,number_s, number_t, number_u,
										 number_v, number_w, number_x,number_y, number_z)

word_freq <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t",
					"u","v","w","x","y","z")

ct <- data.frame(word_freq, freq)

# write into a table in order to plot in makefile

write.table(ct, "number.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)





# numb <- matrix(c(number_a, number_b, number_c, number_d, number_e, number_f,number_g,
# 								 number_h, number_i, number_j, number_k, number_l,number_m, number_n,
# 								 number_o, number_p, number_q, number_r,number_s, number_t, number_u,
# 								 number_v, number_w, number_x,number_y, number_z), byrow = TRUE)
# 
# colnames(numb) <- c("word","Freq")
# rownames(numb) <- c("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t",
# 										"u","v","w","x","y","z")
# 
# numb <- as.table(numb)

# write.table(numb, "number.tsv",
# 						sep = "\t", row.names = TRUE, quote = FALSE)




# ta <- c(number_a, number_b, number_c, number_d, number_e, number_f,number_g,
# number_h, number_i, number_j, number_k, number_l,number_m, number_n,
# number_o, number_p, number_q, number_r,number_s, number_t, number_u,
# number_v, number_w, number_x,number_y, number_z)
# 
# tablenum <- table(ta)







