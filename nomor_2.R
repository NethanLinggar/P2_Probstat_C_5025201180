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