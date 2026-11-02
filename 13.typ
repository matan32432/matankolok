#import "../functions.typ": *
= Вопрос 13. Средние Фейера и их представление интегралом Фейера

*Определение.* _Пусть функция $f in R_(2 pi)$,_

$ f(x) " " ~ " " a_0/2 + limits(sum)_(n = 1)^infinity (a_n cos n x + b_n sin n x), $

_и_

$ S_n (x) = a_0/2 + limits(sum)_(k = 1)^n (a_k cos k x + b_k sin k x), $

_Средними Фейера называют_

$ sigma_n (x) = (S_0 (x) + S_1 (x) + ... + S_n (x))/(n + 1) $<FejerMean>

== Представление средних Фейера интегралом Фейера

*Теорема.* _Пусть функция $f in R_(2 pi)$. Тогда верно представление_

$ sigma_n (x) = 1/pi limits(integral)_0^pi lr((f(x + t) + f(x - t)), size: #125%) Ф_n (t) d t, $<fla50>

_где функция_

$ Phi_n (t) = (limits(sum)_(k = 0)^n D_k (t))/(n + 1) = (sin^2 ((n + 1)/2) t)/(2 (n + 1) sin^2 (t/2)) $<fla51>

_называется ядром Фейера (при $t = 2 pi k$, $k in ZZ$ равенство (@fla51) понимается в предельном смысле)._

*Доказательство.* В силу теоремы Дирихле и определения средних Фейера нам достаточно доказать равенство (@fla51).
Согласно формуле (@DirichletKernel) имеем

$
Phi_n (t) = (limits(sum)_(k=0)^n D_k (t))/(n+1) = (limits(sum)_(k=0)^n sin (k + 1/2) t)/(2(n+1)sin t / 2). 
$

Тогда 

$
(2 sin t / 2)^2 (n+1) Phi_n (t) = limits(sum)_(k=0)^n 2 sin t / 2 sin(k + 1/2)t =\
= limits(sum)_(k=0)^n lr((cos k t - cos (k+1)t), size: #125%) = 1 - cos(n+1)t = 2 sin^2 ((n+1)/2) t
$

и, следовательно, верно равенство (@fla51). #styled_qed()
