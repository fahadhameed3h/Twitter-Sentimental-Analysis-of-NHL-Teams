library(ggplot2)
TeamsTwittes = read.csv("TeamsTwittesNEW.csv")
NHLTeams = read.csv("NHLTeams")
sentence_snowstemmeed = read.csv("sentence_snowstemmeed")
TwittesSentimentsForTEAMS = read.csv("TwittesSentimentsForTEAMS_NEW")

trendTweets = read.csv("NHLTrend-1.csv")

NHLTeams_analysis = NHLTeams
TwitteCount <- c()
cc = 1
check <- FALSE
for(i in 1:nrow(NHLTeams) ){
  count = 0
  teamName = NHLTeams$col[i]
  teamName = tolower(teamName)
  team = paste(teamName,sep="")
  check = grepl(team, tolower(trendTweets$Tweet))
  count <- length(which(check, TRUE))
  TwitteCount[cc] <- count
  cc= cc+1
}

NHLTeams_analysis$tweet_count = TwitteCount

twt = NHLTeams_analysis[NHLTeams_analysis$tweet_count != 0,]
popular_teams = twt[order(-twt$tweet_count),]
print(popular_teams)
########################################################################

ggplot(data=popular_teams, aes(x=col, y=tweet_count))+
  geom_bar(stat="identity")+xlab("Teams")+ ylab("Number of Tweets")+ theme(axis.text.x = element_text(angle = 90, hjust = 1))
########################################################################

########################################################################
data <- structure(list(A= c(118, 234, 84),
                       B = c(97, 257, 58) , 
                       C = c(97, 243, 127), 
                       D = c(94, 199, 70),
                       E = c(63, 127, 327),
                       Fa = c(62, 246, 131),
                       G = c(58,153,100),
                       H = c(56, 186, 168)), 
                  .Names = c("Tampa Bay Lightning", "Boston Bruins", "Calgary Flames", "San Jose Sharks","New Jersey Devils","Detroit Red Wings",
                             "Los Angeles Kings","Ottawa Senators "), 
                  class = "data.frame", 
                  row.names = c(NA, -3))

colours <- c("blue", "green", "red")
barplot(as.matrix(data), main="ESPN Ranking,Pos/Neg Tweets", ylab = "Numbers",las=2, cex.lab = 1.5, cex.main = 1.4, beside=TRUE, col=colours)
legend(1, 310, legend=c("ESPN Ranking", "Positive", "Negative"),
       col=c("blue", "green","red"), lty=1, cex=0.6)

########################################################################
