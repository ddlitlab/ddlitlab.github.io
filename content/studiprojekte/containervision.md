---
id: containervision
title: "Automatisierte Identifikation von Containern anhand visueller Merkmale"
title_project: "Automatisierte Identifikation von Containern anhand visueller Merkmale"
title_short: "ContainerVision"
period: "Okt 23 – Mär 24 (6 Monate)" 
round: "3"
lecture2go: "68036"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/dritte-foerderrunde/containervision.html"
students: "Louis Gerken, Helena Becker, Lennart Roth"
mentor: "Prof. Dr. Janick Edinger"
text: |
    Das Projekt ContainerVision zielt darauf ab, die Verwaltung von Containern an kleineren Binnen- und Seehäfen zu optimieren. Dazu sollen Luftaufnahmen analysiert werden, um die darauf sichtbaren Container zu identifizieren, sodass Hafenmitarbeiter:innen bei der Suche eines bestimmten Containers unterstützt werden.  

    Bisher müssen Container *manuell gesucht* werden. Dies ist sehr zeitaufwendig und aufgrund des Einsatzes von Containerstaplern und anderweitigen Fahrzeugen kommt es zu einem hohen Treibstoffverbrauch. Durch unser Projekt werden Luftaufnahmen beispielsweise von Drohnen automatisch ausgewertet unter der Anwendung von Methoden der Computer Vision. In vielen Fällen wird es dabei aufgrund der Aufnahmequalität und der Entfernung nicht möglich sein, die Identifikationsnummern der Container korrekt einzulesen, sodass eine manuelle Identifikation erfolgen muss. Aus diesem Grund erfassen und verarbeiten wir eine Vielzahl von *visuellen Merkmalen* wie Farbe, Logos, äußere Defekte und Oberflächenstruktur. So lassen sich Drohnenflüge signifikant vereinfachen, wodurch häufigere Scans und somit eine höhere temporale Auflösung ermöglicht werden. 

    Die Durchführung des Projektes umfasst mehrere Schritte. Ausgangspunkt ist die Datenerhebung, gefolgt von der Datenaufbereitung, um eine Datenbank bezüglich der Containermerkmale zu konstruieren. Mittels einer von uns entwickelten Bildverarbeitungspipeline kann anschließend eine Identifikation der Container stattfinden, wobei die genannten visuellen Merkmale als Klassifikationsparameter dienen.

    Darauffolgend liegt der Fokus auf der *Erkennung von spezifischen Containern*. Die erfassten Informationen werden mit einer Datenbank abgeglichen, um die Kandidaten für mögliche korrekte Identifikationsnummern einzugrenzen und schlussendlich einen Container eindeutig zu identifizieren. Die Datenbank wird um die Merkmale neu erfasster Container ergänzt. Diese automatisierte Identifikation von Containern unter Einbeziehung visueller Merkmale existiert bisher noch nicht. 

    Konkret könnte die Bildverarbeitungspipeline wie folgt aussehen: Nach dem Laden des Bildes erfolgt eine Skalierung, eine Rauschreduktion und Kontrastanpassung zur Verbesserung der Bildqualität. Zusätzlich wird ein Farbkalibrierungsprozess im Zusammenhang mit einem Histogrammausgleich durchgeführt, um Aufnahmen unter verschiedenen Lichtverhältnissen vergleichbar zu machen. Daraufhin erfolgt die Container-Erkennung und -Segmentierung, mit dem Ziel, die Container in der Aufnahme zu lokalisieren und von ihrem Hintergrund zu separieren.

    Anschließend werden die Container nach ihren visuellen Merkmalen klassifiziert, welche mithilfe von herkömmlichen analytischen sowie maschinellen Lernverfahren gewonnen werden. Hierzu gehört unter anderem die Erfassung der Identifikationsnummer durch eine optische Zeichenerkennung (OCR). Das Training der Algorithmen erfolgt im Voraus mit einer ausreichenden Menge an Daten in Form von Containern mit entsprechenden Labels. Die Zustandserfassung des Containers, beispielsweise in Anbetracht möglicher Defekte und Farben, kann durch Bildsegmentierung, Bildvergleich, Objektverfolgung und Mustererkennung erfolgen.

    Nach der Klassifizierung erfolgt die Identifikation der einzelnen Container basierend auf den Klassifizierungsergebnissen mithilfe von Entscheidungsbäumen oder neuronalen Netzwerken. Auf diese Weise trägt das Projekt ContainerVision zu einer *effizienteren Hafenlogistik* und zu einer Verbesserung der ökonomischen und ökologischen Nachhaltigkeit bei. Darüber hinaus fördert ContainerVision den Einsatz von Drohnentechnologie, Bildverarbeitung und maschinellem Lernen in der Logistikbranche.  

image: "https://www.hcl.uni-hamburg.de/18288348/pexels-tom-fisk-1427107-733x414-9d8644c7f263129f61f178d1faad9688ad2fd20b.jpg"
image_credit: "Tom Fisk / Pexels"
---