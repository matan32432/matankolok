#import "../functions.typ": *

= Вопрос 10. Принцип локализации Римана

*Теорема (принцип локализации Римана).* _Пусть функция $f in R_(2 pi)$. Тогда при любом $a in (0, pi)$ частная сумма ряда Фурье функции $f$ может быть представлена в следующем виде_

$ S_n (x) = 1/pi limits(integral)_0^a lr((f(x + t) + f(x - t)), size: #125%) #DirichletKernel(t) d t + alpha_n (x), $

_где_

_$ alpha_n (x) -> 0 " при " n -> infinity. $_ 

*Доказательство*. Представим правую часть равенства (@fla37) в виде суммы двух интегралов 

$
S_n (x) = 1/pi limits(integral)_0^pi lr((f(x + t) + f(x - t)), size: #125%) #DirichletKernel(t) d t =\
= 1/pi limits(integral)_0^a lr((f(x + t) + f(x - t)), size: #125%) #DirichletKernel(t) d t +\
+ 1/pi limits(integral)_a^pi lr((f(x + t) + f(x - t)), size: #125%) #DirichletKernel(t) d t .
$

Обозначим 
$
alpha_n (x) = 1/pi limits(integral)_a^pi lr((f(x + t) + f(x - t)), size: #125%) #DirichletKernel(t) d t .
$

На отрезке $[a, pi]$ функция $sin t / 2$ непрерывна и справедлива оценка 

$
abs(sin t / 2) >= sin a / 2 > 0
$

Поэтому функция 

$
(f(x+t) + f(x-t))/(sin t/2)
$

интегрируема на отрезке $[a, pi]$. Тогда по теореме Римана--Лебега $alpha_n (x) -> 0$ при $n -> infinity$. #styled_qed()
