---
id: containervision
title: "Automated identification of containers based on visual characteristics"
title_project: "Automated identification of containers based on visual characteristics"
title_short: "ContainerVision"
period: "Oct 23 – Mar 24 (6 months)" 
round: "3"
lecture2go: "68036"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/dritte-foerderrunde/containervision.html"
students: "Louis Gerken, Helena Becker, Lennart Roth"
mentor: "Prof. Dr. Janick Edinger"
text: |
    The ContainerVision project aims to optimize container management at smaller inland and seaports. To this end, aerial photographs will be analyzed to identify the containers visible in them, thereby assisting port employees in locating specific containers.  

    Until now, containers have had to be searched for manually. This is very time-consuming and, due to the use of container stackers and other vehicles, results in high fuel consumption. Our project automatically evaluates aerial photographs, for example from drones, using computer vision methods. In many cases, due to the quality of the image and the distance, it will not be possible to correctly read the identification numbers of the containers, which means that manual identification will be necessary. For this reason, we capture and process a variety of visual features such as color, logos, external defects, and surface structure. This significantly simplifies drone flights, enabling more frequent scans and thus higher temporal resolution. 

    The project involves several steps. The starting point is data collection, followed by data processing to construct a database of container characteristics. Using an image processing pipeline developed by us, the containers can then be identified, with the visual characteristics mentioned above serving as classification parameters.

    The focus then shifts to the recognition of specific containers. The information collected is compared with a database to narrow down the candidates for possible correct identification numbers and ultimately identify a container uniquely. The database is supplemented with the characteristics of newly captured containers. Such automated identification of containers using visual characteristics does not yet exist. 

    To be more specific, the image processing pipeline could look as follows: After the image is loaded it is scaled, noise is reduced, and contrast is adjusted to improve image quality. In addition, a color calibration process is performed in conjunction with histogram equalization to make images taken under different lighting conditions comparable. This is followed by container recognition and segmentation, with the aim of locating the containers in the image and separating them from their background.

    The containers are then classified according to their visual characteristics, which are obtained using conventional analytical and machine learning methods. This includes, among other things, capturing the identification number using optical character recognition (OCR). The algorithms are trained in advance with a sufficient amount of data in the form of containers with corresponding labels. The condition of the container, for example in terms of possible defects and colors, can be determined by image segmentation, image comparison, object tracking, and pattern recognition.

    After classification, the individual containers are identified based on the classification results using decision trees or neural networks. In this way, the ContainerVision project contributes to more efficient port logistics and improved economic and environmental sustainability. In addition, ContainerVision promotes the use of drone technology, image processing, and machine learning in the logistics industry.

image: "https://www.hcl.uni-hamburg.de/18288348/pexels-tom-fisk-1427107-733x414-9d8644c7f263129f61f178d1faad9688ad2fd20b.jpg"
image_credit: "Tom Fisk / Pexels"
---