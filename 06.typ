#import "../functions.typ": *
= Вопрос 6. Тригонометрическая система, ортогональность тригонометрической системы и свойства интеграла от периодической функции

*Определение.* _Система функций_
$ 1/2,cos x, sin x, cos 2x, sin 2x,..., cos n x, sin n x,... $<fla30>
_называется тригонометрической системой_.

== Ортогональность тригонометрической системы

*Определение.* _Две функции $f$ и $g$, интегрируемые на отрезке $[a, b]$, называют взаимно ортогональными, если_

$ limits(integral)_a^b f(x)g(x) d x = 0. $

*Теорема (об ортогональности тригонометрической системы).*

_Любые две функции тригонометрической системы (@fla30) взаимно ортогональны на отрезке $[-pi, pi].$_

*Доказательство.* Действительно, 

$
limits(integral)_(-pi)^pi 1/2 cos k x d x = 1/(2 k) sin k x lr(|, size:#300%)_(-pi)^pi = 0,
$

$
limits(integral)_(-pi)^pi 1/2 sin k x d x = - 1/(2 k) cos k x lr(|, size:#300%)_(-pi)^pi = 0,
$

$
limits(integral)_(-pi)^pi cos k x cos n x d x = 1/2 limits(integral)_(-pi)^pi lr((cos (k + n) x + cos (k - n) x), size:#125%) d x =\
= 1/2 ((sin(k + n) x)/(k + n) + (sin(k-n) x)/(k - n)) lr(|, size: #300%)_(-pi)^pi = 0,
$

при $k != n$.

Аналогично, 

$
limits(integral)_(-pi)^pi sin k x sin n x d x = 0
$

при $k != n$, и

$
limits(integral)_(-pi)^pi sin k x cos n x d x = 0.
$

#styled_qed()

== Свойства интеграла от периодической функции

*Определение.* _Обозначим через $R_(2 pi)$ класс функций, которые заданы на всей числовой прямой, интегрируемы на каждом конечном отрезке числовой прямой и имеют период $2 pi$_.

*Теорема.*

_Пусть функция $f in R_(2 pi)$. Тогда при любом $a in RR$_

$ 
limits(integral)_a^(a + 2 pi) f(x) d x = limits(integral)_0^(2 pi) f(x) d x.
$

*Доказательство.* Имеем

$
limits(integral)_a^(a + 2 pi) f(x) d x = limits(integral)_a^0 f(x) d x + limits(integral)_0^(2 pi) f(x) d x +
limits(integral)_(2 pi)^(a + 2 pi) f(x) d x.
$

Сделаем в последнем интеграле замену, положив $x = t + 2 pi$,

$
limits(integral)_(2 pi)^(a + 2 pi) f(x) d x = limits(integral)_0^a f(t + 2 pi) d t = - limits(integral)_a^0 f(t) d t.
$

Тогда 

$
limits(integral)_a^(a + 2 pi) f(x) d x = limits(integral)_0^(2 pi) f(x) d x.
$

#styled_qed()
