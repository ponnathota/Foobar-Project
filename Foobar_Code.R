#Loading Libraries#
install.packages("Hmisc")
library(Hmisc)
install.packages("data.table")
library(data.table)
install.packages(dplyr)
library(dplyr)

#Working Directories
setwd("C:/Users/1320128/Desktop/Foobar-Project")
#Loading Data
foobar_v1 <- fread(input ="widgets.csv", sep="auto",
                   showProgress = getOption("datatable.showProgress"))
str(foobar_v1)
describe(foobar_v1)

foobar_v2<-na.omit(foobar_v1)
?dplyr

