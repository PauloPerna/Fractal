### Mandelbrot set with Julia!
# import Pkg
# Pkg.add("ImageView")
using ImageView

function cor(i,maxi)
    return i*255/maxi
end

function mandelbrot(c, maxit = 100, multibrot = 2)
    it = 1
    z = c
    while abs(z) < 2 && it < maxit
        z = z^multibrot + c
        it = it + 1
    end
    return cor(it,maxit)
end

function geramandel(centro = 0+0im, zoom = 1, tam_img = 1000, maxit = 255, multibrot = 2)
    img = zeros(tam_img,tam_img)
    for i in collect(1:size(img)[1])
        println(i)
        for j in collect(1:size(img)[2])
            w = ((2*i)/(tam_img*zoom) - 1/zoom) + ((2*j)/(tam_img*zoom) - 1/zoom)im + centro
            img[j,i] = mandelbrot(w, maxit, multibrot)
        end
    end
    return img
end

img = geramandel(-0.7492381827128279 + 0.032945091250413686im,10^7,1000,4000,2)
ImageView.imshow(img)
