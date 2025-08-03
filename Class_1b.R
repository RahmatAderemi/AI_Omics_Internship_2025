# Task 1- Create a new folder on your computer "AI_Omics_Internship_2025.
# Task 2- In RStudio, create a new project named "Module_I" in your "AI_Omics_Internship_2025" folder

getwd()
# Output- "C:/Users/USER/Documents/AI_Omics_Internship_2025/Module_1"

# Task 3- Inside the project directory, create the following subfolders using R code: 
## raw_data, clean_data, scripts, results or Tasks, plots etc
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("Tasks")
dir.create("plots")

# Import patient_info data
data <- read.csv("patient_info.csv")
View(data)

# Inspect the structure of the dataset using appropriate R functions
str(data)

# Identify variables with incorrect or inconsistent data types.
##**Gender, diagnosis and smoker should be factors not characters.**

# Convert variables to appropriate data types where needed
data$gender <- factor(data$gender, levels = c("Male", "Female"))
data$diagnosis <- factor(data$diagnosis, levels = c("Normal", "Cancer"))
data$smoker <- factor(data$smoker, levels = c("Yes", "No"))
str(data)

# Create a new variable for smoking status as a binary factor
data$smoking_stat <- ifelse(data$smoker == "Yes", 1, 0)
data

# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(data, file = "C:/Users/USER/Documents/AI_Omics_Internship_2025/Module_1/clean_data/patient_info_clean.csv")

# Save your R script in your script folder with name "class_Ib"
