#------Question 7.2------#

install.packages("tidyverse")
install.packages("fpp2")
library(tidyverse)
library(fpp2)

#import data
raw.data <- read.table("temps.txt", header=TRUE)

#convert dataframe to vector for time series
data<-ts(as.vector(unlist(raw.data[,2:21])),start=1996,frequency=123)

plot(data)

holt.model <- HoltWinters(data)
print(holt.model)

plot(holt.model)