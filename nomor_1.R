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
t.test(h, alternative = 'two.sided', mu = t_mu)