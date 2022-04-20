library(dplyr)
library(ggplot2)

setwd("C:/Users/hadye/Dropbox/Courses/Statistical Pitfalls and Misinterpretations of Data/Week 3")
edugdp <- read.csv("R13106337_SL050.csv")

edugdp <- select(edugdp, "SE_A12001_001":"SE_A14024_001")

edugdp <- mutate(edugdp, bachelor = SE_A12001_005/SE_A12001_001*100)
edugdp <- mutate(edugdp, masters = SE_A12001_006/SE_A12001_001*100)
edugdp <- mutate(edugdp, doctorate = SE_A12001_008/SE_A12001_001*100)

cor(edugdp$bachelor, edugdp$SE_A14024_001)
cor(edugdp$masters, edugdp$SE_A14024_001)
cor(edugdp$doctorate, edugdp$SE_A14024_001)

ggplot(edugdp) +
  geom_point(aes(bachelor, SE_A14024_001)) +
  ylab("County Per Capita Income") +
  xlab("Percentage of Population aged 25 and over with a Bachelor's Degree")

ggplot(edugdp) +
  geom_point(aes(masters, SE_A14024_001)) +
  ylab("County Per Capita Income") +
  xlab("Percentage of Population aged 25 and over with a Master's Degree")

ggplot(edugdp) +
  geom_point(aes(doctorate, SE_A14024_001)) +
  ylab("County Per Capita Income") +
  xlab("Percentage of Population aged 25 and over with a Doctorate Degree")

