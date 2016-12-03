library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Обчислення коефіцієнтів квадратного рівняння"),
  sidebarPanel(
    h3('Введіть коефіцієнти'),
    numericInput("num1", label = h5("Перший"), value = 4),
    numericInput("num2", label = h5("Другий"), value = 3),
    numericInput("num3", label = h5("Третій"), value = -1),
    actionButton("start", "Обрахувати")
  ),
  mainPanel(
    h3('Обчислення'),
    textOutput("func"),
    textOutput("dyscr"),
    textOutput("first"),
    textOutput("second"),
    plotOutput('plot', width = "300px", height = "300px")
  )))