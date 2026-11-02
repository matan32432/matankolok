// ============================================================
// Объединённый файл ВСЕХ билетов (вопросы 1-20) для удобной печати
// Компиляция:  typst compile print_all.typ  ->  print_all.pdf
// ============================================================
#import "conf.typ" : conf

#show: conf.with(
  title: [Коллоквиум по математическому анализу, 3 семестр — Все билеты],
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

// Каждый билет начинается с новой страницы
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}

#for i in range(1, 21) {
  if i < 10 {
    include "0" + str(i) + ".typ"
  } else {
    include str(i) + ".typ"
  }
}
