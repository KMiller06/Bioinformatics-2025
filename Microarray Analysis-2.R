#Author: Pawar; Date:4/01/2025 Purpose:Perform microarray analysis

#Load library affy
library(affy)

# Set the working directory
setwd("C:\Users\Ky-Mani Miller\Downloads\GSE272045_RAW")

#Read the CEL dataset from data folder

data<- ReadAffy()