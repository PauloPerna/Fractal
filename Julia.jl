### Julia sets with Julia!
# import Pkg
# Pkg.add("ImageView")
using ImageView
using Images

function cor(it,maxi)
    return it*255/maxi
end

function juliaset(z,c,multibrot,maxit
    z = z^multibrot + c
    it = 1
    while abs(z) < 2 && it < maxit
        z = z^multibrot + c
        it = it+1
    end
    return cor(it,maxit)
end

function gerajulia(c = -0.835 - 0.2321im, centro = 0+0im, zoom = 1, tam_img = 1000, maxit = 255, multibrot = 2)
    img = zeros(tam_img,tam_img)
    for i in collect(1:size(img)[1])
        println(i)
        for j in collect(1:size(img)[2])
            w = ((2*i)/(tam_img*zoom) - 1/zoom) + ((2*j)/(tam_img*zoom) - 1/zoom)im + centro
            img[j,i] = juliaset(w,c,multibrot,maxit)
        end
    end
    return img
end

img = gerajulia(-0.835 - 0.2321im, 0+0im, 1, 10000, 700, 2)

ImageView.imshow(img)
save("Juliaset.png",  colorview(Gray,img/maximum(img)))
