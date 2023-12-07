#Final Project Part A
# Name: Peijun Liu

#Read the dataset into a data.frame; ensure rows represent cases and columns represent variables
final<-read.csv("/Users/petra/Desktop/study/UCSF/BIOSTAT 213/ObesityDataSet.csv")

#Ensure all variables are read in as the appropriate data type and/or transform all variables to the appropriate data type
is.data.frame(final) 
gender <- factor(
  final$Gender,
  levels = c("Female","Male"),
  ordered = TRUE
)

#Print the data type of each variable
typeof(final)

for(i in 1:length(final)){
  print(typeof(i))    
}

#Print the dimensions of the data.frame
dim(final)

#Ensure missing data is correctly represented
is.na(final)

#For each case, print the number of missing values
for(i3 in 1:nrow(final)){
  print(sum(is.na(i3)))
}

#For each variable, print the number of missing values
for(i2 in 1:ncol(final)){
  print(sum(is.na(i2)))
}

#Save processed dataset to an .RDS file
saveRDS(final,file="/Users/petra/Desktop/study/UCSF/BIOSTAT 213/ObesityDataSet.RDS")
View(final)
