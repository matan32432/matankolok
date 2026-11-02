#import "../functions.typ": *
= Вопрос 5. Формула Остроградского--Гаусса

== Формула Остроградского--Гаусса

*Теорема (формула Остроградского--Гаусса).*

_Пусть $V$ --- простая замкнутая область, граница $Phi$ которой положительно ориентирована. Если функции_ $P(x,y,z), Q(x,y,z), R(x,y,z)$ _непрерывно дифференцируемы на V, то справедлива формула_ 

$
limits(integral.double)_Ф P(x,y,z) d y d z + Q(x,y,z) d z d x + R(x,y,z) d x d y =\
= limits(integral.triple)_V (pd(P, x) + pd(Q, y) + pd(R, z)) d x d y d z
$

_Это равенство называется формулой Остроградского--Гаусса_.

*Доказательство.* Формула распадается на три самостоятельных равенства для функций $P$, $Q$ и $R$. Эти равенства доказываются схожим образом. Докажем одно из них, например:

$
limits(integral.double)_(Phi) R(x, y, z) d x d y = limits(integral.triple)_(V) #pd(R, z) d x d y d z.
$

Докажем это равенство для замкнутой области $V$, являющейся правильной в направлении оси $O z$. По правилу вычисления тройного интеграла имеем 

$
limits(integral.triple)_(V) #pd(R, z) d x d y d z = limits(integral.double)_(D_(x y)) d x d y limits(integral)_(phi_1(x, y))^(phi_2(x, y))
#pd(R, z) d z  =\
= limits(integral.double)_(D_(x y)) R(x, y, phi_2(x, y)) d x d y - limits(integral.double)_(D_(x y)) R(x, y, phi_1(x, y)) d x d y =\
= limits(integral.double)_(Phi_2) R d x d y + limits(integral.double)_(Phi_1) R d x d y + limits(integral.double)_(Phi_3) R d x d y =
limits(integral.double)_Phi R d x d y.
$

Мы учли, что для поверхности $Phi_2$ нужно брать верхнюю сторону, а для поверхности $Phi_1$ --- нижнюю. К этим интегралам добавили равный нулю поверхностный интеграл по внешней стороне боковой цилиндрической поверхности $Phi_3$ с образующей, параллельной оси $O z$.

Далее, простую область $V$ разобьём на частичные, правильные в направлении оси $O z$ области $V_k$, $k = 1, dots, m$, ограниченные кусочно-гладкими поверхностями $Phi_k$. В силу доказанного имеем

$
limits(integral.double)_(Phi_k) R (x, y, z) d x d y = limits(integral.triple)_(V_k) #pd(R, z) d x d y d z, k = 1, dots, m.
$

Просуммировав эти равенства, получим

$
limits(sum)_(k = 1)^m limits(integral.double)_(Phi_k) R(x, y, z) d x d y = limits(sum)_(k = 1)^m limits(integral.triple)_(V_k) #pd(R, z) d x d y d z =
limits(integral.triple)_V #pd(R, z) d x d y d z.
$

Сумма в левой части равенства равна интегралу по поверхности $Phi$, так как по частям границ $Phi_k$ частичных областей $V_k$, не входящих в поверхность $Phi$, интегрирование проводится дважды с выбором противоположных сторон поверхности, а такие интегралы взаимно сокращаются. #styled_qed()
