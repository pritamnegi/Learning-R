library(shiny)

fluidPage(
  titlePanel(h1("Assignment 3")),
  sidebarLayout(
    sidebarPanel(
      sliderInput("nrows", "Number of Rows:",value=20.3, min=1, max=50)           
  ),
    mainPanel(
      plotOutput('myplot'),
      
      tableOutput('mytable')
    )
  )
)
