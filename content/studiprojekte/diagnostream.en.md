---
id: diagnostream
title: "Real-time optimization of diagnostic processes through digitalization"
title_project: "Real-time optimization of diagnostic processes through digitalization"
title_short: "DiagnoStream"
period: "Oct 23 – Mar 24 (6 months)" 
round: "3"
lecture2go: "68035"
uhh_url: "https://www.hcl.uni-hamburg.de/ddlitlab/data-literacy-studierendenprojekte/dritte-foerderrunde/diagnostream.html"
students: "Jan Rehfeld, Noelle Jacob"
mentor: "Dr. Dr. Felix von Brackel, Eylem Tas"
text: |
    The DiagnoStream project addresses a data challenge faced by the IOBM (Institute for Osteology and Biomechanics) at the University Medical Center Hamburg-Eppendorf, which treats over 12,000 patients annually. The aim of the project is to develop customized management software that manages and optimizes the daily flow of patients. The project involves the use of hardware to collect process data, the algorithmic optimization of operational processes, and the development of a graphical user interface for medical staff.

    ## The challenge:  

    To date, there is no suitable IT system for planning operational processes at the IOBM. The tasks that arise are managed analogously using physical patient files. To do this, doctors tick off the examinations that are pending for a patient on a checklist. All patient files with their checklists are stored on a shelf and are processed by medical assistants (MFA) according to the first-in-first-out (FIFO) principle. An MFA takes out the patient file and performs one or more of the pending examinations. Since the process is analog, it can happen that the MFA unknowingly takes the patient to a room that is already occupied. In some cases, this leads to the examination being interrupted and the MFA sending the patient back to the waiting room. Their file is then placed back at the end of the queue according to the FIFO principle. The patient must now wait again until all the files ahead of them have been processed. This regularly leads to long processing and waiting times. On days with a high volume of patients, another problem is that there is no system that provides information about the current waiting times for patients. This makes it difficult to prioritize patients fairly.  

    From a management perspective, there is also a lack of reliable statistics on waiting times, throughput times, examination times, equipment utilization, staff utilization, and much more. What is needed, therefore, is a system that prioritizes upcoming examinations efficiently and fairly and provides management with sufficient process data for analysis.

    ## Solution approach:

    The required system should collect all relevant process data live and use algorithms to calculate the optimal operating sequence. Information about available staff, patient waiting times, upcoming examinations, room occupancy, and the distances between examination rooms should be incorporated into the optimization. Together with other useful data, this optimized queue should be made available to staff in an interactive GUI. This data-driven solution enables staff to work with maximum efficiency without having to worry about the order of patients. As the system accumulates more data, it learns and the predictions for throughput times become increasingly accurate. Additional features will enable the export of data, the creation of analyses, and manual adjustments to the queue order. 

    ## Data concept: 

    The upcoming examinations for each patient are recorded manually via a web application. The remaining process data is recorded using barcode scanners installed in each room. When entering and leaving the room, a barcode on the patient file is scanned. This allows the system to know when which examination is taking place in which room. By combining and calculating this data, the entire patient journey can be predicted. This also forms the basis for prioritizing patients and calculating key figures for management.

    Hardware and technologies used:
 
    - Hardware: Raspberry Pis and barcode scanners
    - Database: MySQL
    - Programming language: Python

image: "https://www.hcl.uni-hamburg.de/18288386/doctor-6727691-1920-733x414-dc3e655af24bf3570a113d1224431f143092dfb0.jpg"
image_credit: "Mohamed Hassan / Pixabay"
---