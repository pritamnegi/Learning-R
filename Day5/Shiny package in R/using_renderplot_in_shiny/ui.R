library(shiny)

fluidPage(
  titlePanel(h3("Plotting iris dataset using render plot function", align="center")),
  sidebarLayout(
    sidebarPanel(
      selectInput("var", "Select the variable name from iris data set", choices = c("Sepal.Length"=1, "Sepal.Width"=2, "Petal.Length"=3, "Petal.Width"=4)),
      br(),
      sliderInput("slide", "Select the beans number", min=1, max=150, value=30),
      radioButtons("color", "Select the color", list("Green", "Red", "Yellow"))
      
      
      
    ),
    mainPanel(
      plotOutput('myhist')
      
    )
    
  )
  
)