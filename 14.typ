#import "functions.typ": *
= Вопрос 14. Теорема о суммируемости ряда Фурье методом средних арифметических в точках разрыва

*Теорема (о суммируемости ряда Фурье методом средних арифметических в точках разрыва).*

_Пусть функция $f in R_(2 pi)$ и в точке $x$ существует предел_

$ lim_(t -> 0) (f(x + t) + f(x - t))/2 = S. $

_Тогда в точке $x$_

$ lim_(n -> infinity) sigma_n (x) = S. $

*Доказательство.* Пусть $epsilon > 0$. Тогда найдётся $delta > 0$ такое, что при всех $t in (0, delta)$
выполняется неравенство

$
abs((f(x+t)+f(x-t))/2 - S) < epsilon.
$

Тогда, используя равенства (@FejerMean), (@fla50) и $2/pi limits(integral)_0^pi Phi_n (t) d t = 1$, получим оценку

$
abs(sigma_n (x) - S) <= 1/pi limits(integral)_0^pi abs(f(x+t)+f(x-t)-2 S) Phi_n (t) d t =\
= 1/pi limits(integral)_0^delta abs(f(x+t)+f(x-t)-2 S) Phi_n (t) d t + 1/pi limits(integral)_delta^pi abs(f(x+t)+f(x-t)-2 S) Phi_n (t) d t <=\
<= 1/pi 2 epsilon limits(integral)_0^pi Phi_n (t) d t + 1/(pi 2 (n+1)sin^2 delta/2) limits(integral)_0^pi abs(f(x+t)+f(x-t) - 2 S) d t =\
= epsilon + 1/(pi 2 (n+1) sin^2 delta / 2) limits(integral)_0^pi abs(f(x+t)+f(x-t) - 2 S) d t.
$

Поскольку интеграл 

$
limits(integral)_0^pi abs(f(x+t)+f(x-t)-2 S) d t
$

представляет собой конкретное конечное число, то найдётся номер $n_epsilon$ такой, что при всех $n > n_epsilon$ выполняется неравенство

$
1/(pi 2 (n+1)sin^2 delta/2) limits(integral)_0^pi abs(f(x+t)+f(x-t) - 2 S) d t < epsilon.
$

Тогда окончательно имеем

$
abs(sigma_n (x) - S) < 2 epsilon
$

при всех $n > n_epsilon$. #styled_qed()
