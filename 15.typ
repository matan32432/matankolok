#import "../functions.typ": *
= Вопрос 15. Теорема Фейера

*Теорема (Фейера).*

_Если функция $f in C_(2 pi)$, то последовательность средних Фейера $(sigma_n)$ равномерно сходится к функции $f$._

*Доказательство.* Если функция $f$ $2 pi$-периодическая и непрерывная, то она равномерно непрерывная и ограниченная. 
Пусть $epsilon > 0$. Тогда найдётся $delta > 0$ такое, что при всех $t in (0, delta)$ и при всех $x in RR$ выполняется неравенство

$
abs(f(x + t) + f(x - t) - 2 f(x)) < epsilon.
$

Пусть число $M > 0$ такое, что при всех $x in RR " " abs(f(x)) <= M$.
Тогда 

$
abs(sigma_n (x) - f(x)) <= 1/pi limits(integral)_0^pi abs(f(x + t) + f(x - t) - 2 f(x)) Phi_n (t) d t =\
= 1/pi limits(integral)_0^delta abs(f(x + t) + f(x - t) - 2 f(x)) Phi_n (t) d t +
1 / pi limits(integral)_delta^pi abs(f(x + t) + f(x - t) - 2 f(x)) Phi_n (t) d t <=\
<= epsilon/pi limits(integral)_0^pi Phi_n (t) d t + (4 M)/pi limits(integral)_delta^pi Phi_n (t) d t <=
epsilon/2 + (4 M (pi - delta))/(pi 2 (n + 1) sin^2 delta/2) <\
< epsilon/2 + (2 M)/((n + 1)sin^2 delta/2).
$

Найдётся номер $n_epsilon$ такой, что при всех $n > n_epsilon$ выполняется неравенство 

$
(2 M)/((n + 1) sin^2 delta/2) < epsilon/2.
$

Поэтому при всех $n > n_epsilon$ и при всех $x in RR$ выполняется неравенство

$
abs(sigma_n (x) - f(x)) < epsilon,
$

т.е. $sigma_n arrows.rr f$. #styled_qed()
