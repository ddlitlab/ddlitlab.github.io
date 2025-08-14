---
id: stocksentiment
title: "Vorhersage von Aktienkursverläufen mittels Sentiment-Analyse von unstrukturierten Textdaten"
title_project: "Vorhersage von Aktienkursverläufen mittels Sentiment-Analyse von unstrukturierten Textdaten"
title_short: "Stock Sentiment"
period: "Okt 22 – Mär 23 (6 Monate)" 
round: "1"
lecture2go: "64227"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/erste-foerderrunde/stocksentiment.html"
students: "Thomas Löhden, Tim Matthies"
mentor: "Dr. Jun-Patrick Raabe"
text: |
    Der Einfluss von sozialen Medien auf den Finanzmarkt ist besonders in den letzten Jahren enorm angestiegen. Das wahrscheinlich einflussreichste Beispiel ist der Anstieg der GameStop-Aktie 2021 durch eine koordinierte Absprache von Nutzern des sozialen Mediums Reddit. Daraus wird deutlich, dass die sozialen Medien für die Prognose von Aktienverläufen ein bedeutsamer Faktor geworden sind. Das Ziel dieses Projektes ist es, eine Möglichkeit zu finden, mit unstrukturierten Textdaten aus sozialen Medien, wie z.B. Tweets oder Kommentaren, Meinungsindikatoren für den zukünftigen Aktienverlauf verschiedener Unternehmen zu bestimmen und für eine verbesserte Aktienprognose einzusetzen. Dazu sollten geeignete Methoden des Natural Language Processings (NLP) verwendet werden. 

    Um unsere Fragestellung zu konkretisieren, wollen wir besondere Aufmerksamkeit Phänomenen wie dem “GameStop short squeeze” widmen, welche noch wenig erforscht sind. In dem kürzlich erschienenen Paper [1] werden diese Phänomene (im folgenden “YOLO”-Ereignisse genannt) mittels Daten von Reddit analysiert. Die Autoren berücksichtigen bei ihrer Analyse allerdings nicht das Sentiment der erhobenen Daten. Inwiefern auch andere Plattformen und das Sentiment als Indikator für z. B. die Volatilität des Aktienkurses geeignet sind, soll im Fokus unseres Projektes stehen. Hierfür werden wir historische Twitter-Daten, zu den im Paper untersuchten Kursen, mittels einer Sentimentanalyse auswerten. 

    Die Aktien, die im Fokus unserer Analyse stehen, sind die GameStop-, AMC Entertainment Holdings-, Blackberry- und Nokia-Aktien. Für diese Aktien sind YOLO-Ereignisse aus näherer Vergangenheit bekannt. Wir werden gezielt diese Ereignisse untersuchen und die Korrelation zwischen der Volatilität und des Twitter-Sentiments bestimmen.

    Mithilfe der Twitter-API erhalten wir Zugang zu den benötigten Daten. Darauf aufbauend werden wir ein Programm schreiben, welches die geeigneten Daten auswählt und für unsere Sentiment-Analyse aufbereitet. Der Schritt der Aufbereitung ist ein wichtiger und nicht trivialer Teil der Datenerhebung. Insbesondere wenn z. B. Bilder oder Emoticons wichtiger Bestandteil eines Tweets sind, ist die Ausfilterung von unerwünschten Daten essentiell. Zu den ausgewählten Zeiträumen holen wir uns die Stock-Daten über eine weitere API. Die Ergebnisse aus der Sentiment-Analyse vergleichen wir mit den Stock-Daten und beobachten, inwiefern wir eine Korrelation zwischen diesen Datensätzen feststellen können.

    ## Literatur:

    [1] Lyócsa, Š., Baumöhl, E. & Výrost, T. (2022). In: Finance Research Letters (46) A. https://www.sciencedirect.com/science/article/pii/S1544612321003603, last access: 13th November, 2022.    

image: "https://www.hcl.uni-hamburg.de/16179363/stocks-clay-banks-unsplash-4ef9b078ace1ffdfe4406133af957be3509e9f46.jpg"
image_credit: "clay banks / unsplash"
---