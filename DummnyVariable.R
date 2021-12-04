install.packages("readr")
library(readr) 

#Data Pre-processing

#Dummy variables creation 
 
animals <- read.csv("F:/DataSets/animal_category.csv")
View(animals)
str(animals)
summary(animals)

install.packages("fastDummies")

library(fastDummies)

animals_dummy <- dummy_cols(animals, select_columns = c("Animals","Gender","Homly","Types"),
                         remove_first_dummy = TRUE,remove_most_frequent_dummy = FALSE,remove_selected_columns = TRUE)


#Label encoding

install.packages("LabelEncoder")

install.packages("CatEncoders")

library(CatEncoders)

View(animals)

animals_new <- LabelEncoder.fit(animals$Types)
# new values are transformed to NA

Types_new <- transform(animals_new, animals$Types)

Types_new

# Using cbind to combine with original dataset

newdata <- cbind(animals, Types_new)

View(newdata)
