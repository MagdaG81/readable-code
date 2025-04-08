import numpy as np
import matplotlib.pyplot as plt
Npoints = 1000

def f(Npoints):
    x = np.random.uniform(-1,1,Npoints)
    y = np.random.uniform(-1, 1,Npoints)
    radius = x**2 + y**2
    
    return x,y,radius

def pc(radius):
    points_in_circle = radius < 1
    area_circle = (sum(points_in_circle))
    points_in_square = len(radius)
    pi = 4*area_circle / points_in_square
    return pi

pi_est = []

for i in range(0,1000000):
    x,y,r = f(Npoints)
    pi = pc(r)
    pi_est.append(pi)

pi_f = np.array(pi_est).mean()

print(pi_f,np.pi)
print(np.round(np.abs((pi_f - np.pi)/np.pi)*100,3))

# plt.plot(x,y,'.')
# plt.plot(x[r<1],y[r<1],'ro')
# plt.axis('square')
# plt.show()
