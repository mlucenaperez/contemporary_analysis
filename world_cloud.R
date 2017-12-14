library(wordcloud)
library(tm)
library(SnowballC)

words_freq <- read.csv('/Users/marialucenaperez/Desktop/gracias.csv', stringsAsFactors = FALSE, header = F)

#####  with colors  #####
if(require(RColorBrewer)){
pal <- brewer.pal(9,"Greys")
pal <- pal[-(1:4)]
}


wordcloud(words_freq$V1, words_freq$V2,c(8,.3),2,,TRUE,TRUE,.15,pal)

