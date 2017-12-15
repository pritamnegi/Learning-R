library(shiny)

fluidPage(
  titlePanel("Assigning tags in sidebar layout"),
  sidebarLayout(
    sidebarPanel(
      HTML('
           <p>
           <label>A numeric input</label>
           <input type="number", value="7", min="1", max="30"> 
           ')),
    
    mainPanel(
      p(strong("Bold Font"), em("Italic Font")),
      a(href="https://www.google.com", 'Go to Google')
    )  
    )
    
    
  )
  
  
