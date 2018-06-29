library(readxl)
library(tidyverse)
library(reshape2)

# CONSTANTS
# =========
# specify all your details here
file.name <- "product launch performance.xlsx" # THE NAME OF YOUR XLSX FILE IN THE CURRENT FOLDER
date.column.name <- "week" # THE NAME OF YOUR DATE COLUMN
keys <- c("category") # A LIST OF KEYS WHICH WILL BE SPREAD TO COLUMNS
metrics <- c("impressions", "clicks", "cost") # A LIST OF COLUMNS YOU WANT TO USE AS METRIC

# DATA
# ====

# load the data
data <- read_excel(file.name)

# reshape data for excel output

for (i in c(1:length(keys))) {
  for (j in c(1:length(metrics))) {
    reshape_data <- data %>%
      select(date.column.name, keys[i], metrics[j]) %>%
      dcast(as.formula(sprintf("%s ~ %s", date.column.name, keys[i])), sum)
    
    write.csv(reshape_data, paste0(metrics[j], ".csv"))  
  }
}