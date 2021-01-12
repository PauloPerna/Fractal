# -*- coding: utf-8 -*-
"""
Created on Sun Jan 10 21:22:54 2021

Autor: P. Perna

"""

from PIL import Image

def cor(i,max):
    #corf = [255,253,235]
    cori = [2,1,6]
    delta = [253,252,229]
    cor = [int(i*item/max) for item in delta]
    return(cori[0] + cor[0], cori[1] + cor[1], cori[2] + cor[2])
    
def mandelbrot(c,maxit = 255, multibrot = 2):
    z = c
    for i in range(1,maxit):
        z = z**multibrot + c
        if abs(z) > 2:
            return cor(i,maxit)
    return (255,255,255)

def geramandel(centro = [-0.77568377,0.13646737],zoom = 1, tam_img = 1000, maxit = 255, multibrot = 2, path = ".\\Imgs\\last_brot.png"):
    imgz = Image.new('RGB', (tam_img,tam_img),)
    pixelsz = imgz.load()
    
    for x in range(imgz.size[0]):
        print(str(x))
        for y in range(imgz.size[1]):
            pixelsz[x,y] = mandelbrot(complex((2*x)/(tam_img*zoom) + centro[0] - 1/zoom, (2*y)/(tam_img*zoom) + centro[1] - 1/zoom),
                                      maxit = maxit)
    
    imgz.save(fp = path)
    return imgz
    
geramandel().show()




# Pontos interessantes para utilizar de centro:
# pontos:
#       1: [-1.54368901269109,0]
#       2: [-0.8546012524393158, 0.20360117683338025]
#       3: [-0.03147422684987622, -0.7593917288808281]
#       4: [-0.04555088774106712, 0.6924804168997948]
#       5: [0.2554329502825137, -0.5669478385347823]





