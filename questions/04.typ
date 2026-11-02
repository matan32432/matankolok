#import "functions.typ": *
= Вопрос 4. Формула Стокса 

== Формула Стокса

*Теорема (формула Стокса).* _Пусть в некоторой области $G$, целиком содержащей дважды непрерывно дифференцируемую поверхность $Phi$, заданы непрерывно дифференцируемые функции $P, Q, R$._

_Тогда, если ориентация $Phi$ и $L = partial Phi$ согласованы по "правилу штопора", то имеет место формула_


$
limits(integral.cont)_L P d x + Q d y + R d z =\
= limits(integral.double)_Ф (#pd(R, y) - #pd(Q, z)) d y d z + (#pd(P, z) - #pd(R, x)) d z d x + (#pd(Q, x) - #pd(P, y)) d x d y.
$<Stokes>

*Доказательство*. Докажем, что

$
limits(integral.cont)_L P d x = limits(integral.double)_Phi #pd(P, z) d z d x - #pd(P, y) d x d y.
$ 

Преобразуем криволинейный интеграл второго рода в левой части равенства. Пусть контур $partial D$ задан параметрическими уравнениями $u = u(t)$, $v = v(t)$, $t in T = [t_1, t_2]$.

Тогда параметрические уравнения, задающие контур $L$, имеют вид $x = x(u(t), v(t))$, $y = y(u(t), v(t))$, $z = z(u(t), v(t))$, $t in T$.

В соответствии с формулами для вычисления криволинейного интеграла второго рода имеем: 


$
limits(integral.cont)_L P d x = limits(integral)_(t_1)^(t_2) P (dxu u^prime (t) + dxv v^prime (t)) d t =\
= limits(integral.cont)_(L^*) P (x(u,v),y(u,v),z(u,v))(dxu d u + dxv d v).
$

Применим формулу Грина:

$
limits(integral.cont)_(L^*) P dxu d u + P dxv d v = limits(integral.double)_D
lr((#pd("", u) (P dxv) - #pd("", v) (P dxu)), size: #125%) d u d v =\
= limits(integral.double)_D ((dPx dxu + dPy dyu + dPz dzu) dxv + P (partial^2 x)/(partial u partial v)) d u d v -\
- limits(integral.double)_D ((dPx dxv + dPy dyv + dPz dzv) dxu + P (partial^2 x)/(partial v partial u)) d u d v =\
= limits(integral.double)_D dPz (dzu dxv - dzv dxu) d u d v - limits(integral.double)_D dPy (dxu dyv - dxv dyu) d u d v =\
= limits(integral.double)_D (dPz B - dPy C) d u d v = limits(integral.double)_Phi dPz d z d x - dPy d x d y.
$

Аналогично доказываются равенства

$
limits(integral.cont)_L Q d y = limits(integral.double)_Phi #pd(Q, x) d x d y - #pd(Q, z) d y d z,
$ 

$
limits(integral.cont)_L R d x = limits(integral.double)_Phi #pd(R, y) d y d z - #pd(R, x) d z d x.
$ 

Складывая доказанные равенства, получим равенство (@Stokes). #styled_qed()

Формулу Стокса можно переписать в более удобной для запоминания форме:

$
limits(integral.cont)_L P d x + Q d y + R d z = limits(integral.double)_Phi 
mat(cos alpha, cos beta, cos gamma; partial / (partial x), partial / (partial y), partial / (partial z); P, Q, R; delim: "|")
$

