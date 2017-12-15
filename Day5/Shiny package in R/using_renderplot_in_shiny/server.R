library(shiny)

function(input,output){
  output$myhist<-renderPlot({
  colm<-as.numeric(input$var)
#hist(colm,breaks = seq(0,max(iris[,colm])),l=input$slide+1)
  hist(iris[,colm],breaks = seq(0,max(iris[,colm]), l=input$slide+1),col=input$color, main="Histogram of Iris Dataset", xlab=names(iris[colm]))
  })
  
  }