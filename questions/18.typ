#import "functions.typ": *

= Вопрос 18. Среднее квадратичное отклонение, теорема о наилучшем приближении и неравенство Бесселя

*Определение.* 
_Пусть функции $f$ и $f_n$, $n in NN$, интегрируемы на отрезке $[a, b]$.
Говорят, что последовательность $(f_n)$ сходится в среднем к функции $f$ на отрезке $[a, b]$, если_

$ lim_(n -> infinity) limits(integral)_a^b lr((f_n (x) - f(x)), size: #125%)^2 d x = 0. $

== Теорема о наилучшем приближении

*Теорема (о наилучшем приближении).* 
_Пусть функция $f$ интегрируема на отрезке $[-pi, pi]$. 
Тогда среди всех тригонометрических многочленов порядка не выше $n$ наименьшее среднее 
квадратичное отклонение от функции $f$ имеет $n$-ая частная сумма ее ряда Фурье_

$ S_n (x) = a_0/2 + limits(sum)_(k = 1)^n (a_k cos k x + b_k sin k x). $

_При этом_

$ 1/pi limits(integral)_(-pi)^pi lr((f(x) - S_n (x)), size: #125%)^2 d x = 1/pi limits(integral)_(-pi)^pi f^2(x) d x - [a_0^2/2 + limits(sum)_(k = 1)^n (a_k^2 + b_k^2)]. $<fla55>

*Доказательство*.
Рассмотрим произвольный тригонометрический многочлен порядка не выше $n$.

$
T_n (x) = p_0/2 + limits(sum)_(k=1)^n (p_k cos k x + q_k sin k x)
$

и вычислим среднее квадратичное отклонение $T_n (x)$ от $f(x)$:

$
r_n (x) = 1/pi limits(integral)_(-pi)^pi lr((f(x) - T_n (x)), size: #125%)^2 d x = 1/pi limits(integral)_(-pi)^pi f^2(x) d x -\
- 2 1/pi limits(integral)_(-pi)^pi f(x) T_n (x) d x + 1/pi limits(integral)_(-pi)^pi T^2_n (x) d x.
$

Имеем

$
1/pi limits(integral)_(-pi)^pi f(x) T_n (x) d x = 1/pi limits(integral)_(-pi)^pi f(x) [p_0/2 + limits(sum)_(k=1)^n (p_k cos k x + q_k sin k x)] d x =\
= (a_0 p_0) / 2 + limits(sum)_(k=1)^n (a_k p_k + b_k q_k)
$

и

$
1/pi limits(integral)_(-pi)^pi T_n^2 (x) d x = 1/pi limits(integral)_(-pi)^pi [p_0/2 + limits(sum)_(k=1)^n (p_k cos k x + q_k sin k x)]^2 d x =\
= 1/pi limits(integral)_(-pi)^pi p_0^2 / 4 d x + 1/pi limits(integral)_(-pi)^pi limits(sum)_(k=1)^n (p_k^2 cos^2 k x + q_k^2 sin^2 k x) d x
$

(мы воспользовались свойством ортогональности тригонометрической системы), откуда

$
1/pi limits(integral)_(-pi)^pi T^2_n (x) d x = p_0^2 / 2 + limits(sum)_(k=1)^n (p_k^2 + q_k^2).
$

Следовательно,

$
r_n (x) = 1/pi limits(integral)_(-pi)^pi f^2 (x) d x - a_0 p_0 - 
2 limits(sum)_(k=1)^n (a_k p_k + b_k q_k) + p_0^2 / 2 + limits(sum)_(k=1)^n (p_k^2 + q_k^2) =\
= 1/pi limits(integral)_(-pi)^pi f^2 (x) d x - [a_0^2 / 2 + limits(sum)_(k=1)^n (a_k^2 + b_k^2)] +\
+ [a_0^2 / 2 + limits(sum)_(k=1)^n (a_k^2 + b_k^2) - a_0 p_0 - 2 limits(sum)_(k=1)^n
(a_k p_k + b_k q_k) + p_0^2 / 2 + limits(sum)_(k=1)^n (p_k^2 + q_k^2)] =\
= 1/pi limits(integral)_(-pi)^pi f^2 (x) d x - [a_0^2/2 + limits(sum)_(k=1)^n (a_k^2 + b_k^2)] +\
+ [(a_0 - p_0)^2 / 2 + limits(sum)_(k=1)^n (a_k - p_k)^2 + limits(sum)_(k=1)^n (b_k - q_k)^2].
$

Осталось заметить, что величина $r_n (x)$ минимальная, если выражение 

$
[(a_0 - p_0)^2 / 2 + limits(sum)_(k=1)^n (a_k - p_k)^2 + limits(sum)_(k=1)^n (b_k - q_k)^2] = 0.
$

Последнее происходит при $p_0 = a_0$, $p_k = a_k$, $q_k = b_k$, $k = 1, dots, n$,
т.е. в случае, если тригонометрический многочлен $T_n (x) = S_n (x)$.

При этом 

$
1/pi limits(integral)_(-pi)^pi lr((f(x) - S_n (x)), size: #125%)^2 d x = 1/pi limits(integral)_(-pi)^pi f^2 (x) d x -
[a_0^2 / 2 + limits(sum)_(k=1)^n (a_k^2 + b_k^2)].
$

#styled_qed()

== Неравенство Бесселя

*Следствие (неравенство Бесселя).* _Если функция $f$ интегрируема на отрезке $[-pi, pi]$, то_

$ 
a_0^2/2 + limits(sum)_(k = 1)^infinity (a_k^2 + b_k^2) <= 1/pi limits(integral)_(-pi)^pi f^2(x) d x. 
$

*Доказательство.* Поскольку левая часть равенства (@fla55) неотрицательна, то 

$
a_0^2 / 2 + limits(integral)_(k=1)^(infinity) (a_k^2 + b_k^2) <= 1/pi limits(integral)_(-pi)^pi f^2 (x) d x
$

при любом $n in NN$. Осталось перейти к пределу при $n -> infinity$. #styled_qed()
