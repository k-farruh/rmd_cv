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
        "\\href{https://coursera.org/share/202809cc693c74d7fb964add4908488c}{IBM and Coursera}", "IBM Data Science", 2020, "Online", "IBM",
        "\\href{https://coursera.org/share/bde51a23297f79f29d143b20d9ac9a7a}{IBM and Coursera}", "Applied Data Science Capstone", 2020, "Online", "IBM",
        "\\href{https://coursera.org/share/19422df31a28465322d72001177d99bb}{IBM and Coursera}", "Machine Learning with Python", 2020, "Online", "IBM",
        "\\href{https://coursera.org/share/0bf6cab184657077fca8ef68546282d7}{IBM and Coursera}", "Data Analysis with Python", 2020, "Online", "IBM"
        , "\\href{https://coursera.org/share/cc15ca08932280d703e875e988ae59c0}{IBM and Coursera}", "Databases and SQL for Data Science", 2020, "Online", "IBM"
        , "\\href{https://coursera.org/share/aa14fdabcf5378ea4c99a72993525546}{IBM and Coursera}", "Python for Data Science and AI", 2020, "Online", "IBM"
        , "\\href{https://coursera.org/share/4341233b19c0236a10152ce5004132d0}{IBM and Coursera}", "Data Science Methodology", 2020, "Online", "IBM"
        , "\\href{https://coursera.org/share/e17f5f15b464ce03e49816e5ed7a8e4d}{IBM and Coursera}", "Tools for Data Science", 2020, "Online", "IBM"
        , "\\href{https://coursera.org/share/49b6509c1ef55a814e5e2869dc37bcaf}{IBM and Coursera}", "Data Visualization with Python", 2020, "Online", "IBM"
        , "\\href{https://www.coursera.org/account/accomplishments/certificate/REVKFDAVDB2S}{IBM and Coursera}", "What's Data Scientists", 2020, "Online", "IBM"
        , "DELL-EMC", "Data Science - effective use of data", 2012, "St Petersburg, Russia", "DELL-EMC-Academic Alliance"
        , "DELL-EMC", "ISM - administration of information and data storage", 2012, "St Petersburg, Russia", "DELL-EMC-Academic Alliance"
        , "\\href{https://k-farruh.github.io/files/accomplishments/ai/big_data_university.pdf}{Big Data University}", "Big Data 101", 2017, "Online", "IBM"
        , "\\href{https://k-farruh.github.io/files/accomplishments/ai/ibm.jpg}{IBM}", "Fundamentals of IBM z Series", 2007, "St Petersburg, Russia", ""
        , "\\href{https://k-farruh.github.io/files/accomplishments/smart_building_iot/amx.jpg}{Smart City and IoT}", "Certificate of knowledge of technology AMX I - II level", 2013, "Moscow, Russia", ""
        , "\\href{https://k-farruh.github.io/files/accomplishments/smart_building_iot/abb_knx_2_2.jpg}{Smart City and IoT}", "Certificate of knowledge of ABB technology I-III", 2013, "St Petersburg, Russia", ""
        , "\\href{https://k-farruh.github.io/files/accomplishments/smart_building_iot/crestron.jpg}{Smart City and IoT}", "Certificate knowledge of technology Crestron I - II level", 2013, "St Petersburg, Russia", ""
        , "\\href{https://www.intuit.ru/verifydiplomas/00163698}{Intuit National Open University}", "The C Programming Language", 2012, "Online", ""
        , "\\href{https://www.intuit.ru/verifydiplomas/100998270}{Intuit National Open University}", "Data Mining", 2016, "Online", ""
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
        # TutorABC
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Languages --- Python, R, RMarkdown, SQL, Spark and Hive",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "NLP: have done projects like text classification, sentiment analysis, and text summarization.",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Implemented and retrained Mozilla DeepSpeech library for Automatic Speech Recognition",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Created and tested the Speech Accent Classification System for native and non-native speakers, with a rate of 99% in metric recall",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Conducted classification analyses of the customer life cycle stage to increase overall turnover",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "With algorithmic, optimized ongoing ML/DL models and checked the performance of implemented models",
        "Big Data & Data Scientist Manager", "Ping An Hao Xue, under Ping An (平安) China", "September", 2016, "November", 2020, "Shanghai, China", "Established the Machine Learning model for refund customers and updated the refund model. Decreased the overall refund rate to 27%",
        # PeriPlus AG
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Languages --- Python, R, RMarkdown and SQL",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Implemented AI/ML/DL projects",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "From scratch established the data scientist team in three months",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Constructed a Container Number Recognition System using object detection and character recognition models",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Built the Face Recognition System for customers",
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
        # Tashkent Railway Engineering Institute
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "To conduct laboratory and practical classes for below subjects:",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Programming in C/C++ languages;",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Network & communication systems on the railway;",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Information systems on railway transport",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "To assist the professor in research work, create application parts, and simulation parts of analytical models"
    )
    write_csv(df_experience, file = file_path_experience)
}


