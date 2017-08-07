# Financial Analysis:


# Here I am sourcing the important 
library(dplyr)
library(data.table)
library(ggplot2)
library(prophet)


file <- read.csv(file="990Efile+Operational+Data+2009+to+2015.csv")
dt <- data.frame(file)


# Data clean up Unsupervised learning Principle Component Analysis to find the most 
# important features.

prcomp(dt)




# Regression analysis: Volatility across 2010 to 2014 for program expenses,
# salary, and number of employees.
# FISYR tax year of returns
# STYEAR is the start date of the non profit
# ENDYEAR end date of the tax year. 
# TOTALEXPCURRENT is a important column that contains the 


# I am new to relational algebra, the idea I am trying accomplish is based off unique EINs we want
# to iterate through each EIN for the years of operation and find ratios of change in several columns, 
EIN <- dt$EIN 
unique_entries <- dt %>%  filter((EIN)!=is.na()) %>% select(EIN, TOTALEXPCURRENT, ENDYEAR, SALARIESCURRENT) 
# When summarizing the number of employees we see that the max is quite high and may need to get tossd.
num_employees <- dt %>% select(TOTEMPLOYEE) %>% filter(TOTEMPLOYEE < 1000)

count_DISCOPS <- dt %>% select(DISCOPS) %>% filter(DISCOPS != is.na(TRUE))
subset(dt, nrow(1:100) == TRUE)
        
        

> qplot(dt$FISYR, dt$EARNINGSBEGYEAR)

        





