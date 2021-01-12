# Fractal
Geramos alguns fractais bonitos com base nos conjuntos Mandelbrot e Julia.

## Mandelbrot set
O [conjunto de Mandelbrot](https://en.wikipedia.org/wiki/Mandelbrot_set) são os pontos (c) no plano complexo para os quais a sequência

<img src="https://render.githubusercontent.com/render/math?math=z_{0} = 0">
<img src="https://render.githubusercontent.com/render/math?math=z_{n+1} = z_n^2 + c">

é limitada.

É bem simples gerar uma imagem desse conjunto. No código dessa pasta é feito por força bruta calculando quantas iterações são necessárias para que se tenha
<img src="https://render.githubusercontent.com/render/math?math=|z_{n}| > 2"> para cada pixel (ponto no plano complexo), a partir daí é certo que a sequência irá divergir.

## Julia set
O [conjunto de Julia](https://en.wikipedia.org/wiki/Julia_set) são os pontos (x) no plano complexo para os quais a sequência

<img src="https://render.githubusercontent.com/render/math?math=z_{0} = x">
<img src="https://render.githubusercontent.com/render/math?math=z_{n+1} = z_n^2 + c">

é limitada para um determinado número c. Repare que cada valor de c irá gerar um conjunto diferente.

O conjunto é desenhado da mesma forma que o conjunto de Mandelbrot.
