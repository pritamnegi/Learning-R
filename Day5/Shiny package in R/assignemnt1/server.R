library(shiny)

function(input,output){
  
  output$area<- renderText(paste("Area of circle is:",pi*input$radius*input$radius))

}