---
id: avacitybike
title: "Improving the availability of rental bikes through model-based predictions of local demand"
title_project: "Improving the availability of rental bikes through model-based predictions of local demand"
title_short: "Ava-Citybike"
period: "Oct 22 – Sep 23 (12 months)" 
round: "1"
lecture2go: "64230"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/erste-foerderrunde/avacitybike.html"
students: "Sebastian Rühmann, Radmila Khramtseva"
mentor: "Prof. Dr. Janick Edinger"
text: |
    In the Available Citybikes (Ava-Citybike) project, we want to improve the availability of rental bikes with the help of artificial intelligence. To this end, we are developing a neural network that forecasts *local demand* at rental bike stations. With this knowledge, we are pursuing several goals. 

    On the one hand, we want to enable users to use rental bikes as a *reliable means of transportation* in their everyday lives. Due to local peaks in demand, rental bikes are currently unavailable at some stations at times. This is a major problem, as users rely on the availability of rental bikes every day on their way to work, university, or a leisure event. That is why we will enable users to plan ahead with regard to the availability of rental bikes by forecasting demand.  

    On the other hand, our service is aimed at rental bike providers. They can use the predicted demand for rental bikes to distribute the bikes across the network of stations. Distributing rental bikes can help balance out local shortages of rental bikes between stations. This is also an important factor in increasing the long-term availability of rental bikes at all stations.

    In this project, we look forward to working in an interdisciplinary manner in the fields of *mobility, computer science, and psychology*. It becomes clear that it makes a lot of sense for our project to work in an interdisciplinary manner when we look at the project plan below.

    In the first phase of the project, we will analyze the numerous factors that influence the demand for rental bikes and consider those most relevant to the development of our forecast. Examples of such factors include time of day, weather, local events, and traffic conditions.

    We plan to use three complementary methods for the analysis:
  
    - It can be assumed that relevant factors in the past will also be indicative of future demand. We are therefore planning a statistical dependency analysis between the data set on city bike usage over the last 5 years and the other factors. The dependency analysis determines how strong the correlation between the individual factors and demand for city bikes was. In other words, it determines how important each factor was for demand. This enables us to make a statistical statement about relevant factors for our forecast.
    - Second, we plan to conduct interviews with employees of the regional bike-sharing provider Stadtrad. In the interviews, we want to find out in particular which methods and technologies Stadtrad is currently using to improve the availability of rental bikes. 
    - Thirdly, we plan to conduct a user study. The aim of this study is to gain a better understanding of how rental bikes are used. For example, in order to develop a reliable forecast, we are interested in how often Stadtrad users use the service, for what purpose, and how users plan their route to their destination.

    In the next phase, we will design and implement the *neural network* based on the selected relevant factors. We will then train the neural network using the Urban Data Hub dataset. In an iterative process, we will optimize and train the neural network to ultimately obtain the most accurate predictions possible about the demand for rental bikes per station, taking into account the relevant factors.

    In the final phase, we will focus on implementing the neural network in one or more use cases. Over the next 12 months of the project, we will evaluate which implementations are feasible, meaningful, and effective. The exploration of the following three use cases is firmly planned for this phase:

    - When navigating with Google Maps, for example, the predictive route finder displays the availability of rental bikes. Even for multimodal routes—such as a 30-minute train ride followed by a transfer to a rental bike—it is very important for users to know in advance whether a rental bike will be available after their train journey.
    - On a city map of Hamburg, Stadtrad employees can see the predicted demand and improve local availability through distribution.
    - The neural network is provided as an interface on the City of Hamburg's Urban Data Hub and serves as a data source for implementation in other services.

image: "https://www.hcl.uni-hamburg.de/16179316/stadtradt-uhh-ohme-df6238ae0965a9c15e2965c4c80647447f6e13ce.jpg"
image_credit: "UHH/Ohme"
---