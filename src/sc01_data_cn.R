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
folder_path = "../input/data_cn"
file_path_projects = file.path(folder_path, "projects.csv")
if (!file.exists(file_path_projects)) {
    df_projects <- tribble(
        ~area, ~accomplishment, ~year, ~where, ~detail,
        "语音口音检测", "每个说一门语言的人都会说一口重音。 该项目为英语使用者定义口音", 2020, "\\href{https://github.com/k-farruh/speech-accent-detection}{Project Link}", "作者和维护者"
        , "与智慧城市相关的项目", "莫斯科市项目，由5个对智能系统和链接有不同要求的不同办公楼小组组成。 公司的主要工作是使中央控制和夜灯调节的计算机程序设计。 超过800平方米，带有来自不同控制器的15000个信号。", 2015, "\\href{http://domussapiens.ru/nashi-obekty/kommercheskie-obekty/moskva-siti}{Project Link}", "Maintainer"
        , "L-Cube", "在L-Cube LLC公司实施，以优化部门网络的性能", 2015, "\\href{https://l-cube.ru/}{Company WebPage}", "作者和维护者"
        , "DELL-EMC", "DELL-EMC数据中心关于研究价值和模型实施可能性的证书", 2016, "\\href{https://k-farruh.github.io/files/projects/emc_dell/emc_dell.png}{Implementation Certificate}", "作者和维护者"
        , "IntellektTrans", "智能轨道系统交通峰会。 作为智能轨道系统交通峰会组织委员会的成员之一，该组织参加了峰会并参加了会议。", 2009, "\\href{https://intelligenttransportconference.com}{Conference WebPage}", "志愿者"
    )
    
    write_csv(df_projects, path = file_path_projects)
}

##### Accomplishments #####
file_path_accomplishments = file.path(folder_path, "accomplishments.csv")
if (!file.exists(file_path_accomplishments)) {
    df_accomplishments <- tribble(
        ~area, ~detail, ~year, ~where, ~accomplishment,
        "DELL-EMC", "数据科学-数据的有效利用", 2012, "俄罗斯圣彼得斯堡", "DELL-EMC-Academic Alliance"
        , "DELL-EMC", "ISM-信息和数据存储管理", 2012, "俄罗斯圣彼得斯堡", "DELL-EMC-Academic Alliance"
        , "Big Data University", "Big Data 101", 2017, "线上", "IBM"
        , "IBM", "通过IBM z系列基础知识课程的证书", 2007, "俄罗斯圣彼得斯堡", ""
        , "智慧城市和物联网", "AMX I-II级技术知识证书", 2013, "俄罗斯莫斯科", ""
        , "智慧城市和物联网", "ABB I-III技术知识证书", 2013, "俄罗斯圣彼得斯堡", ""
        , "智慧城市和物联网", "快思聪I-II级技术证书知识", 2013, "俄罗斯圣彼得斯堡", ""
        , "Intuit 国立开放大学", "C程序设计语言", 2012, "线上", ""
        , "Intuit 国立开放大学", "Data Mining", 2016, "线上", ""
    )
    write_csv(df_accomplishments, path = file_path_accomplishments)
}

##### Skills #####
file_path_skills = file.path(folder_path, "skills.csv")
if (!file.exists(file_path_skills)) {
    df_skills <- tribble(
        ~area, ~skills,
        "通讯", "演示（技术和非技术），仪表板设计，数据分析报告，科学出版物，数据可视化",
        "编程/标记语言", "Python, R, SQL/NoSQL, Hive, Spark, C/C++, Matlab, BASH, CSS, HTML, LaTeX, Markdown, RMarkdown",
        "软件开发", "Docker, Git, 版本控制，自动化测试，持续集成",
        "数值方法", "优化（随机，遗传，多起点），微分方程的数值解",
        "统计", "机器学习，数据分析，广义线性回归，聚类分析，因子分析，主成分分析（PCA），交叉验证，广义加性模型，数据分析，蒙特卡洛模拟",
        "环境环境", "Linux, Jupyter-Notebook, PyTorch, RStudio, ETL, SQL Server Management Studio, Azure Data Studio, VIM, Visual Studio",
    )
    write_csv(df_skills, path = file_path_skills)
}

##### Education #####
file_path_education = file.path(folder_path, "education.csv")
if (!file.exists(file_path_education)) {
    df_education <- tribble(
        ~inst,  ~startMonth, ~startYear, ~endMonth, ~endYear, ~degree, ~where, ~detail,
        "圣彼得堡亚历山大一世国立交通大学 （圣彼得堡交通大学）", "九月", 2012, "三月", 2016, "数学建模，数值方法和计算机程序", "俄罗斯圣彼得斯堡", "哲学博士（博士）"
        , "圣彼得堡亚历山大一世国立交通大学 （圣彼得堡交通大学）", "九月", 2012, "三月", 2016, "数学建模，数值方法和计算机程序", "俄罗斯圣彼得斯堡","研究领域：开发用于评估数据链路层协议实际速度的数据传输方法，旨在改善硬件和软件组件"
        , "圣彼得堡亚历山大一世国立交通大学 （圣彼得堡交通大学）", "九月", 2008, "六月", 2010, "信息系统与技术", "俄罗斯圣彼得斯堡", "学位：理学硕士"
        , "圣彼得堡亚历山大一世国立交通大学 （圣彼得堡交通大学）", "九月", 2006, "六月", 2010, "信息系统与技术", "俄罗斯圣彼得斯堡","研究领域：开发和优化计算机网络系统"
        , "圣彼得堡亚历山大一世国立交通大学 （圣彼得堡交通大学）", "九月", 2004, "六月", 2008, "信息系统与技术", "俄罗斯圣彼得斯堡", "学位：学士学位"
        , "圣彼得堡亚历山大一世国立交通大学 （圣彼得堡交通大学）", "九月", 2004, "六月", 2008, "信息系统与技术", "俄罗斯圣彼得斯堡", "研究领域：开发和优化计算机网络系统"
    )
    write_csv(df_education, path = file_path_education)
}

##### Experience #####
file_path_experience = file.path(folder_path, "experience.csv")
if (!file.exists(file_path_experience)) {
    df_experience <- tribble(
        ~title, ~unit, ~startMonth, ~startYear, ~endMonth, ~endYear, ~where, ~detail,
        # TutorABC
        "大数据与数据科学家经理", "平安好学", "九月", 2016, "当下", NA, "上海，中国", "使用的语言 --- Python, R, RMarkdown, SQL, Spark, Hive.",
        "大数据与数据科学家经理", "平安好学", "九月", 2016, "当下", NA, "上海，中国", "对客户生命周期阶段进行分类分析，以增加整体营业额。",
        "大数据与数据科学家经理", "平安好学", "九月", 2016, "当下", NA, "上海，中国", "算法优化了正在进行的机器学习和深度学习模型，并检查了已实现模型的性能。",
        "大数据与数据科学家经理", "平安好学", "九月", 2016, "当下", NA, "上海，中国", "建立了机器学习模型的退款客户并更新了退款模型。 退款总退款率降低到27％。",
        "大数据与数据科学家经理", "平安好学", "九月", 2016, "当下", NA, "上海，中国", "实施并重新培训了Mozilla DeepSpeech库，以实现自动语音识别。",
        "大数据与数据科学家经理", "平安好学", "九月", 2016, "当下", NA, "上海，中国", "为母语和非母语人士创建并测试了语音重音分类系统，召回率达99％。",
        # PeriPlus AG
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "十一月", 2018, "六月", 2019, "线上", "使用的语言 --- Python, R, RMarkdown, SQL",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "十一月", 2018, "六月", 2019, "线上", "建立和管理数据科学家团队。 构建计算机视觉项目。 引入生产人工智能，机器学习，深度学习项目。",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "十一月", 2018, "六月", 2019, "线上", "在三个月内从头创建了一个数据科学家团队。 训练有一定基础知识的候选人。",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "十一月", 2018, "六月", 2019, "线上", "使用对象检测和字符识别模型创建了一个集装箱号识别系统。 使用内部工具作为容器跟踪系统的一部分。",
        "Data Scientist (Consultant)", "PeriPlus AG (Part-Time)", "十一月", 2018, "六月", 2019, "线上", "内部客户面部识别系统。",
        # Haima
        "自动驾驶技术工程师", "海马自动投资集团有限公司研发中心", "四月", 2016, "九月", 2016, "上海，中国", "使用的语言 --- C/C++, Python, Bash",
        "自动驾驶技术工程师", "海马自动投资集团有限公司研发中心", "四月", 2016, "九月", 2016, "上海，中国", "CANBus连接激光雷达，雷达，以减少来自它们的原始数据中的噪声。",
        # "自动驾驶技术工程师", "海马自动投资集团有限公司研发中心", "四月", 2016, "九月", 2016, "上海，中国", "Model working logic two computers, one is the main computer, second is a backup computer.",
        "自动驾驶技术工程师", "海马自动投资集团有限公司研发中心", "四月", 2016, "九月", 2016, "上海，中国", "优化设备的联合工作和逻辑兼容性。",
        # Domus Sapiens
        "资深程序员，数据分析师", "Domus Sapiens", "一月", 2011, "五月", 2015, "俄罗斯圣彼得斯堡", "使用的语言 --- C/C++, Assembler, Bash",
        "资深程序员，数据分析师", "Domus Sapiens", "一月", 2011, "五月", 2015, "俄罗斯圣彼得斯堡", "我一个人从事过20多个大型和小型智能系统项目。 最著名和最复杂的案例之一是“莫斯科市的智能系统开发”。",
        "资深程序员，数据分析师", "Domus Sapiens", "一月", 2011, "五月", 2015, "俄罗斯圣彼得斯堡", "“莫斯科城市”项目由五栋风格各异，办公功能各异的高层建筑以及每栋建筑的旅馆组成。 每个楼层的要求都不相同，相当于一个小型的智慧城市系统。 我们成功完成了该项目，为此项目，Domus Sapiens获得了一些奖励。",
        "资深程序员，数据分析师", "Domus Sapiens", "一月", 2011, "五月", 2015, "俄罗斯圣彼得斯堡", "实现了创建并获得专利模型，以提高无线网络中的数据传输质量。",
        # ProDVD
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "三月", 2012, "乌兹别克斯坦塔什干", "使用的语言 --- C/C++",
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "三月", 2012, "乌兹别克斯坦塔什干", "ProDVD是位于塔什干的韩国/美国合资企业。 主要为手机和电视以及其他电子产品提供服务开发和生产程序。",
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "三月", 2012, "乌兹别克斯坦塔什干", "开发了适用于Android和iOS系统的手机智能卡王软件，使商务人士可以方便地组织和存储名片。",
        "Software Engineer", "ProDVD (Part-Time)", "October", 2010, "三月", 2012, "乌兹别克斯坦塔什干", "开发了蓝光播放器的音频编码/解码部分。 我还发明了基于iOS系统的库中使用的单词识别软件。",
        # 塔什干铁路工程学院
        "教授助理", "塔什干铁路工程学院", "九月", 2010, "六月", 2012, "乌兹别克斯坦塔什干", "进行以下学科的实验室和实践课程：",
        "教授助理", "塔什干铁路工程学院", "九月", 2010, "六月", 2012, "乌兹别克斯坦塔什干", "用C / C ++语言编程；",
        "教授助理", "塔什干铁路工程学院", "九月", 2010, "六月", 2012, "乌兹别克斯坦塔什干", "铁路上的网络和通信系统；",
        "教授助理", "塔什干铁路工程学院", "九月", 2010, "六月", 2012, "乌兹别克斯坦塔什干", "铁路运输信息系统。",
        "教授助理", "塔什干铁路工程学院", "九月", 2010, "六月", 2012, "乌兹别克斯坦塔什干", "为了协助教授进行研究工作，创建分析模型的应用程序部分和仿真部分。"
    )
    write_csv(df_experience, path = file_path_experience)
}


