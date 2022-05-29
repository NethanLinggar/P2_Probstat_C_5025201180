dataoneway <- read.table("onewayanova.txt",h=T)
dim(dataoneway)
head(dataoneway)
attach(dataoneway)
names(dataoneway)

dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(dataoneway$Group)

Group1 <- subset(dataoneway, Group == "Kucing Oren")
Group2 <- subset(dataoneway, Group == "Kucing Hitam")
Group3 <- subset(dataoneway, Group == "Kucing Putih")

# B
bartlett.test(Length ~ Group, data = dataoneway)

# C
qqnorm(Group1$Length)
qqline(Group1$Length)

# D
# Setelah di jalankan, didapatkan nilai p-value = 0.8054

# E
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)
TukeyHSD(aov(model1))

# F
install.packages("ggplot2")
library("ggplot2")

ggplot(dataoneway, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "grey80", colour = "black") +
  scale_x_discrete() + xlab("Treatment Group") +
  ylab("Length (cm)")







