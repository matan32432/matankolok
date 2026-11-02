#import "functions.typ": *
= Вопрос 8. Представление частичной суммы ряда Фурье интегралом Дирихле

*Теорема (Дирихле).*

_Пусть функция $f in R_(2 pi)$. Тогда частная сумма ряда Фурье функции $f$ может быть представлена в следующем виде_

$ S_n (x) = 1/pi limits(integral)_0^pi lr((f(x + t) + f(x - t)), size: #125%) D_n (t) d t, " " x in RR, $<fla37>

_где_

$ D_n (t) = 1/2 + cos t + cos 2 t + ... + cos n t = #DirichletKernel(t) $

_Интеграл в равенстве (@fla37) называют_ *интегралом Дирихле*.

*Доказательство.* 
Рассмотрим частную сумму ряда Фурье функции $f$ в фиксированной точке $x$

$
S_n (x) = a_0 / 2 + limits(sum)_(k=1)^n (a_k cos k x + b_k sin k x).
$

Подставив вместо коэффициентов их выражения 

$ a_0 = 1/pi limits(integral)_(-pi)^pi f(t) d t, " " a_k = 1/pi limits(integral)_(-pi)^pi f(t) cos k t d t, $
$ b_k = 1/pi limits(integral)_(-pi)^pi f(t) sin k t d t, " " k = 1, 2,..., $

получим

$
S_n (x) = 1/(2 pi) limits(integral)_(-pi)^pi f(t) d t + limits(sum)_(k=1)^n 1/pi limits(integral)_(-pi)^pi f(t)(cos k t cos k x + sin k t sin k x) d t =\
= 1/pi limits(integral)_(-pi)^(pi) f(t)(1/2 + limits(sum)_(k=1)^(n) cos k (t - x)) d t = 1/pi limits(integral)_(-pi)^(pi) f(t) (sin (2n + 1)/2 (t - x))/(2 sin (t-x)/2) d t
$

Сделаем в интеграле замену $t = x + u$, $u$ --- новая переменная. Тогда

$
S_n (x) = 1/pi limits(integral)_(-pi)^pi f(x + u) #DirichletKernel(u) d u =\
= 1/pi limits(integral)_0^pi f(x + u) #DirichletKernel(u) d u + 1/pi limits(integral)_(-pi)^0 f(x + u) #DirichletKernel(u) d u =
$

(сделаем замену переменных во втором интеграле $u = -y$, затем переобозначим переменную $y$ вновь на $u$)

$
= 1/pi limits(integral)_0^pi lr((f(x + u) + f(x - u)), size: #125%) #DirichletKernel(u) d u =\
= 1/pi limits(integral)_0^pi lr((f(x + u) + f(x - u)), size: #125%) D_n (u) d u.
$

#styled_qed()
