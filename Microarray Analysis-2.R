#Author: Pawar; Date:4/01/2025 Purpose:Perform microarray analysis

#Load library affy
library(affy)

# Set the working directory
setwd("C:/Real Data")

#Read the CEL dataset from data folder

data<- ReadAffy()

#Boxplot the raw datasets
boxplot(data)

#Preprocess the microarray dataset by performing Normalization (by using function rma)
norm_data<-rma(data)

#Extract expression values
final<-exprs(norm_data

#Plot the normalized dataset
boxplot(final)

#save as normalized-plot


#Classify treatment and control groups
Treatment<-final[,1:5]
Control<-final[,6:10]

head(treatment)

,before is column
,after is rows


