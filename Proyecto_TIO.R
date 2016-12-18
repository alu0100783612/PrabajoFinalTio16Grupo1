library("RODBC")
library("gdata")
library("xlsx")
library("tm")
library(lsa)
library("wordcloud")
# Lectura de ficheros

datos = read.table("C:/R/datos1.txt")


#####################################################################################
# ##################################Datos##########################################


#id <- datos$v1s

#user <- datos$V2

#tweet <- datos$V3

#mentions <- datos$V4

#retweet <- datos$v5

#visualizaciones <- datos$V6

#perfil <- datos$V7
#####################################################################################
# ####################Menciones Histograma de frecuencia#####################

mentions <- data.frame()
mentions <- as.numeric(datos[,4])

max_num <- max(mentions)

hh <- hist(mentions, col=heat.colors(max_num), breaks=max_num, 
     xlim=c(0,max_num), right=F, main="Histogram of mentions", las=1)
###############################################################################
##########################Media de retweets###################################

media <- data.frame()
media <- as.numeric(datos[,5])

mu <- mean(media)

#####################################################################################
#################### Usuarios que mas tweets hacen#################################

vector <- paste(datos[,2]) # concatena vectores de caracteres,es decir, con el paste.

corpus <- Corpus(VectorSource(vector))

d <- tm_map(corpus,content_transformer(tolower))
d <- tm_map(d,stripWhitespace)


tdm <- TermDocumentMatrix(d)

m = as.matrix(tdm)

wf <- sort(rowSums(m),decreasing = TRUE)

dm <- data.frame(word=names(wf),freq=wf)

wordcloud(dm$word, dm$freq, min.freq = 0, colors=brewer.pal(3,"Dark2"),random.order=TRUE)

#####################################################################################
# ############################Frecuencias usuarios tweet#############################

vec_men <- c(datos[,3])
names <- paste(datos[,2])
retw <- c(datos[,5])

g_range <- range(0,retw,vec_men)
plot(vec_men, type="o", col="blue", ylim=g_range, 
     axes=FALSE, ann=FALSE)

axis(1, at=1:87, lab=paste(names))


axis(2, las=1, at=4*0:g_range[2])

# Create box around plot
box()

# Graph trucks with red dashed line and square points
lines(retw, type="o", pch=22, lty=2, col="red")
lines(vec_men, type="o", pch=22, lty=2, col="blue")

# Create a title with a red, bold/italic font
title(main="Mapa de puntos Tweets", col.main="red", font.main=4)

# Label the x and y axes with dark green text
title(xlab="cantidad", col.lab=rgb(0,0.5,0))
title(ylab="tweets", col.lab=rgb(0,0.5,0))

# Create a legend at (1, g_range[2]) that is slightly smaller 
# (cex) and uses the same line colors and points used by 
# the actual plots 
legend(1, g_range[2], c("retweets","tweets"), cex=0.8, 
       col=c("blue","red"), pch=21:22, lty=1:2)
