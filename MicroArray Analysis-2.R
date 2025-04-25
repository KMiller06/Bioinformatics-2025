#Author: K.Miller; Date:4/15/2025 Purpose:Perform microarray analysis

#Load library affy
library(affy)

# Set the working directory
setwd("C:/Users/hmiller/Desktop/GSE203024_RAW.tar")

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

#Calculate mean for Treatment and Control
Treatment_mean<-rowMeans(Treatment)
Control_mean<-rowMeans(Control)


#Calculate the fold changes
Fold_changes<-Treatment_mean -Control_mean

#>1.5 is an up-regulated gene,<1.5 is a down regulated gene

#Export results as a CSv File
write.csv(Fold_Changes,Fold_changes.csv,row.names=TRUE)
