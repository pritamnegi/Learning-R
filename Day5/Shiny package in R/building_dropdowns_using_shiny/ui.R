library(shiny)

fluidPage(
  titlePanel("Demonstration of dropdown widget"),
  sidebarLayout(
    sidebarPanel(
      selectInput("state", "Select the state:", choices = c("Maharashtra", "Uttarakhand","Bihar","Kerala"), selected = "Maharashtra", multiple = TRUE)
    
  ), 
  mainPanel(
    textOutput('mystate')
  )
  
  )
)