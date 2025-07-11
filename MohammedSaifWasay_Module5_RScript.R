#Mohammed Saif Wasay, June 2024
#NUID: 002815958
#ALY6010 80685 - Probability Theory and Introductory Statistics
#Module 5: Week 5

cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) #clears packages
options(scipen = 100) # disables scientific notation for entire R session

#Loading Libraries
library(pacman)
p_load(tidyverse)
library(dplyr)
p_load(janitor)
library(corrplot)

#Reading Dataset
sp <- read.csv("Student_Performance.csv")

#Making column names R friendly
sp <- clean_names(sp)

#Removing Nulls from the dataset
sp <- na.omit(sp)
colSums(is.na(sp))

#Checking data types
sapply(sp, is.numeric)

#Selecting only numeric columns
sp_num <- sp %>% select(hours_studied, previous_scores, sleep_hours, sample_question_papers_practiced, performance_index)

#Correlation Matrix for the data
correlation_matrix <- cor(sp_num)

#Correlation plot for the data
corrplot(correlation_matrix, method = "color", addCoef.col = "black", tl.cex = 0.40, tl.srt = 0)

#Correlation test on the performance and hours studied
cor.test(sp_num$performance_index, sp_num$hours_studied, method = "pearson")

#Correlation test on the performance and previous_scores
cor.test(sp_num$performance_index, sp_num$previous_scores, method = "pearson")

#Correlation test on the performance and sleep_hours
cor.test(sp_num$performance_index, sp_num$sleep_hours, method = "pearson")

#Correlation test on the performance and sample_question_papers_practiced
cor.test(sp_num$performance_index, sp_num$sample_question_papers_practiced, method = "pearson")

#Creating a fit for hours studies, sleep hours, sample question papers practiced, previous scores on performance index
fit <-lm(hours_studied +  previous_scores + sleep_hours + sample_question_papers_practiced ~ performance_index,data=sp_num)
fit
summary(fit)

#Plotting a scatter plot with the fit line
plot(sp_num$hours_studied + sp_num$previous_scores + sp_num$sleep_hours + sp_num$sample_question_papers_practiced ~ sp_num$performance_index,
     main="Hours Studied + Previous Scores + Hours Slept +  Sample Solved vs Performance Index",
     xlab="Hours Studied + Previous Scores + Hours Slept +  Sample Solved",
     ylab="Performance Index")
s<-abline(fit,col="red",lty=3,lwd=5)

