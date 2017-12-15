library(shiny)


fluidPage(
  titlePanel("Demonstration of text widget"),
  sidebarLayout(
    sidebarPanel(
      'Enter the Personal Information',
      textInput("Name", "Enter your name", value = ""),
      textInput("Age", "Enter your Age", value=""),
      radioButtons("Gender", "Select your Gender", list("Male", "Female"), "")
      
      
    ),
    
    
    
    mainPanel('Personal Information',
              textOutput('myname'),
              textOutput('myage'),
              textOutput('mygender')
              
    )
    
  )
  
)
