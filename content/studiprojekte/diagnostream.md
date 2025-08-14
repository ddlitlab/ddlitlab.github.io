---
id: diagnostream
title: "Echtzeit-Optimierung von diagnostischen Abläufen durch Digitalisierung"
title_project: "Echtzeit-Optimierung von diagnostischen Abläufen durch Digitalisierung "
title_short: "DiagnoStream"
period: "Okt 23 – Mär 24 (6 Monate)" 
round: "3"
lecture2go: "68035"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/dritte-foerderrunde/diagnostream.html"
students: "Jan Rehfeld, Noelle Jacob"
mentor: "Dr. Dr. Felix von Brackel, Eylem Tas"
text: |
    Das Projekt DiagnoStream adressiert eine Data-Challenge des IOBM (Institut für Osteologie und Biomechanik) am Universitätsklinikum Hamburg-Eppendorf, das jährlich über 12.000 Patienten versorgt. Ziel des Projektes ist die Entwicklung einer maßgeschneiderten Managementsoftware, die die täglich anfallenden Patientenströme verwaltet und optimiert. Das Projekt umfasst den Einsatz von Hardware zur Erfassung von Prozessdaten, die algorithmische Optimierung der Betriebsabläufe sowie die Entwicklung einer grafischen Benutzeroberfläche für das medizinische Personal. 

    ## Die Herausforderung:  

    Bisher gibt es kein geeignetes IT-System für die Planung der betrieblichen Abläufe im IOBM. Die anfallenden Aufgaben werden analog anhand der physischen Patientenakte verwaltet. Dazu kreuzen die Ärzte auf einer Checkliste an, welche Untersuchungen für einen Patienten anstehen. Alle Patientenakten liegen mit ihren Checklisten in einem Regal und werden von den medizinischen Fachangestellten (MFA) nach dem First-In-First-Out (FIFO)-Prinzip abgearbeitet. Dabei nimmt eine MFA die Patientenakte heraus und führt eine oder mehrere der anstehenden Untersuchungen durch. Da der Prozess analog abläuft, kann es vorkommen, dass die MFA mit der Patientin unwissentlich einen Raum aufsucht, der bereits belegt ist. In einigen Fällen führt dies zum Abbruch der Untersuchung und die MFA schickt die Patientin zurück in den Warteraum. Ihre Akte wird dann nach dem FIFO-Prinzip wieder ganz hinten in die Warteschlange eingereiht. Die Patientin muss nun erneut warten, bis alle Akten vor ihr einmal bearbeitet wurden. Dies führt regelmäßig zu hohen Durchlauf- und Wartezeiten. Problematisch ist an Tagen mit hohem Patientenaufkommen auch, dass es kein System gibt, das Auskunft über die aktuellen Wartezeiten der Patienten gibt. Dies erschwert eine gerechte Priorisierung der Patienten.  

    Aus Sicht des Managements fehlen zudem belastbare Statistiken über Wartezeiten, Durchlaufzeiten, Untersuchungszeiten, Geräteauslastung, Personalauslastung und vieles mehr. Benötigt wird daher ein System, das die anstehenden Untersuchungen effizient und gerecht priorisiert und dem Management ausreichend Prozessdaten zur Analyse zur Verfügung stellt.

    ## Lösungsansatz:

    Das benötigte System soll alle relevanten Prozessdaten live erfassen und algorithmisch den optimalen Betriebsablauf berechnen. In die Optimierung sollen Informationen über das verfügbare Personal, die Wartezeiten der Patienten, die anstehenden Untersuchungen, die Raumbelegung sowie die Wege zwischen den Untersuchungsräumen einfließen. Zusammen mit anderen nützlichen Daten soll diese optimierte Warteschlange dem Personal in einer interaktiven GUI zur Verfügung gestellt werden. Diese datengetriebene Lösung ermöglicht es dem Personal, mit maximaler Effizienz zu arbeiten, ohne sich um die Reihenfolge der Patienten kümmern zu müssen. Mit zunehmender Betriebsdauer lernt das System und die Vorhersagen für die Durchlaufzeiten werden immer genauer. Zusätzliche Funktionen werden den Export von Daten, die Erstellung von Analysen und manuelle Anpassungen der Warteschlangenreihenfolge ermöglichen. 

    ## Datenkonzept: 

    Die anstehenden Untersuchungen jedes Patienten werden manuell über eine Webanwendung erfasst. Die übrigen Prozessdaten werden über Barcodescanner aufgenommen, die in jedem Raum installiert sind. Sowohl beim Betreten als auch beim Verlassen des Raumes wird ein Barcode auf der Patientenakte mit dem Scanner eingelesen. So weiß das System, wann welche Untersuchung in welchem Raum stattfindet. Durch Kombination und Verrechnung dieser Daten kann die gesamte Patientenreise berechnet werden. Diese bildet gleichzeitig die Grundlage für die Priorisierung der Patienten und die Berechnung von Kennzahlen für das Management. 

    Verwendete Hardware und Technologien:
 
    - Hardware: Raspberry Pis und Barcode-Scanner 
    - Datenbank: MySQL 
    - Programmiersprache: Python 

image: "https://www.hcl.uni-hamburg.de/18288386/doctor-6727691-1920-733x414-dc3e655af24bf3570a113d1224431f143092dfb0.jpg"
image_credit: "Mohamed Hassan / Pixabay"
---