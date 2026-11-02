#import "conf.typ" : conf
// #import "@preview/cetz:0.2.2"
#import "@preview/plotst:0.2.0": *
#import "@preview/fletcher:0.4.5" as fletcher: diagram, node, edge

#show: conf.with(
  title: [Коллоквиум по математическому анализу, 3 семестр],
  type: "referat",
  info: (
      author: (
        name: [Смирнова Егора, Архипова Ивана, Леонтьева Михаила, Тюменцева Радомира, Афанасьева Дмитрия],
        faculty: [КНиИТ],
        group: "251",
        sex: "plural"
      ),
      inspector: (
        degree: "",
        name: ""
      )
  ),
  settings: (
    title_page: (
      enabled: true
    ),
    contents_page: (
      enabled: true
    )
  )
)

#set page(
    paper: "a4",
    margin: (
      top: 2cm,
      bottom: 2cm,
      left: 2.5cm,
      right: 1cm
    )
  )
#set par(
    hanging-indent: -1cm,
    justify: true
  )
#set text(lang: "ru")
#set figure(supplement: "Рис.")

#for i in range(1, 21) {
  if i < 10 {
    include "questions/0" + str(i) + ".typ"
  } else {
    include "questions/" + str(i) + ".typ"
  }
}
