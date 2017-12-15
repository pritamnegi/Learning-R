library(shiny)

function(input, output){
  output$myage<- renderText(input$Age)
  output$myname<- renderText(input$Name)
  output$mygender<- renderText(input$Gender)
  
}