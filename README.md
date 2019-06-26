# TWITTER SENTIMENT ANALYSIS OF NATIONAL HOCKEY LEAGUE (NHL) TEAMS

In this project, Social media site Twitter is used to analyze National Hockey League (NHL) Teams Popularity, for which teams related tweets are used to do sentiment analysis. Determining which teams’ popularity is increasing or decreasing using public reviews with the period of time on twitter will help sponsors of NHL to decide on which team to invest. Machine learning classification models Naive Bayes classifier and Deep Neural Network developed in the project for classifying tweets can be used for classifying future tweets and determine the distribution of positive and negative tweets. Social media sentiments together with team on field performance can be used to understand teams’ public perception and rank teams.


## Results

![1](https://user-images.githubusercontent.com/31726780/60210949-544a1600-985e-11e9-8f0c-c315ca9f2c94.PNG)

![Positive Negative Sentiments](https://user-images.githubusercontent.com/31726780/60159180-ed434780-97f2-11e9-9e05-47f0a0499165.PNG)

![Positive Negative Sentiments-2](https://user-images.githubusercontent.com/31726780/60159181-ed434780-97f2-11e9-9a77-4afcf7c0de00.PNG)

<p align="center">
  ![Team,rank](https://user-images.githubusercontent.com/31726780/60159184-eddbde00-97f2-11e9-88cc-710c0b465c55.png)
</p>



## Data

This project consists of two data extraction parts which are:

### Team Names:
The first part of data extraction is getting the National Hockey League (NHL) team names and rankings from the ESPN website. For this beautifulSoup library was used and 31 team names were extracted and stored in a csv file.

### Tweets:
Second part consists of retrieving Tweets related to NHL teams with hashtag of team names including Author name and date of tweets. Tweepy library was used to get the latest tweets from twitter. Retrieved tweets were stored in separate csv file. The tweets for each team was collected separately to get specific results for each team. Also to get more number of tweets collecting separately helped overcome the API constraint which resulted in retrieval of less number of tweets. For each team 500 tweets were collected which added up to 15500 tweets for 31 teams.

## Models

### Deep Neural Network

![4](https://user-images.githubusercontent.com/31726780/60210952-54e2ac80-985e-11e9-8e37-b230e4fb36c7.PNG)

### Naive Bayes Classifier 

![5](https://user-images.githubusercontent.com/31726780/60210954-54e2ac80-985e-11e9-9c39-c37924d16275.PNG)
