library(shiny)

fluidPage(
  titlePanel("Demonstration of a slider"),
  sidebarLayout(
    sidebarPanel(
     #sliderInput
    
      sliderInput("slide","Select the value ", min = 0, max=100, value = 2, animate=TRUE, step = 0.2)
      
      
      
    ),
    mainPanel(
      
      textOutput('myslide')
    )
  )
)