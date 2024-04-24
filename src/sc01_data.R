##### Create csv file #####

##### Project brief information: 
### 
### 
### 

# Written by:      Farruh Kushnazarov
# Version:         1
# Version changes: No
# Date:            2020-07-28
#-------

if (!require(tidyverse)) { install.packages("tidyverse")}

is_write = TRUE
##### Projects #####
folder_path = "../input/data"
file_path_projects = file.path(folder_path, "projects.csv")
if (!file.exists(file_path_projects) | is_write) {
    df_projects <- tribble(
        ~area, ~accomplishment, ~year, ~where, ~detail,
        "NLP: Speech Accent Detection", "Everyone who speaks a language, speaks it with an accent. This project defines accents for the english language speakers", 2020, "\\href{https://github.com/k-farruh/speech-accent-detection}{Project Link}", "Role: Author and Maintainer"
        , "NLP: Speech Accent Detection", "Everyone who speaks a language, speaks it with an accent. This project defines accents for the english language speakers", 2020, "\\href{https://github.com/k-farruh/speech-accent-detection}{Project Link}", "Results: Accuracy=.90, Recall=.91 and Precision=.93 "
        , "NLP: Speech Accent Detection", "Everyone who speaks a language, speaks it with an accent. This project defines accents for the english language speakers", 2020, "\\href{https://github.com/k-farruh/speech-accent-detection}{Project Link}", "Increase accuracy of ASR (Automatic Speech Recognition)"
        , "NLP: Text classification", "Classified to 10 different topics", 2019, "Private", "Data sources: Title, Description, Text"
        , "NLP: Text classification", "Classified to 10 different topics", 2019, "Private", "Method: LDA"
        , "NLP: Text classification", "Classified to 10 different topics", 2019, "Private", "Result: 10 topics. Accuracy=.87"
        , "Moscow Smart Lighting Projects", "Moscow Smart Lighting Projects Project, which is made by 5 different office building groups with different requirements to smart system and linking. Companies main job is to make computer programming of center control and night light adjustment. More then 800 square meters, with 15000 signals from different controllers", 2015, "\\href{http://domussapiens.ru/nashi-obekty/kommercheskie-obekty/moskva-siti}{Project Link}", "Maintainer"
        , "L-Cube", "Implemented at the company L-Cube LLC in order to optimize the performance of the departmental network", 2015, "\\href{https://l-cube.ru/}{Company WebPage}", "Author and Maintainer"
        , "EMC-DELL", "Certificates from EMC2 Data-Center about Value of Research and Possibility of Implementation the Model", 2016, "\\href{https://k-farruh.github.io/files/projects/emc_dell/emc_dell.png}{Implementation Certificate}", "Author and Maintainer"
        , "IntellektTrans", "Intelligent rail system transportation summit. As one of the members of the Organizing Committee of the intelligent rail system transportation summit, the organization participated in the summit and attended the meeting", 2009, "\\href{https://intelligenttransportconference.com}{Conference WebPage}", "Volunteer"
    )
    
    write_csv(df_projects, file = file_path_projects)
}

##### Accomplishments #####
file_path_accomplishments = file.path(folder_path, "accomplishments.csv")
if (!file.exists(file_path_accomplishments) | is_write) {
    df_accomplishments <- tribble(
        ~area, ~detail, ~year, ~where, ~accomplishment,
        "\\href{https://coursera.org/share/202809cc693c74d7fb964add4908488c}{IBM}", "IBM Data Science", 2020, "Online", "Coursera"
        , "\\href{https://coursera.org/share/ddafc092b2933ad44c7a6375304be982}{Imperial College London}", "Mathematics for Machine Learning: Multivariate Calculus", 2020, "Online", "Coursera"
        , "\\href{https://coursera.org/share/912767fb2694f66a2086694bb4708822}{Imperial College London}", "Mathematics for Machine Learning: Linear Algebra", 2020, "Online", "Coursera"
        , "DELL-EMC", "Data Science - effective use of data", 2012, "St Petersburg, Russia", "DELL-EMC-Academic Alliance"
        , "DELL-EMC", "ISM - administration of information and data storage", 2012, "St Petersburg, Russia", "DELL-EMC-Academic Alliance"
        , "\\href{https://k-farruh.github.io/files/accomplishments/ai/big_data_university.pdf}{Big Data University}", "Big Data 101", 2017, "Online", "IBM"
        , "\\href{https://k-farruh.github.io/files/accomplishments/ai/ibm.jpg}{IBM}", "Fundamentals of IBM z Series", 2007, "St Petersburg, Russia", ""
        , "\\href{https://k-farruh.github.io/files/accomplishments/smart_building_iot/amx.jpg}{Smart City and IoT}", "Certificate of knowledge of technology AMX I - II level", 2013, "Moscow, Russia", ""
        , "\\href{https://k-farruh.github.io/files/accomplishments/smart_building_iot/abb_knx_2_2.jpg}{Smart City and IoT}", "Certificate of knowledge of ABB technology I-III", 2013, "St Petersburg, Russia", ""
        , "\\href{https://k-farruh.github.io/files/accomplishments/smart_building_iot/crestron.jpg}{Smart City and IoT}", "Certificate knowledge of technology Crestron I - II level", 2013, "St Petersburg, Russia", ""
        , "\\href{https://www.intuit.ru/verifydiplomas/00163698}{Intuit National Open University}", "The C Programming Language", 2012, "Online", ""
        , "\\href{https://www.intuit.ru/verifydiplomas/100998270}{Intuit National Open University}", "Data Mining", 2016, "Online", ""
        , "\\href{https://courses.nvidia.com/certificates/1a65b1b125014049a7f42cd303a0a1cc}{Nvidia-Deep Learning Institute}", "Accelerating End-to-End Data Science Workflows", 2021, "Online", ""
    )
    write_csv(df_accomplishments, file = file_path_accomplishments)
}

##### Skills #####
file_path_skills = file.path(folder_path, "skills.csv")
if (!file.exists(file_path_skills) | is_write) {
    df_skills <- tribble(
        ~area, ~skills,
        "Communication", "Communicate effectively with wide-range of audiences, presentations (technical and non-technical), dashboard design, data analysis reports, scientific publications and data visualization",
        "Programming/Markup Languages", "Python, R, SQL/NoSQL, Hive, Spark, C/C++, Matlab, BASH, CSS, HTML, LaTeX, Markdown and RMarkdown",
        "Software Development", "Docker, git, version control, automated testing and continuous integration, A/B testing (Statistical Testing and Experiment Design)",
        "Numerical Methods", "optimization (stochastic, genetic, multi-start) and numerical solution of differential equations",
        "Statistics", "Machine learning, data analysis, generalized linear regression, cluster analysis, factor analysis, principal components analysis (PCA), cross validation, generalized additive models, data analytics",
        "Environments", "Linux, Jupyter-Lab, PyTorch, RStudio, ETL, SQL Server Management Studio, Azure Data Studio",
    )
    write_csv(df_skills, file = file_path_skills)
}

##### Education #####
file_path_education = file.path(folder_path, "education.csv")
if (!file.exists(file_path_education) | is_write) {
    df_education <- tribble(
        ~inst,  ~startMonth, ~startYear, ~endMonth, ~endYear, ~degree, ~where, ~detail,
        "Emperor Alexander I St.Petersburg State Transport University", "September", 2012, "March", 2016, "Mathematical modeling, numerical methods and computer programs", "St Petersburg, Russia", "Doctor of Philosophy (Ph.D.)"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2012, "March", 2016, "Mathematical modeling, numerical methods and computer programs", "St Petersburg, Russia","Research Field: Develop data transmission methods for evaluating the real speed of data link layer protocols, which aimed at improving hardware and software components"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2008, "June", 2010, "Information systems and technologies", "St Petersburg, Russia", "Degree: Master of Science"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2008, "June", 2010, "Information systems and technologies", "St Petersburg, Russia","Research Field: Develop and optimize computer network systems"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2004, "June", 2008, "Information systems and technologies", "St Petersburg, Russia", "Degree: Bachelor of Computer Science"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2004, "June", 2008, "Information systems and technologies", "St Petersburg, Russia","Research Field: Develop and optimize computer network systems"
    )
    write_csv(df_education, file = file_path_education)
}

##### Experience #####
file_path_experience = file.path(folder_path, "experience.csv")
if (!file.exists(file_path_experience) | is_write) {
    df_experience <- tribble(
        ~title, ~unit, ~startMonth, ~startYear, ~endMonth, ~endYear, ~where, ~detail,
        # Alibaba Cloud
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Provide Generative AI solutions using foundation models (LLM, Stable Diffusion, etc.) for business use cases.",
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Responsible for Generative AI solutions outside of China, such as Qwen, Animate Anyone, and EMO.",
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Building and integrating information systems related to AI and Big Data to meet the company’s needs",
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Resolving technical Generative AI and AI/ML/DL problems as they arise",
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Providing supervision and guidance to development teams",
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Continually researching the current and emerging technologies in computer vision, NLP, etc, and proposing changes where needed",
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Assessing the business impact that certain technical choices have",
        "Senior Solutions Architect", "Alibaba Cloud Global", "April", 2022, "Present", NA, "Hangzhou, China", "Providing updates to stakeholders on product development processes, costs, and budgets",
        # Midea HBT
        "Lead Research Engineer", "Midea HBT", "November", 2020, "April", 2022, "Foshan, China", "Languages --- Tensorflow, Keras, Python, SPARQL, Cypher, RDF, Ontology",
        "Lead Research Engineer", "Midea HBT", "November", 2020, "April", 2022, "Foshan, China", "Use data science methods to work with domain experts to develop and implement data-driven solutions",
        "Lead Research Engineer", "Midea HBT", "November", 2020, "April", 2022, "Foshan, China", "The work mainly involves data-driven predictive control, predictive maintenance, fault diagnosis, behavior pattern analysis, etc.",
        "Lead Research Engineer", "Midea HBT", "November", 2020, "April", 2022, "Foshan, China", "Carry out including experimental design, data collection, data analysis, model building, model verification, model deployment, continuous Iteration, and other aspects of work",
        "Lead Research Engineer", "Midea HBT", "November", 2020, "April", 2022, "Foshan, China", "Complete the data modeling analysis report, and carry out technical precipitation",
        "Lead Research Engineer", "Midea HBT", "November", 2020, "April", 2022, "Foshan, China", "Read relevant literature and keep up with the latest developments in data science and business",
        "Lead Research Engineer", "Midea HBT", "November", 2020, "April", 2022, "Foshan, China", "Interview the potential candidates for the data scientist team",
        # TutorABC
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Languages --- Python, Tensorflow, Keras, R, RMarkdown, SQL, Spark and Hive",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "NLP: have done projects like text classification, sentiment analysis, and text summarization.",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Implemented and retrained Mozilla DeepSpeech library for Automatic Speech Recognition",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Created and tested the Speech Accent Classification System for native and non-native speakers, with a rate of 99% in metric recall",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Conducted classification analyses of the customer life cycle stage to increase overall turnover",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "With algorithmic, optimized ongoing ML/DL models and checked the performance of implemented models",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Established the Machine Learning model for refund customers and updated the refund model. Decreased the overall refund rate to 27%",
        # Haima
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "April", 2016, "September", 2016, "Shanghai, China", "Languages --- C/C++, Python and Bash",
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "April", 2016, "September", 2016, "Shanghai, China", "Connected lidar and radar to decrease noises in raw data",
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "April", 2016, "September", 2016, "Shanghai, China", "Designed a model car to check the capability of algorithms on ultrasonic sensors",
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "April", 2016, "September", 2016, "Shanghai, China", "Optimized CANBus protocol to increase the efficiency of data transfer",
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "April", 2016, "September", 2016, "Shanghai, China", "Optimized joint work and logic compatibility of equipments",
        # Domus Sapiens
        "Senior Programmer, Data Analyst", "Domus Sapiens", "October", 2012, "May", 2015, "St Petersburg, Russia", "Languages --- C/C++, Assembler and Bash",
        "Senior Programmer, Data Analyst", "Domus Sapiens", "October", 2012, "May", 2015, "St Petersburg, Russia", "Lead and managed more than 20 projects on intelligent systems. Some of the most famous and complicated cases are the Moscow Smart Lighting Projects",
        "Senior Programmer, Data Analyst", "Domus Sapiens", "October", 2012, "May", 2015, "St Petersburg, Russia", "Moscow Smart Lighting Projects were to do with five high buildings with various styles and functions, including office buildings and hotels. The requirements were not even similar from  floor to floor, which made the whole projects equivalent to establish a small smart city system. We successfully finished the projects and because of this, Domus Sapiens got several rewards",
        "Senior Programmer, Data Analyst", "Domus Sapiens", "October", 2012, "May", 2015, "St Petersburg, Russia", "Implemented and applied the patent model to improve the quality of data transfer in wireless networks",
        # ProDVD
        "Software Engineer", "ProDVD", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "Languages --- C/C++",
        "Software Engineer", "ProDVD", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "Developed the Card King for mobile phones, compatible for both Android and iOS systems, making it convenient for business people to organize and store business cards",
        "Software Engineer", "ProDVD", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "Developed the audio encoding/decoding part for the Blu Ray player", 
        "Software Engineer", "ProDVD", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "Invented the word recognition software, both iOS and Android compatible",
        # Tashkent State Transport University
        "Assistant of Professor", "Tashkent State Transport University", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "To conduct laboratory and practical classes for below subjects:",
        "Assistant of Professor", "Tashkent State Transport University", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Programming in C/C++ languages;",
        "Assistant of Professor", "Tashkent State Transport University", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Network & communication systems on the railway;",
        "Assistant of Professor", "Tashkent State Transport University", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Information systems on railway transport",
        "Assistant of Professor", "Tashkent State Transport University", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "To assist the professor in research work, create application parts, and simulation parts of analytical models"
    )
    write_csv(df_experience, file = file_path_experience)
}


