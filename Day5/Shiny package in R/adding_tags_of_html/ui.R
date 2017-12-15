library(shiny)

fluidPage(
  tags$div(
    h1("Hello Shiny"),
    br(),
    p(strong("Bold Font"), em("Italic Font")),
    a(href="https://www.google.com", "Go to Google"),
    HTML('
      <p>
      <label>A numeric input</label>
      <input type="number", value="7", min="1", max="30"> ')
    
  ))