---
id: e2e_robot_soccer
title: "Fußballspielende Roboter: Ende-zu-Ende-KI für Wahrnehmung und Steuerung im RoboCup"
title_project: "Vollständig KI-basierte Wahrnehmung und Steuerung eines autonomen fußballspielenden Roboters"
title_short: "E2E Robot Soccer"
period: "Okt 24 – Sep 25 (12 Monate)" 
round: "4"
lecture2go: "70596"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/vierte-foerderrunde/e2e-robot-soccer.html"
students: "Florian Vahl, Jan Gutsche, Joern Griepenburg"
mentor: "Jasper Güldenstein"
text: |
    Unser Projekt beschäftigt sich mit der Wahrnehmung und Steuerung von *autonom fußballspielenden Robotern*, mittels Anwendung eines innovativen, maschinell-gelernten neuronalen Netzes (KI).

    Diese Idee entspringt unseren bisherigen Entwicklungs- und Forschungstätigkeiten in der studentischen Arbeitsgemeinschaft und Forschungsgruppe, den [Hamburg Bit-Bots](https://bit-bots.de). Dabei handelt es sich um ein Team, welches seit 2012 beim internationalen Forschungswettbewerb [RoboCup](https://www.robocup.org) teilnimmt. In verschiedenen Disziplinen und Ligen (auch außerhalb des Fußballs) wird hier Grundlagenforschung im Bereich autonomer Roboter und KI getätigt. Dabei sind auch *Innovationen mit gesellschaftlichem Einfluss* über den RoboCup hinaus hervorgegangen [1]. Wir unterstützen das Team der Universität Hamburg bereits seit mehreren Jahren und waren dabei schon an einer Vielzahl von Wettbewerben, wissenschaftlichen Publikationen und anderen Förderprojekten beteiligt.

    Das Projekt soll eine neuartige Alternative zu den klassischen Verfahren der *Wahrnehmung und Steuerung* unserer autonomen Roboter entwickeln. Bisher wurden diese Aufgaben von einer Vielzahl von komplexen Einzelkomponenten übernommen, wobei bis auf die Bildverarbeitung mittels Convolutional Neural Network [2, 3], alles durch händisch programmierte Software umgesetzt wurde (z. B. Selbstlokalisierung, Strategie, Pfadplanung, Bewegungsgenerierung usw., siehe folgendes [Repository](https://github.com/bit-bots/bitbots_main)). Wir möchten stattdessen ein sogenanntes Ende-zu-Ende (E2E) maschinell-gelerntes neuronales Netz entwickeln und einsetzen (wie z. B. auch ChatGPT eines ist [4]). Dies unterscheidet sich von klassischen Ansätzen, da eine Gesamtkomponente angelernt werden soll, die keine weiteren manuell programmierten Softwarekomponenten benötigt.

    Als Eingabe wird das neuronale Netz Kamerabilder, die Rotationslage des Roboters (Inertial Measurement Unit) und Informationen der menschlichen Schiedsrichter erhalten. Die Ausgaben werden Motorbewegungen, also die Positionen der Gelenke für jeden Zeitpunkt sein. Dieser Ansatz bietet erhebliche *Komplexitätsreduktion* bei der Ausführung auf dem Roboter, da nur noch eine Softwarekomponente ausgeführt wird. Auch könnte dies zu einem verringerten Rechenleistungsbedarf führen, da das neuronale Netz aufwendige Algorithmen implizit approximieren kann. Nach dem Imitieren der klassischen Ansätze kann das Verhalten des Roboters darüber hinaus mit belohnendem Lernen verbessert werden. Das geplante Netz ist hierfür ein guter Ausgangspunkt, da es die Grundlagen schon beherrschen soll. Somit wird das Training beim belohnenden Lernen effizienter.

    Für das maschinelle Lernen bauen wir auf Daten in Rohform von vergangenen Wettbewerben und Forschungsprojekten auf sowie Daten aus der Kooperation mit anderen RoboCup Teams und internationalen Forschungsgruppen. Im Rahmen des Projektes werden die Daten aufbereitet (Bereinigung, Formatierung, Normalisierung etc.) und der Forschungsgemeinschaft in neuer Form zur Verfügung gestellt.

    Bei unserem Projekt handelt es sich um praxisorientierte Grundlagenforschung, mit der wir folgende Forschungsfragen beantworten wollen:

    - **Ist es für ein einziges neuronales Netz möglich, die vollständige Kontrolle (Wahrnehmung, Planung und Aktion) eines Roboters im RoboCup zu erlernen?**
    - **Wie wirkt sich dabei die geringe Menge an heterogenen Daten mehrerer Robotertypen auf den Lernprozess aus?**

    Diese Fragen könnten Erkenntnisse über Anwendungsmöglichkeiten in anderen dynamischen Bereichen der Robotik liefern (z. B. Einsatz von humanoiden Robotern in der Industrie oder im Haushalt). Daher streben wir die Veröffentlichung eines Papers mit unseren Ergebnissen an, welches unser wissenschaftliches Vorgehen sowie die Ergebnisse detailliert und reproduzierbar beschreibt.

    ## Referenzen: 

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