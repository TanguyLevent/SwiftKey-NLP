library(tm)

con1 <- file("en_US/en_US.twitter.txt", "r", blocking = FALSE)
con2 <- file("en_US/en_US.blogs.txt", "r", blocking = FALSE)
con3 <- file("en_US/en_US.news.txt", "r", blocking = FALSE)

md_twitter_US <- readLines(con1)
md_blogs_US <- readLines(con2)
md_news_US <- readLines(con3)


max_length_twitter <- max(nchar(md_twitter_US))
max_length_blogs <- max(nchar(md_blogs_US))
max_length_news <- max(nchar(md_news_US))

word_love_twitter <- grep("love",md_twitter_US)
lgth_love_twitter <- length(word_love_twitter)

word_hate_twitter <- grep("hate",md_twitter_US)
lgth_hate_twitter <- length(word_hate_twitter)

word_biostats_twitter <- grep("biostats",md_twitter_US)
md_twitter_US[word_biostats_twitter]

sentence_twitter <- grep("A computer once beat me at chess, but it was no match for me at kickboxing",md_twitter_US)
length(sentence_twitter)
