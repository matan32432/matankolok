// Функции для быстрого набора частных производных
#let to-math(x) = {
  if type(x) == str {
    math.equation(eval(x, mode: "math"), block: false)
  } else {
    math.equation(x, block: false)
  }
}

#let DirichletKernel(var) = {
  let Var = to-math(var)

  $ (sin (2 n + 1)/2 #Var)/(2 sin #Var/2) $
}

#let pd(func, var) = {
  let F = to-math(func)
  let V = to-math(var)
  $ (partial #F) / (partial #V) $
}

#let styled_qed() = {
  [#h(1fr) $qed$]
}


#let x = "x"
#let y = "y"
#let z = "z"
#let P = "P"
#let Q = "Q"
#let R = "R"
#let u = "u"
#let v = "v"
#let t = "t"

#let dxu = pd(x, u)
#let dxv = pd(x, v)

#let dyu = pd(y, u)
#let dyv = pd(y, v)

#let dzu = pd(z, u)
#let dzv = pd(z, v)

#let dPx = pd(P, x)
#let dPy = pd(P, y)
#let dPz = pd(P, z)

