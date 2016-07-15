#Loading Libraries#
install.packages("Hmisc")
install.packages("data.table")
install.packages("dplyr")

library(Hmisc)
library(data.table)
library(dplyr)


#Working Directories
setwd(choose.dir(getwd(), "set working directory"))
#Loading Data
foobar_v1 <- fread(
  input = "widgets.csv",
  sep = "auto",
  showProgress = getOption("datatable.showProgress")
)
attach(foobar_v1)
str(foobar_v1)
describe(foobar_v1)

dataNoNA <- foobar_v1[!is.na(style),]
attach(dataNoNA)
dataNonNegPrice <- dataNoNA[price > 0,]
attach(dataNonNegPrice)
descriptiveStats <- describe(dataNonNegPrice)
descriptiveStats
hist(price)

foobar_v2 <- na.omit(foobar_v1)
?dplyr
foobar_v1
foobar_v1
barplot(
  table(foobar_v1$style, useNA = "no"),
  xlab = "style",
  ylab = "frequency",
  axes = TRUE,
  axisnames = TRUE,
  srt = 45
)
?barplot
?table
