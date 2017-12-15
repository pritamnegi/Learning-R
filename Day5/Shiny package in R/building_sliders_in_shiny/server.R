library(shiny)

function(input,output){
  
  output$myslide<- renderText(paste("You have selected value as:",input$slide))
    
}