---
id: appilyzer
title: "Data-driven application for analyzing apples in apple orchards"
title_project: "Data-driven application for analyzing apples in apple orchards"
title_short: "Appilyzer"
period: "Oct 22 – Mar 23 (6 months)" 
round: "1"
lecture2go: "64228"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/erste-foerderrunde/appilyzer.html"
students: "Robert Johanson, Jan-Gerrit Habekost, Silas Ueberscherer, Jan Willruth"
mentor: "Dr. Christian Wilms"
text: |
    The aim of the Appilyzer project is to design and develop a data-driven application that enables automatic analysis in the form of *yield estimation and health assessment* of apples in apple orchards. The accuracy and reliability of the system will be evaluated to enable comparison with other approaches. 

    Our project is part of the *Agriculture 4.0* research branch, which deals with the automation of agricultural processes, among other things. The project is motivated by the fact that, even today, both yield estimation and harvest quality analysis are often still carried out manually. This involves assessing part of the orchard and then extrapolating the results to the rest of the orchard. This approach is prone to error due to the extrapolation and remains time-consuming and costly due to the high level of human resources involved.  

    To automate this process, high-resolution videos of all apple trees are first taken using a *drone*, which are then cut into a sequence of non-overlapping images to avoid double counting. The apples in each of these images are then cut out using a convolution-based *neural network*. To estimate the harvested yield, the cut-out apples are counted. To assess the quality of the harvest, another neural network is trained to classify the cut-out apples into healthy and unhealthy apples. The health assessment is represented by the ratio of unhealthy to healthy apples. To carry out this process, videos of the apple orchard at Nütschau Monastery were recorded several times this summer using a DJI drone.    

image: "https://www.hcl.uni-hamburg.de/16179305/appilyzer-marek-studzins-unsplash-e516db5f3e177d235124bb95b207e9a561138238.jpg"
image_credit: "marek studzins / unsplash"
---