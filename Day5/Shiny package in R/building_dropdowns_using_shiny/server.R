library(shiny)

function(input,output){
  output$mystate<-renderText(paste("Selected state is:", input$state))
  
  }

