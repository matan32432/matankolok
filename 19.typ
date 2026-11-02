#import "../functions.typ": *
= Вопрос 19. Равенство Парсеваля

*Теорема.* _Для любой функции $f$ интегрируемой на отрезке $[-pi, pi]$ справедливо равенство_

$
1/pi limits(integral)_(-pi)^pi f^2(x) d x = a_0^2/2 + limits(sum)_(k = 1)^infinity (a_k^2 + b_k^2).
$

*Доказательство.* Обозначим

$
rho_n = 1/pi limits(integral)_(-pi)^pi f^2(x) d x - [a_0^2/2 + limits(sum)_(k = 1)^n (a_k^2 + b_k^2)].
$

Согласно равенству (@fla55)

$
rho_n = 1/pi limits(integral)_(-pi)^pi lr((f(x) - S_n (x)), size: #125%)^2 d x.
$

Теорема будет доказана, если мы установим, что

$
limits(lim)_(n -> infinity) rho_n = 0.
$

Прежде всего отметим, что последовательность $(rho_n)$ является невозрастающей.

Пусть $epsilon > 0$. Можно найти непрерывную на отрезке $[-pi, pi]$ функцию $g(x)$, удовлетворяющую условию $g(-pi) = g(pi)$, что

$
limits(integral)_(-pi)^pi lr((f(x) - g(x)), size: #125%)^2 d x < epsilon/4.
$

Согласно второй теореме Вейерштрасса существует тригонометрический многочлен (порядка $m$)

$
T_m (x) = p_0/2 + limits(sum)_(k = 1)^m (p_k cos k x + q_k sin k x)
$

такой, что $abs(g(x) - T_m (x)) < sqrt(epsilon/8)$ при всех $x in [-pi, pi]$. Тогда

$
1/pi limits(integral)_(-pi)^pi lr((g(x) - T_m (x)), size: #125%)^2 d x < epsilon/4,
$

и

$
1/pi limits(integral)_(-pi)^pi lr((f(x) - T_m (x)), size: #125%)^2 d x = 1/pi limits(integral)_(-pi)^pi lr([lr((f(x) - g(x)), size: #125%) + lr((g(x) - T_m (x)), size: #125%)], size: #225%)^2 d x <=\
<= 2 1/pi [limits(integral)_(-pi)^pi lr((f(x) - g(x)), size: #125%)^2 d x + limits(integral)_(-pi)^pi lr((g(x) - T_m (x)), size: #125%)^2 d x] <\
< 2 (epsilon/4 + epsilon/4) = epsilon
$

(мы воспользовались неравенством $(a + b)^2 <= 2 (a^2 + b^2)$).

Далее, в силу теоремы о наилучшем приближении имеем

$
rho_m = 1/pi limits(integral)_(-pi)^pi lr((f(x) - S_m (x)), size: #125%)^2 d x <= 1/pi limits(integral)_(-pi)^pi lr((f(x) - T_m (x)), size: #125%)^2 d x.
$

Следовательно, $rho_m < epsilon$ и, поскольку последовательность $(rho_n)$ является невозрастающей, $rho_n < epsilon$ при всех $n >= m$, т. е. $limits(lim)_(n -> infinity) rho_n = 0$. #styled_qed()

*Определение.* _Равенство_

$
1/pi limits(integral)_(-pi)^pi f^2(x) d x = a_0^2/2 + limits(sum)_(k = 1)^infinity (a_k^2 + b_k^2),
$

_справедливое для любой функции $f$, интегрируемой на отрезке $[-pi, pi]$, называют равенством Парсеваля, или условием замкнутости тригонометрической системы._
