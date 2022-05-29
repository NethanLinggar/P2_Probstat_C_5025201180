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