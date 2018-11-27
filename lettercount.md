---
title: "Information on words which start and end with same letter"
author: "Chenchen Guo"
date: "11-26-2018"
output:
  html_document:
    keep_md: yes
---



On most *nix systems, the file `/usr/share/dict/words` contains a bunch of words. Here, it contains 235970 words.

The most frequent word length is 9.

Here I sort out all words which start and end with the same letter, the file `/usr/share/dict/number` contains all words satisfied the sorting scheme. And it contains 0 same words

In order to list the distribution of these words which have same starting and ending letter, I generated a picture to see the distribution.

As you can see, the letter 's' has the most words which have same starting and ending letter.

Here is a histogram of word lengths.

![*Fig. 1* A histogram of words numbers(start and end with same letter) for each letter](numbhistogram.png)
