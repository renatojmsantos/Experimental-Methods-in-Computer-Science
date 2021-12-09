from random import *

n = 10000#sequence size
eps = 1.0/n #probability of failure
maxr = n/2 #maximum range used by the function "randint"

# gera data.in -> input

f = open("data.in","w")
#f.write("EPS: " + str(eps) + " " + "N: " + str(n) + "\n")
f.write(str(eps) + " " + str(n))
f.write("\n")

for i in range(n):
    f.write(" " + str(randint(1,maxr)) ) # nr aleatorio para input 
f.write("\n")

f.close()
