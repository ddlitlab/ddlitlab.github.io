---
id: e2e_robot_soccer
title: "Soccer-playing robots: End-to-end AI for perception and control in RoboCup"
title_project: "Fully AI-based perception and control of an autonomous soccer-playing robot"
title_short: "E2E Robot Soccer"
period: "Oct 24 – Sep 25 (12 months)" 
round: "4"
lecture2go: "70596"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/vierte-foerderrunde/e2e-robot-soccer.html"
students: "Florian Vahl, Jan Gutsche, Joern Griepenburg"
mentor: "Jasper Güldenstein"
text: |

    Our project deals with the perception and control of autonomous soccer-playing robots using an innovative, machine-learned neural network (AI).

    This idea stems from our previous development and research activities in the student working and research group, the “[Hamburg Bit-Bots](https://bit-bots.de)”. This is a team that has been participating in the international research competition [RoboCup](https://www.robocup.org) since 2012. In various disciplines and leagues (including outside of soccer), basic research is conducted in the field of autonomous robots and AI. This has also led to innovations with a social impact beyond RoboCup [1]. We have been supporting the University of Hamburg team for several years and have been involved in a number of competitions, scientific publications, and other funding projects.

    The project aims to develop a novel alternative to the classic methods of perception and control of our autonomous robots. Until now, these tasks have been performed by a multitude of complex individual components, with everything except image processing being realized by manually programmed software (e.g., self-localization, strategy, path planning, motion generation, etc., see the following [repository](https://github.com/bit-bots/bitbots_main)). Instead, we would like to develop and use a so-called end-to-end (E2E) machine-learned neural network (such as ChatGPT [4]). This differs from classical approaches in that an overall component is to be trained that does not require any further manually programmed software components.

    AThe neural network receives camera images, the robot's rotational position (inertial measurement unit), and information from human referees as input. The output will be motor movements, i.e., the positions of the joints at each point in time. This approach significantly reduces complexity during execution on the robot, as only one software component is executed. This could also lead to reduced computing power requirements, as the neural network can implicitly approximate complex algorithms. After imitating the classical approaches, the robot's behavior can also be improved with reward-based learning. The planned network is a good starting point for this, as it is already expected to master the basics. This makes training more efficient in reward-based learning.

    For machine learning, we build on raw data from past competitions and research projects, as well as data from cooperation with other RoboCup teams and international research groups. As part of the project, the data is processed (cleaning, formatting, normalization, etc.) and made available to the research community in a new form.

    Our project is practice-oriented basic research, with which we aim to answer the following research questions:

    - **Is it possible for a single neural network to learn complete control (perception, planning, and action) of a robot in RoboCup?**
    - **How does the small amount of heterogeneous data from multiple robot types affect the learning process?**

    These questions could provide insights into possible applications in other dynamic areas of robotics (e.g., the use of humanoid robots in industry or in the home). We therefore aim to publish a paper with our results, which describes our scientific approach and the results in detail and in a reproducible manner.

    ## References: 
   
    - [1] C. Marzahl, M. Aubreville, C. A. Bertram, et. al., „EXACT: a collaboration toolset for algorithm-aided annotation of images with annotation version control,“ Scientific reports, Bd. 11, p. 4343, 2021. DOI: 10.1038/s41598-021-83827-4 
    - [2] M. Bestmann, J. Güldenstein, F. Vahl und J. Zhang, „Wolfgang-OP: A Robust Humanoid Robot Platform for Research and Competitions,“ in 2020 IEEE-RAS 20th International Conference on Humanoid Robots (Humanoids), 2021. DOI:  10.1109/HUMANOIDS47582.2021.9555808   
    - [3] F. Vahl, J. Gutsche, M. Bestmann und J. Zhang, „YOEO–You Only Encode Once: A CNN for Embedded Object Detection and Semantic Segmentation,“ in 2021 IEEE International Conference on Robotics and Biomimetics (ROBIO), 2021. DOI: 10.1109/ROBIO54168.2021.9739597 
    - [4] OpenAI, J. Achiam, S. Adler, et. al., GPT-4 Technical Report, 2024. arXiv: 2303.08774 [cs.CL]  
    - [5] Z. Li, F. Liu, W. Yang, S. Peng, and J. Zhou, „A Survey of Convolutional Neural Networks: Analysis, Applications, and Prospects,” in IEEE Transactions on Neural Networks and Learning Systems, Bd. 33, pp. 6999–7019, 2022, DOI: 10.1109/TNNLS.2021.3084827
    - [6] T. Haarnoja, B. Moran, G. Lever, et. al., „Learning agile soccer skills for a bipedal robot with deep reinforcement learning,“ Science Robotics, Bd. 9, p. eadi8022, 2024. DOI: 10.1126/scirobotics.adi8022
    - [7] F.-L. Fan, J. Xiong, M. Li und G. Wang, „On Interpretability of Artificial Neural Networks: A Survey,“ IEEE Transactions on Radiation and Plasma Medical Sciences, Bd. 5, pp. 741-760, 2021. DOI: 10.1109/TRPMS.2021.3066428
    - [8] N. Fiedler, M. Bestmann und N. Hendrich, „ImageTagger: An Open Source Online Platform for Collaborative Image Labeling,“ in RoboCup 2018: Robot World Cup XXII, 2018. DOI: 10.1007/978-3-030-27544-0_13  
    - [9] M. Bestmann, T. Engelke, N. Fiedler, J. Güldenstein, J. Gutsche, J. Hagge und F. Vahl, „TORSO-21 Dataset: Typical Objects in RoboCup Soccer 2021,“ in RoboCup 2021: Robot World Cup XXIV, 2021. DOI: 10.1007/978-3-030-98682-7_6
    - [10] S. Macenski, T. Foote, B. Gerkey, C. Lalancette und W. Woodall, „Robot Operating System 2: Design, architecture, and uses in the wild,“ Science Robotics, Bd. 7, p. eabm6074, 2022. DOI: 10.1126/scirobotics.abm6074
    - [11] A. Paszke, S. Gross, F. Massa, et. al., „PyTorch: An Imperative Style, High-Performance Deep Learning Library,“ in Advances in Neural Information Processing Systems, Bd. 32, 2019, p. 8024–8035. [Online]. Available [here](http://papers.neurips.cc/paper/9015-pytorch-an-imperative-style-high-performance-deep-learning-library.pdf) 
    - [12] C. R. Harris, K. J. Millman, S. J. Van Der Walt, et. al., „Array programming with NumPy,“ Nature, Bd. 585, p. 357–362, 2020. DOI: 10.1038/s41586-020-2649-2  
    - [13] W. McKinney und others, „pandas: a Foundational Python Library for Data Analysis and Statistics,“ Python for high performance and scientific computing, Bd. 14, p. 1–9, 2011.  

image: "https://www.hcl.uni-hamburg.de/20937783/1084px-13-06-28-robocup-eindhoven-005-aa71311c1257abbd05e78f59448d1119363aecc4.jpg"
image_credit: "Vahl / Keller"
---