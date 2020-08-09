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

##### Projects #####
folder_path = "../input/data"
file_path_projects = file.path(folder_path, "projects.csv")
if (!file.exists(file_path_projects)) {
    df_projects <- tribble(
        ~area, ~accomplishment, ~year, ~where, ~detail,
        "Speech Accent Detection", "Everyone who speaks a language, speaks it with an accent. This project define accent for english language speakers", 2020, "https://github.com/speech-accent-detection", "Author and Maintainer"
        , "Moscow City", "Moscow City Project, which is made by 5 different office building groups with different requirements to smart system & linking. Companies main job is to make computer programming of center control & night light adjustment. More then 800 square meters, with 15000 signals from different controllers.", 2015, "", "Maintainer"
        , "L-Cube", "Implemented at the company L-Cube LLC in order to optimize the performance of the departmental network", 2015, "", "Author and Maintainer"
        , "EMC", "Certificates from EMC2 Data-Center about Value of Research and Possibility of Implementation the Model", 2016, "", "Author and Maintainer"
        , "IntellektTrans", "Intelligent rail system transportation summit. As one of the members of the Organizing Committee of the intelligent rail system transportation summit, the organization participated in the summit and attended the meeting.", 2009, "https://intelligenttransportconference.com/", "Volonteer"
    )
    
    write_csv(df_projects, path = file_path_projects)
}

##### Accomplishments #####
file_path_accomplishments = file.path(folder_path, "accomplishments.csv")
if (!file.exists(file_path_accomplishments)) {
    df_accomplishments <- tribble(
        ~area, ~detail, ~year, ~where, ~accomplishment,
        "Dell EMC", "Data Science - effective use of data", 2012, "St Petersburg, Russia", "EMC-Academic Alliance"
        , "Dell EMC", "ISM - administration of information and data storage", 2012, "St Petersburg, Russia", ""
        , "Big Data University", "Big Data 101", 2017, "Online", ""
        , "IBM", "Certificate of passing the course Fundamentals of IBM z Series", 2007, "St Petersburg, Russia", ""
        , "Smart City and IoT", "Certificate of knowledge of technology AMX I - II level", 2013, "Moscow, Russia", ""
        , "Smart City and IoT", "Certificate of knowledge of ABB technology I-III", 2013, "St Petersburg, Russia", ""
        , "Smart City and IoT", "Certificate knowledge of technology Crestron I - II level", 2013, "St Petersburg, Russia", ""
        , "Intuit National Open Univercity", "The C Progamming Language", 2012, "Online", ""
        , "Intuit National Open Univercity", "Data Mining", 2016, "Online", ""
    )
    write_csv(df_accomplishments, path = file_path_accomplishments)
}

##### Skills #####
file_path_skills = file.path(folder_path, "skills.csv")
if (!file.exists(file_path_skills)) {
    df_skills <- tribble(
        ~area, ~skills,
        "Communication", "presentations (technical and non-technical), dashboard design, data analysis reports, scientific publications, data visualization",
        "Programming/Markup Languages", "BASH, C/C++, Python, R, SQL, Matlab, CSS, HTML, LaTeX, Markdown, RMarkdown",
        "Software Development", "version control, automated testing, continuous integration",
        "Numerical Methods", "optimization (stochastic, genetic, multi-start), numerical solution of differential equations",
        "Statistics", "machine learning, data analysis, generalized linear regression, cluster analysis, factor analysis, principal components analysis (PCA), cross validation, generalized additive models, data analytics, Monte Carlo simulation",
        "Text Editors", "Jupyter-Notebook, PyTorch, RStudio, SQL Server Management Studio, VIM, Visual Studio",
    )
    write_csv(df_skills, path = file_path_skills)
}

    ##### Education #####
file_path_education = file.path(folder_path, "education.csv")
if (!file.exists(file_path_education)) {
    df_education <- tribble(
        ~inst,  ~startMonth, ~startYear, ~endMonth, ~endYear, ~degree, ~where, ~detail,
        "Emperor Alexander I St.Petersburg State Transport University", "September", 2012, "March", 2016, "Mathematical modeling, numerical methods and computer programs", "St Petersburg, Russia", "Doctor of Philosophy (PhD)"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2012, "March", 2016, "Mathematical modeling, numerical methods and computer programs", "St Petersburg, Russia","Research field: Develop data transmission methods for evaluating the real speed of data link layer protocols, which aimed at improving hardware and software components"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2006, "July", 2010, "Information systems and technologies", "St Petersburg, Russia", "Degree: specialist engineer (equal to Master and Bachelor Degree)"
        , "Emperor Alexander I St.Petersburg State Transport University", "September", 2006, "July", 2010, "Information systems and technologies", "St Petersburg, Russia","Research field: Develop and optimizing computer network systems"
        , "Tashkent Railway Engineering Institute", "September", 2004, "July", 2006, "Information systems in railway transport", "Tashkent, Uzbekistan","Degree: Bachelor"
        , "Tashkent Railway Engineering Institute", "September", 2004, "July", 2006, "Information systems in railway transport", "Tashkent, Uzbekistan","Research field: Develop and optimizing computer network systems"
    )
    write_csv(df_education, path = file_path_education)
}

##### Experience #####
file_path_experience = file.path(folder_path, "experience.csv")
if (!file.exists(file_path_experience)) {
    df_experience <- tribble(
        ~title, ~unit, ~startMonth, ~startYear, ~endMonth, ~endYear, ~where, ~detail,
        # TutorABC
        "Big Data & IT Manager, Data Scientist", "TutorABC - iTutorGroup", "September", 2016, "Present", NA, "Shanghai, China", "LANGUAGES USED --- Python, R, RMarkdown, SQL, Spark, Hive.",
        "Big Data & IT Manager, Data Scientist", "TutorABC - iTutorGroup", "September", 2016, "Present", NA, "Shanghai, China", "Conduct classification analyses of the customer life cycle stage to increase overall turnover.",
        "Big Data & IT Manager, Data Scientist", "TutorABC - iTutorGroup", "September", 2016, "Present", NA, "Shanghai, China", "Algorithmic optimizes ongoing ML/DL models and check the performance of implemented models.",
        "Big Data & IT Manager, Data Scientist", "TutorABC - iTutorGroup", "September", 2016, "Present", NA, "Shanghai, China", "Established a Machine Learning model refund customers and update the refund model. Decreased refund overall refund rate to 27%.",
        "Big Data & IT Manager, Data Scientist", "TutorABC - iTutorGroup", "September", 2016, "Present", NA, "Shanghai, China", "Implemented and retrained Mozilla DeepSpeech library for Automatic Speech Recognition.",
        "Big Data & IT Manager, Data Scientist", "TutorABC - iTutorGroup", "September", 2016, "Present", NA, "Shanghai, China", "Created and tested the Speech Accent Classification system for native and non-native speakers, with recall 99%.",
        # PeriPlus AG
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "LANGUAGES USED --- Python, R, RMarkdown, SQL",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Establish and manage the data scientist team. Construct computer vision projects. Bring to production AI/ML/DL projects.",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Created data scientist team from scratch, in three months. Trained candidates with a piece of good basic knowledge.",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Created a container number recognition system using object detection andcharacter recognition models. Using an internal tool as part of a container tracking system.",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "November", 2018, "July", 2019, "Online", "Internal face recognition system for customers.",
        # Haima
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "May", 2016, "September", 2016, "Shanghai, China", "LANGUAGES USED --- C/C++, Python, Bash",
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "May", 2016, "September", 2016, "Shanghai, China", "CANBus connect lidar, radar, decrease noises in raw data from them.",
        # "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "May", 2016, "September", 2016, "Shanghai, China", "Model working logic two computers, one is the main computer, second is a backup computer.",
        "Automatic Driving Prospective Technology Engineer", "Haima automatic Investment Group Co. Ltd, R&D Center", "May", 2016, "September", 2016, "Shanghai, China", "Optimize joint work and logic compatibility of equipment.
    ",
        # Tashkent Railway Engineering Institute
        "Assistant Professor", "Tashkent Railway Engineering Institute", "September", 2010, "August", 2012, "Tashkent, Uzbekistan", "LANGUAGES USED --- C/C++, HTML, CSS",
        "Assistant Professor", "Tashkent Railway Engineering Institute", "September", 2010, "August", 2012, "Tashkent, Uzbekistan", "Lead the C/C ++ programming course.",
        "Assistant Professor", "Tashkent Railway Engineering Institute", "September", 2010, "August", 2012, "Tashkent, Uzbekistan", "Lead the Computer networks and technologies course.",
        "Assistant Professor", "Tashkent Railway Engineering Institute", "September", 2010, "August", 2012, "Tashkent, Uzbekistan", "Lead the Corporate information systems course.",
        # Domus Sapiens
        "Senior Programmer, Data analyst", "Domus Sapiens", "January", 2011, "December", 2014, "St Petersburg, Russia", "LANGUAGES USED --- C/C++, Assembler, Bash",
        "Senior Programmer, Data analyst", "Domus Sapiens", "January", 2011, "December", 2014, "St Petersburg, Russia", "I worked alone on more than 20 large and small projects of intelligent systems, one of the most famous and complicated cases is: \"smart system development of Moscow city\".",
        "Senior Programmer, Data analyst", "Domus Sapiens", "January", 2011, "December", 2014, "St Petersburg, Russia", "The project \"Moscow city\" is composed of five high buildings with styles, different functions of the office buildings and hotels for each building, each floor's requirements were not the same, equivalent to a small smart city system. We successfully finished the project, and for this project, Domus Sapiens got several rewards.",
        "Senior Programmer, Data analyst", "Domus Sapiens", "January", 2011, "December", 2014, "St Petersburg, Russia", "Implemented the created and got patend model to improve the quality of data transfer in wireless network.",
        # ProDVD
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "LANGUAGES USED --- C/C++",
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "ProDVD is a Korean/USA joint venture that was located in Tashkent. Mainly provides a service development and production program for mobile phones and TV, and other electronic products.",
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "Developed the mobile phone program of smart card king, which Android and iOS systems could use, making it convenient for business people to organize and store business cards.",
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "March", 2012, "Tashkent, Uzbekistan", "Developed the audio encoding/decoding part of the Blu Ray player, and I also invented the word recognition software used in the library based on the iOS system.",
        # Tashkent Railway Engineering Institute
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "To conduct laboratory and practical classes for below subjects:",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Programming in C/C++ languages;",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Network & communication systems on the railway;",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "Information systems on railway transport.",
        "Assistant of Professor", "Tashkent Railway Engineering Institute", "September", 2010, "July", 2012, "Tashkent, Uzbekistan", "To assist the professor in research work, create application parts, and simulation parts of analytical models."
    )
    write_csv(df_experience, path = file_path_experience)
}


