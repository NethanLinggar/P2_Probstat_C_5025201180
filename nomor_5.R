# loading the appropriate libraries
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

# loading and checking the data
GTL <- read_csv("GTL.csv")
head(GTL)

# A
# building a simple plot for data visualisation
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# B
# creating a variable as factor for the ANOVA
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

# analysis of variance
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# C
# table with factors, means and standard deviation
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# D
# Tukey's test
tukey <- TukeyHSD(anova)
print(tukey)

# E
# creating the compact letter display
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)