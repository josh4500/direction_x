# Direction X—An Intelligent Chatbot for location discovery Using Flutter and Dialogue Flow
# ful_direction_chatbot (A Flutter project.)

## Implimentation Snippets 
The system was implemented using Dart programming language and flutter development framework. The system was deployed as a cross-platform mobile application for both android and ios and available for download as an APK file. The following programs below were used in developing the application and the full source code can be found at https://github.com/Ochecodes/direction_x

# Screens 
1.	Chatscreen.dart 
![image](https://user-images.githubusercontent.com/58173677/210676690-57ac17fa-7bfc-4997-9f9e-856810120d89.png)

![image](https://user-images.githubusercontent.com/58173677/210676758-cbd296ac-f48e-4e59-a9ce-7584f42d6b48.png)

![image](https://user-images.githubusercontent.com/58173677/210677109-5c498ef8-2ffb-4183-96dd-f62594326ddd.png)

2.	Onboarding.dart 
![image](https://user-images.githubusercontent.com/58173677/210677192-95ad2896-cc75-4b0a-b2fa-163da309b833.png)

![image](https://user-images.githubusercontent.com/58173677/210677244-37f3778f-a88d-4ddc-aac0-0d3130270c21.png)

Widgets used 
1.	Round_button.dart 
![image](https://user-images.githubusercontent.com/58173677/210677301-11d44776-ef8c-4809-b9dd-6b7e12dcdc08.png)

2.	Custom_text.dart 
![image](https://user-images.githubusercontent.com/58173677/210677369-a9d8618e-3b6e-4c2c-a363-7fa185474b1e.png)

3.	Message_bubble.dart
![image](https://user-images.githubusercontent.com/58173677/210677426-0080ac79-0a5d-418c-b31a-7b2193e2e82a.png)

4.	Suggest_file.dart
![image](https://user-images.githubusercontent.com/58173677/210677512-ac6cd77e-0e9d-40a5-8cd7-4b0e5551048f.png)

APIs 
1.	Dialogue Flow 

State Management 
1.	Provider 
![image](https://user-images.githubusercontent.com/58173677/210677591-26650745-3706-4881-88b8-271726fa489b.png)

Database 
1.	Base Client 
![image](https://user-images.githubusercontent.com/58173677/210677659-f4f2eb83-0d23-42db-af14-8dede471b6e6.png)

## Technical-Academic Research Documentation 
# Introduction 
In artificial intelligence, an expert system is a computer system that emulates the decision-making ability of a human expert. Expert systems are designed to solve complex problems by reasoning through bodies of knowledge, represented mainly as if-then rules rather than through conventional procedural code.
Bielawski and lewand 1991, defines an expert system as a computerized embodiment of a form of artificial intelligence for solving problems in a particular field of knowledge by drawing inferences from a built-in base of established knowledge.

At its essence, an expert system is AI software that draws upon a knowledge base to solve specific problems. The knowledge base is supplied by one or more human experts, and the system preserves knowledge for automatically solving problems on a greater scale. These computer applications perform at high levels of intelligence, are reliable, and extremely responsive in addressing problems.

The most important applied area of AI is the field of expert systems. The power of expert systems stems primarily from the specific knowledge about a narrow domain stored in the expert system's knowledge base. It is important to stress to students that expert systems are assistants to decision makers and not substitutes for them. Expert systems do not have human capabilities. They use a knowledge base of a particular domain and bring that knowledge to bear on the facts of the particular situation at hand. The knowledge base of an ES also contains heuristic knowledge - rules of thumb used by human experts who work in the domain.

The strength of an Expert System derives from its knowledge base - an organized collection of facts and heuristics about the system's domain. An ES is built in a process known as knowledge engineering, during which knowledge about the domain is acquired from human experts and other sources by knowledge engineers.
The accumulation of knowledge in knowledge bases, from which conclusions are to be drawn by the inference engine, is the hallmark of an expert system.
Knowledge representation is the method used to organize the knowledge in the knowledge base. Knowledge bases must represent notions as actions to be taken under circumstances, causality, time, dependencies, goals, and other higher-level concepts.

# Several methods of knowledge representation can be drawn upon. Two of these methods include:

1. Frame-based systems - are employed for building very powerful ESs. A frame specifies the attributes of a complex object and frames for various object types have specified relationships.

2. Production rules- are the most common method of knowledge representation used in business. Rule-based expert systems are expert systems in which the knowledge is represented by production rules.

A production rule, or simply a rule, consists of an IF part (a condition or premise) and a THEN part (an action or conclusion). IF condition THEN action (conclusion).
Fuzzy logic is a method of reasoning that resembles human reasoning since it allows for approximate values and inferences and incomplete or ambiguous data (fuzzy data). Fuzzy logic is a method of choice for handling uncertainty in some expert systems.
Three fundamental roles in building expert systems are:	

1. Expert - Successful ES systems depend on the experience and application of knowledge that the people can bring to it during its development. Large systems generally require multiple experts.

2. Knowledge engineer - The knowledge engineer has a dual task. This person should be able to elicit knowledge from the expert, gradually gaining an understanding of an area of expertise. Intelligence, tact, empathy, and proficiency in specific techniques of knowledge acquisition are all required of a knowledge engineer. Knowledge-acquisition techniques include conducting interviews with varying degrees of structure, protocol analysis, observation of experts at work, and analysis of cases.
On the other hand, the knowledge engineer must also select a tool appropriate for the project and use it to represent the knowledge with the application of the knowledge acquisition facility.

3. User - A system developed by an end user with a simple shell, is built rather quickly an inexpensively. Larger systems are built in an organized development effort. A prototype-oriented iterative development strategy is commonly used. ESs lends themselves particularly well to prototyping.

# Characteristics of expert systems:

Highly responsive
Reliable
Understandable
High performance
Types of Expert Systems
There are five basic types of expert systems. These include a rule-based expert system, frame-based expert system, fuzzy expert system, neural expert system, and neuro-fuzzy expert system.  
A rule-based expert system is a straightforward one where knowledge is represented as a set of rules. Fuzzy logic expert systems are also called multi-valued logic and differentiate between members of the class from non-members in problem-solving. In a frame-based expert system, frames are used to capture and represent knowledge. A neural expert system replaces a traditional knowledge base with neural knowledge, storing it as weights in neurons. Finally, a neuro-fuzzy system combines parallel computation and learning abilities with knowledge representation and explanation abilities.

# Components of Expert Systems
An expert system is typically comprised of five components: 

A knowledge base that stores rules and knowledge in domains to form procedures for solving problems.
An inference engine that obtains data from the knowledge base and interprets the data to find a solution to the problem. This component also possesses debugging abilities to streamline the problem-solving process.
A knowledge acquisition and learning module that allows the application to acquire more data from sources and add it to the knowledge base;
A user interface which enables non-expert users to access the expert system and determine a solution; and
An explanation module which helps the non-expert user explain how the problem was solved.

#Examples of Expert Systems
Here are a few expert system examples that are already in use:

SHINE: designed by NASA for monitoring, analyzing, and diagnosing real-time and non-real-time systems
MYCIN: was used for the medical diagnosis of a specific group of diseases
MUDMAN: for analyzing drilling fluids
XCON: for configuring computer systems and customizing network systems
PROSPECTOR: for evaluating geological sites in commercial development 
DENDRAL: for inferring a molecule’s structure based on its chemical composition its chemical formula and other data

# Steps to Develop and Maintain an Expert System
Though an expert system seems complicated to run, once it’s properly deployed, it is easy for end-users to access the benefits of the technology. There are six main steps to develop an expert system:

Determining the problem domain. This step involves identifying whether the problem is appropriate for an expert system to solve, finding experts to contribute to the project, and establishing whether solving the problem is cost-effective for the business.
Designing the system. This involves determining the degree of integration the system will have with other systems and databases.
Developing a prototype. This step involves obtaining domain knowledge from the appropriate expert or experts and establishing rules for the expert system.
Testing the prototype. This involves checking the prototype with sample cases. This step allows engineers to pinpoint any deficiencies in the system. This is also a time for end-users to test the system for usability, efficiency, and accuracy.
Refining and completing the prototype. This step ensures the expert system integrates well with other systems and databases and works for all end-users as well. In addition, this is the time to document the expert system project and train all end users on how to use the expert system properly.
Maintaining the expert system. This ongoing step involves regular reviewing and updating of the knowledge base. In addition, the system must be kept up to date as other integrated databases and information systems evolve over time.

## Human System Vs. Expert System
#Human Experts	

Perishable and unpredictable in nature 	

Difficult to transfer and document data

Human expert resources are expensive	

# Expert Systems
Permanent and consistent in nature

Easy to transfer and document data

Expert Systems are cost-effective Systems

# Applications of Expert Systems
Design Domain:Camera lens design automobile design

Medical Domain:	Diagnosis Systems to deduce the cause of disease from observed dataConduction medical operations on humans.

Monitoring systems:	Comparing data continuously with observed systems 

Process Control Systems:	Controlling physical processes based on the monitoring.

Knowledge Domain:	Finding faults in vehicles or computers.

Commerce 	Detection of possible fraud Suspicious transactions Stock market trading Airline scheduling, Cargo scheduling.

# Advantages of Expert Systems

•	Availability: They are easily available due to the mass production of software.

•	Less Production Cost: The production costs of expert systems are extremely reasonable and affordable.

•	Speed: They offer great speed and reduce the amount of work.

•	Less Error Rate: The error rate is much lower as opposed to human errors.

•	Low Risks: They are capable of working in environments that are dangerous to humans.

•	Steady Response: They avoid motions, tensions, and fatigue.

## Literature review
Traffic forecasting is important for the success of intelligent transportation systems. Deep learning models, including convolution neural networks and recurrent neural networks, have been extensively applied in traffic forecasting problems to model spatial and temporal dependencies. In recent years, to model the graph structures in transportation systems as well as contextual information, graph neural networks have been introduced and have achieved state-of-the-art performance in a series of traffic forecasting problems. In this survey, we review the rapidly growing body of research using different graph neural networks, e.g. graph convolutional and graph attention networks, in various traffic forecasting problems, e.g. road traffic flow and speed forecasting, passenger flow forecasting in urban rail transit systems, and demand forecasting in ride-hailing platforms. We also present a comprehensive list of open data and source codes for each problem and identify future research directions. To the best of our knowledge, this paper is the first comprehensive survey that explores the application of graph neural networks for traffic forecasting problems. We have also created a public GitHub repository where the latest papers, open data, and source codes will be updated. (Weiwei Jiang, Jiayun Luo, 2022)

(Dalia García  et al, 2022) Fuzzy systems research (FSR) is a continuously growing academic field which developments and applications extend to a wide-ranging variety of scientific areas. Academic journals play a decisive role in the scientific communication process and the dissemination of novel ideas. The current developments in information technologies bring both challenges and opportunities for scientific journals to analyze, debate, and share scientific findings. Applying bibliometric and network visualization techniques, this paper seeks to analyze the evolution of the FSR field based on journals from 1965 to 2019. The aim is to visualize the current landscape of key highly oriented FSR journals, focusing on productivity, influence, and synergy. The paper uses data retrieved from the Web of Science scientific database and uses a combined methodology specifically designed to maximize the retrieval of significant documents. Results show that the journals with the highest productivity analyzed by period are Mathematical Analysis and Applications (1965–1979), Fuzzy Sets and Systems [FSS](1980–2009), and the Journal of Intelligent Fuzzy Systems (2010–2019).

The ubiquitous presence of sensors (e.g., in smartphones) in our everyday life allows a constant real-time collection of data. This data has been successfully used in diagnosis and prediction of health outcomes and has the potential to improve health care. However, with data security and accountability as core requirements of medical applications, it remains a major challenge to integrate smart sensing information into the health care systems. One promising application is the integration into expert systems, in which smart sensing information is used to assist medical experts in their decisions. The present chapter aims to introduce expert systems, outline conceptual examples of such a smart sensing enhanced expert system, and summarize the evidence for smart sensing enhanced expert systems in health care. Lastly, the chapter will be concluded by discussing challenges in the field including ethical, privacy and security, and clinical issues followed by an outlook about future directions and developments. (Terhorst, Y et al, 2022)

From their first applications until now, expert systems have provided solutions to multiple problems in companies of all types. With the advent of the Internet and its evolution, web-based expert systems have become very important. Moreover, the arrival of new mobile devices that can connect to the Internet has made it easy to access information from any place at any time, creating new requirements for web systems. The creation of an expert system normally requires certain technical knowledge and concepts of artificial intelligence (AI). If the need to make it accessible through the Internet is added, the degree of technical knowledge necessary for its development is greater, entailing an unaffordable cost for small and medium-sized companies. In this article, we present a tool for the development of web-based expert systems which permits the expert to define the knowledge without having to know anything about AI. The proposed inference engine is integrated in a web server through which it can be accessed from any device with an Internet connection. Finally, the article presents examples of developments achieved via the proposed framework. (B. Ruiz-Mezcua, et al, 2011)

In this paper, an effort has been made for intense review on Knowledge-Based Expert System (KB-ES) applications in manufacturing planning. Uniqueness of the present review work is addressed in terms of analysis on published review articles and their review gap. Research works exemplified between 1981 and 2016 were reviewed in terms of ES application in handling product variety, execution of process planning activities, machining, tool selection, tool design, welding, advanced manufacturing, product development. A statistical analysis was carried out in relation with number of publications, domain-specific area and their percentage contribution. It was inferred that, most of the work focused on ES applications related to tool design and machining apart from execution of various process planning activities. Future research can focus on the development frame-based, object oriented-based, ontology-based knowledge representation in order to develop robust system in decision-making for handling complex engineering problem. ES applications can be extended to field of micro fabrication, machine tool development and integrated system development from design to manufacturing. (S.P. Leo Kumar (2019)

In fact, people get knee problems due to something such as sports, or fall. They usually have difficulty moving to the doctor. In this paper an expert system was designed to help users to correctly diagnose knee problems (Fractured in knee, torn ligament, Bursitis, Chondromalacia patellae, Torn cartilage, Rheumatoid arthritis and Rheumatic fever, Osteoarthritis, Baker's cyst, Osgood-Schlatter disease) with some information about the disease and self-care. CLIPS expert system language was used to design and implement this expert system. (Samhan et al, 2021)

Application Expert System Diagnosis of Color blindness using the Ishihara Method With Microsoft VB 6.0 is a system that makes it easier to diagnose eye disease (color blindness). In developing engineering systems the development of expert system application applications. To facilitate the development of this program application, Researchers use modeling/designing flow chart tools or structured modeling. And designing input systems in the form of Interface Design related mechanisms for the use of applications of this expert system. (YASIN et al, 2022)

Medical expert systems (ESs) aim to apply computer technology to emulate human decision-making and provide computerized clinical decision support to clinicians, patients, and other individuals with suitable information and knowledge at appropriate times to improve the quality and safety of health care. This chapter first presents the significance and a brief history of this field. It then describes a common architecture and major components of medical ESs and introduces different knowledge representation and reasoning techniques. This chapter will also show some examples of medical ESs, including computer-assisted diagnosis systems, medication alert systems, reminder systems, and so on. Lastly, it discusses the advantages and disadvantages of existing approaches as well as major issues and challenges related to system implementation, evaluation, maintenance, and distribution and points out some of the directions for future research and development. (Li Zhou, Margarita Sordo, 2021)

Currently, manufacturing companies, regardless of the segment in which they operate, face the challenge of resource scarcity, price increases and even the difficulty of accessing raw materials, due to different factors such as pandemics or even international conflicts. By adopting circular practices, companies can operate in a closed production cycle, contributing to an economic balance and greater efficiency in the use of natural resources, while producing more sustainable products. The use of artificial intelligence (AI) can help companies in the challenges of finding a more sustainable production. AI enables companies to support the development and planning of more optimized and sustainable products and processes, as well as supporting the review of business models. Knowledge-based systems (KBS), subarea of AI and technology targeted in this article, are systems that use human knowledge to solve specific problems in a given domain that can be used by companies in both public and private companies. According to the research literature, KBS is a widely used technology and may be opportune for the development of more sustainable products and processes, providing less environmental impact on soil, water and air.The objective of this article is to propose an innovative conceptual model of KBS to provide assessment and guidelines to a circular model, according to the Overall Circularity Effectiveness (OCE) Index. The proposed KBS focuses on a key industrial field which is the metal-mechanical sector, enabling companies in this sector to use a KBS for circular transition. The conceptual model was developed from a theoretical review and the results of the present work indicate that the use of KBS to support the development of circular products and processes is opportune. (Prado, et al, 2022)

## References 
Vizureanu, P. , (Ed.). (2019). Enhanced Expert Systems. IntechOpen. https://doi.org/10.5772/intechopen.79092

Samudyata B. What are Expert Systems in Artificial Intelligence? 2023. Mygreatlearning. 
https://www.mygreatlearning.com/blog/expert-systems-in-artificial-intelligence/ 

Expert Systems in Artificial Intelligence (AI). May, 2021. OmniLegion.
https://omnilegion.com/expert-systems-in-artificial-intelligence-ai/ 

Expert Systems and Applied Artificial Intelligence.  Umsl
https://www.umsl.edu/~joshik/msis480/chapt11.htm 

Lesa Moné, 2018. Artificial Intelligence - Expert Systems. https://www.leanix.net/en/blog/artificial intelligence-expert systems:~:text=In%20artificial%20intelligence%2C%20an%20expert,than%20through%20conventional%20procedural%20code. 

Weiwei Jiang, Jiayun Luo, Graph neural network for traffic forecasting: A survey, Expert Systems with
Applications, Volume 207, 2022, 117921, ISSN 0957-4174, https://doi.org/10.1016/j.eswa.2022.117921. (https://www.sciencedirect.com/science/article/pii/S0957417422011654) 

Dalia García-Orozco, Víctor G. Alfaro-García, José M. Merigó, Irma C. Espitia Moreno, Rodrigo Gómez 
An overview of the most influential journals in fuzzy systems research, Expert Systems with Applications, Volume 200, 2022, 117090, ISSN 0957-4174, https://doi.org/10.1016/j.eswa.2022.117090. (https://www.sciencedirect.com/science/article/pii/S0957417422004961) 

Terhorst, Y., Knauer, J., Baumeister, H. (2023). Smart Sensing Enhanced Diagnostic Expert Systems. In: Montag, C.,
Baumeister, H. (eds) Digital Phenotyping and Mobile Sensing. Studies in Neuroscience, Psychology and Behavioral Economics. Springer, Cham. https://doi.org/10.1007/978-3-030-98546-2_24

B. Ruiz-Mezcua, A. Garcia-Crespo, J.L. Lopez-Cuadrado, I. Gonzalez-Carrasco,
An expert system development tool for non AI experts, Expert Systems with Applications, Volume 38, Issue 1, 2011, Pages 597-609, ISSN 0957-4174,
https://doi.org/10.1016/j.eswa.2010.07.009.
(https://www.sciencedirect.com/science/article/pii/S0957417410006263)

S.P. Leo Kumar (2019) Knowledge-based expert system in manufacturing planning: state-of-the-art
review, International Journal of Production Research, 57:15-16, 4766-4790, DOI: 10.1080/00207543.2018.1424372
Expert System for Knee Problems Diagnosis

Samhan, Lamis F.; Alfarra, Amjad H.; Abu-Naser, Samy S. 2021, http://dspace.alazhar.edu.ps/xmlui/handle/123456789/2738

YASIN, Verdi et al. Application of expert system diagnosis of color blindness with ishihara method
with microsoft vb 6.0. International Journal of Informatics, Economics, Management and Science (IJIEMS), [S.l.], v. 1, n. 1, p. 13-31, jan. 2022. ISSN 2809-8471. Available at: <http://journal.stmikjayakarta.ac.id/index.php/ijiems/article/view/678>. Date accessed: 22 nov. 2022. doi: https://doi.org/10.52362/ijiems.v1i1.678.

Li Zhou, Margarita Sordo, Chapter 5 - Expert systems in medicine, Editor(s): Lei Xing, Maryellen L.

Giger, James K. Min, Artificial Intelligence in Medicine, Academic Press, 
2021, Pages 75-100,  ISBN 9780128212592,
https://doi.org/10.1016/B978-0-12-821259-2.00005-3.
(https://www.sciencedirect.com/science/article/pii/B9780128212592000053)

Prado, Júlio Dias and da Silva, Jonny Carlos and M. S. Campos, Lucila and Baumer-Cardoso, Marina
Ilka, An Artificial Intelligence Approach to Assessment and Guidelines for a Circular Economy. Available at SSRN: https://ssrn.com/abstract=4271218 or http://dx.doi.org/10.2139/ssrn.4271218 

Marina P.P. Pieroni, Tim C. McAloone, Yuri Borgianni, Lorenzo Maccioni, Daniela C.A.

Pigosso, An expert system for circular economy business modelling: advising manufacturing companies in decoupling value creation from resource consumption, Sustainable Production and Consumption, Volume 27, 2021, Pages 534-550, ISSN 2352-5509, https://doi.org/10.1016/j.spc.2021.01.023.  (https://www.sciencedirect.com/science/article/pii/S2352550921000233) 

