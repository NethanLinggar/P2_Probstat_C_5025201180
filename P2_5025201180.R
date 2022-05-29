# Soal 1
# A
X = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
Y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
h = Y-X
h
sd(h)

# Install packages
install.packages("BSDA")
library(BSDA)

# B
t.test(h)

# or

p_size = 9
n = p_size/2
sm_frame = sample(h, n)

xbar = mean(sm_frame)
mu = mean(h)

t = (xbar-mu) / (sd(sm_frame)/sqrt(n))

2*pt(-abs(t),df=n-1)

# C
var.test(X, Y)
t.test(X, Y, var.equal = TRUE)

# Soal 2
n = 100
xbar = 23500
sd = 3900
mu = 20000

t = (xbar-mu)/(sd/sqrt(n))
t

p_value = 2*pt(-abs(t),df=n-1)
p_value

# A
# Setuju, arena kesimpulan dari uji z menolak H0, sehingga mobil
# dikemudikan rata-rata lebih dari 20000 kilometer per tahun

# B
# Dengan apa yang diketahui, maka
# H0 : ?? = 20000
# H1 : ?? > 20000

# C
# Kesimpulan:
# Mobil dikemudikan dengan rata-rata lebih dari 20.000 kilometer per tahun

# (Penjelasan lebih lanjut ada di readme.md)

# Soal 3
# A
# H0 -> z = 9.50
# H1 -> z = 10.98

# B
# Hitung Sampel Statistik
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# C
# Lakukan Uji Statistik (df =2)
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")

# D
# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# E
# Teori keputusan:
# Teori formal pengambilan keputusan di bawah ketidakpastian.
# Aksi: ({a}_{a???A})
# Kemungkinan konsekuensi: ({c}_{c???C}) (tergantung pada keadaan dan tindakan)
# Maka keputusan dibuat dengan t.test

# F
# Kesimpulan:
# Perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik 
# dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

# (Penjelasan lebih lanjut ada di readme.md)

# Soal 4
# A
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# B
bartlett.test(Length~Group, data=myFile)

# C
qqnorm(group1$Length)
qqline(group1$Length)

# D
# Setelah di jalankan, didapatkan nilai p-value = 0.8054

# E
model1 <- lm(Length~Group, data=myFile)

anova(model1)

TukeyHSD(aov(model1))

# F
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

# Soal 5
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