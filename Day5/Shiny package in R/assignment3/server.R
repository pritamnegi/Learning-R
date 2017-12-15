library(shiny)

function(input,output){
  output$myplot<- renderPlot(
    plot(head(cars,input$nrows))
  )
  
output$mytable<-renderTable(
  head(cars,input$nrows)
  )
}