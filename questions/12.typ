#import "functions.typ": *
= Вопрос 12. Некоторые особенности рядов Фурье: ряды Фурье чётных и нечётных функций, разложение в ряд Фурье на промежутке $[0, pi]$, разложение в ряд Фурье на промежутке $[-l, l]$

== Ряды Фурье чётных и нечётных функций

Пусть функция $f in R_([-pi, pi])$ является чётной. Тогда

$ a_0 = 1/pi limits(integral)_(-pi)^pi f(x) d x = 2/pi limits(integral)_0^pi f(x) d x, $<fla42>

$ a_n = 1/pi limits(integral)_(-pi)^pi f(x) cos n x d x = 2/pi limits(integral)_0^pi f(x) cos n x d x, $<fla43>

$ b_n = 1/pi limits(integral)_(-pi)^pi f(x) sin n x d x = 0, " " n = 1, 2,... $

Таким образом, ряд Фурье четной функции не содержит синусов кратных дуг, т.е.

$ f(x) " "~ " " a_0/2 + limits(sum)_(n = 1)^infinity a_n cos n x, $

причем коэффициенты $a_0, a_n,...$ вычисляются по формулам (@fla42) и (@fla43).


Пусть функция $f in R_([-pi, pi])$ является нечётной. Тогда

$ a_0 = 1/pi limits(integral)_(-pi)^pi f(x) d x = 0, $

$ a_n = 1/pi limits(integral)_(-pi)^pi f(x) cos n x d x = 0, $

$ b_n = 1/pi limits(integral)_(-pi)^pi f(x) sin n x d x = 2/pi limits(integral)_0^pi f(x) sin n x d x, " " n = 1, 2,... $<fla47>

Таким образом, ряд Фурье нечетной функции содержит только синусы кратных дуг, т.е.

$ f(x) " "~ " " limits(sum)_(n = 1)^infinity b_n sin n x, $

причем коэффициенты $b_1, b_2,...$ вычисляются по формуле (@fla47).

== Разложение в ряд Фурье на промежутке $[0, pi]$

Пусть функция $f$ определена и интегрируема на отрезке $[0, pi]$.

1. Построим новую функцию

$ F(x) = cases( 
  f(x)\, x in [0, pi]\,, 
  f(-x)\, x in [-pi, 0), 
) $

Функция $F$ является чётной, и согласно предыдущему пункту

$ F(x) " " ~ " " a_0/2 + limits(sum)_(n = 1)^infinity a_n cos n x, $

причём

$ a_0 = 2/pi limits(integral)_0^pi F(x) d x = 2/pi limits(integral)_0^pi f(x) d x, $

$ a_n = 2/pi limits(integral)_0^pi F(x) cos n x d x = 2/pi limits(integral)_0^pi f(x) cos n x d x, " " n = 1, 2,... $

Таким образом, на $[0, pi]$

$ f(x) " " ~ " " a_0/2 + limits(sum)_(n = 1)^infinity a_n cos n x. $

2. Построим функцию на

$ F(x) = cases( 
  f(x)\, x in [0, pi]\,, 
  -f(-x)\, x in [-pi, 0), 
) $

Тогда

$ F(x) " " ~ " " limits(sum)_(n = 1)^infinity b_n sin n x, $

причём

$ b_n = 2/pi limits(integral)_0^pi F(x) sin n x d x = 2/pi limits(integral)_0^pi f(x) sin n x d x, " " n = 1, 2,... $

Таким образом, на $[0, pi]$

$ f(x) " " ~ " " limits(sum)_(n = 1)^infinity b_n sin n x. $

== Разложение в ряд Фурье на промежутке $[-l, l]$

Пусть функция $f(x)$ определена на отрезке $[-l,l]$. Положим $x = (l t)/pi$. Это линейная функция осуществляет взаимно однозначное отображение отрезка $[-pi, pi]$ на отрезок $[-l,l]$. Поэтому функция $phi (t) = f((l t)/pi)$ определена на отрезке $[-pi, pi]$. Поэтому

$ phi (t) " " ~ " " a_0/2 + limits(sum)_(n = 1)^infinity (a_n cos n t + b_n sin n t), $

где

$
a_0 = 1/pi limits(integral)_(-pi)^pi phi (t) d t = 1/pi limits(integral)_(-pi)^pi f((l t)/pi) d t,\

a_n = 1/pi limits(integral)_(-pi)^pi phi (t) cos n t d t = 1/pi limits(integral)_(-pi)^pi f((l t)/pi) cos n t d t,\

b_n = 1/pi limits(integral)_(-pi)^pi phi (t) sin n t d t = 1/pi limits(integral)_(-pi)^pi f((l t)/pi) sin n t d t, " " n = 1, 2,...
$

Теперь вернемся к прежней переменной, т.е. положим $t = (pi x)/l$. Будем иметь

$ f(x) " " ~ " " a_0/2 + limits(sum)_(n = 1)^infinity (a_n cos (n pi x)/l + b_n sin (n pi x)/l) $

и

$
a_0 = 1/l limits(integral)_(-l)^l f(x) d x,

a_n = 1/l limits(integral)_(-l)^l f(x) cos (n pi x)/l d x,

b_n = 1/l limits(integral)_(-l)^l f(x) sin (n pi x)/l d x,\

n = 1, 2,...
$
