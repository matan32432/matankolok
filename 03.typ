= Вопрос 3. Поверхностный интеграл второго рода и его свойства

== Поверхностный интеграл второго рода

Пусть $Phi$ --- гладкая поверхность с параметрическим представлением $overline(r) = overline(r)(u,v) = lr((x(u,v), y(u,v), z(u,v)), size: #125%), (u,v) in D$, и на поверхности $Phi$ заданы функции $P(x,y,z), " " Q(x,y,z), " " R(x,y,z)$.

Определим *поверхностные интегралы второго рода*:

$
limits(integral.double)_Phi P(x,y,z) d y d z := limits(integral.double)_D P lr((x(u,v),y(u,v),z(u,v)), size: #125%) A(u,v) d u d v,
$

$
limits(integral.double)_Phi Q(x,y,z) d z d x := limits(integral.double)_D Q lr((x(u,v),y(u,v),z(u,v)), size: #125%) B(u,v) d u d v,
$

$
limits(integral.double)_Phi R(x,y,z) d x d y := limits(integral.double)_D R lr((x(u,v),y(u,v),z(u,v)), size: #125%) C(u,v) d u d v,
$

или 

$
limits(integral.double)_Phi P(x,y,z) d y d z + Q(x,y,z) d z d x + R(x,y,z) d x d y :=\
= limits(integral.double)_D lr((P lr((x(u,v),y(u,v),z(u,v)), size: #125%) A(u,v) +\ 
+ Q lr((x(u,v),y(u,v),z(u,v)), size: #125%) B(u,v) +\
+ R lr((x(u,v),y(u,v),z(u,v)), size: #125%) C(u,v)), size: #150% )  d u d v
$

== Свойства поверхностного интеграла второго рода

На примере интеграла $limits(integral.double)_Phi R(x,y,z) d x d y$ сформулируем основные свойства поверхностного интеграла второго рода:

1. При изменении стороны поверхности (при смене ориентации поверхности) интеграл меняет знак.

2. Интеграл обладает свойством линейности:

$
limits(integral.double)_Phi limits(sum)_(j = 1)^m a_j R_j (x,y,z) d x d y = limits(sum)_(j = 1)^m a_j limits(integral.double)_Phi R_j (x,y,z) d x d y.
$

3. Если поверхность $Phi$ разбита на конечное число частей $Phi_k subset Phi$, $k = 1,...,N$, не имеющих общих внутренних точек, то

$ limits(integral.double)_Phi R(x,y,z) d x d y = limits(sum)_(k = 1)^N limits(integral.double)_(Phi_k) R(x,y,z) d x d y. $

4. Интеграл

$ limits(integral.double)_Phi R(x,y,z) d x d y $

по цилиндрической поверхности $Phi$ с образующей, параллельной оси $O z$, равен нулю.
