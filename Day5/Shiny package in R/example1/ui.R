library(shiny)

fluidPage(
  titlePanel(title = "Hello World"),
  sidebarLayout(position="right",
    sidebarPanel(h4("this is fourth level sidepanel"),
                 h5("this is fifth level sidepanel")
    ),
    mainPanel(
      h1("First level title"),
      h2("Second level title"),
      h3("Third level title"),
      h4("Fourth level title"),
      h5("Fifth level title"),
      h6("Sixth level title"),
      p("p creates a paragraph of text"),
      strong("Strong creates bold text"),
      em("em creates a italic text"),
      br(),
      code("code displays your text similar to computer code"),
      p("span does the same thing as div", span("groups of words")),

      img(src="rstudio.png", height=140, width=400)
      
      
      
      
    )
  )
  
)