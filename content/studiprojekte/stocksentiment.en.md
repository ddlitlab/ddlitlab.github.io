---
id: stocksentiment
title: "Predicting stock price trends using sentiment analysis of unstructured text data"
title_project: "Predicting stock price trends using sentiment analysis of unstructured text data"
title_short: "Stock Sentiment"
period: "Oct 22 – Mar 23 (6 months)" 
round: "1"
lecture2go: "64227"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/erste-foerderrunde/stocksentiment.html"
students: "Thomas Löhden, Tim Matthies"
mentor: "Dr. Jun-Patrick Raabe"
text: |
    The influence of social media on the financial market has increased enormously, especially in recent years. Perhaps the most influential example is the 2021 rise in GameStop shares, driven by a coordinated effort by users of the social media platform Reddit. This demonstrates that social media has become a significant factor in predicting stock performance. The goal of this project is to find a way to use unstructured text data from social media, such as tweets or comments, to determine opinion indicators for the future stock performance of various companies and to use them to improve stock forecasts. Suitable natural language processing (NLP) methods should be used for this purpose.

    To further clarify our research question, we want to pay particular attention to phenomena such as the "GameStop short squeeze," which have been rarely investigated until now. In the recently published paper [1], these phenomena (hereinafter referred to as "YOLO" events) are analyzed using data from Reddit. However, the authors do not consider the sentiment of the collected data in their analysis. The extent to which other platforms and sentiment are suitable as indicators for, for example, stock price volatility will be the focus of our project. For this purpose, we will evaluate historical Twitter data for the prices examined in the paper using sentiment analysis.

    The stocks that are the focus of our analysis are GameStop, AMC Entertainment Holdings, BlackBerry, and Nokia. YOLO events from the recent past are known for these stocks. We will specifically examine these events and determine the correlation between volatility and Twitter sentiment.

    Using the Twitter API, we gain access to the required data. Based on this, we will write a program that selects the appropriate data and prepares it for our sentiment analysis. The preparation step is an important and non-trivial part of data collection. Filtering out unwanted data is essential, especially when images or emoticons are an important part of a tweet. We retrieve the stock data for the selected time periods via another API. We compare the results from the sentiment analysis with the stock data and observe the extent to which we can detect a correlation between these data sets.

    ## References:

    [1] Lyócsa, Š., Baumöhl, E. & Výrost, T. (2022). In: Finance Research Letters (46) A. https://www.sciencedirect.com/science/article/pii/S1544612321003603, last access: 13th November, 2022.    

image: "https://www.hcl.uni-hamburg.de/16179363/stocks-clay-banks-unsplash-4ef9b078ace1ffdfe4406133af957be3509e9f46.jpg"
image_credit: "clay banks / unsplash"
---