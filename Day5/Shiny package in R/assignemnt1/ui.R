library(shiny)

fluidPage(
  titlePanel("Calculation of Area of Circle"),
  sidebarLayout(
    sidebarPanel(
      numericInput("radius", "Enter the radius of circle", value=0)
      
      
    ),
    mainPanel(
      
      textOutput('area')
    )
  )
)
