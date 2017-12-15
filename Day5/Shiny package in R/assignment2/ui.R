library(shiny)

fluidPage(
  titlePanel(h1("censusVis")),
  sidebarLayout(
    sidebarPanel(
      p("Create demographic maps with information from the 2010 US Census"),
      selectInput("percent", "Choose a variable to display", choices = c("Percent White", "Percent Black", "Percent Hispan", "Percent Asian"), selected="Percent White"),
      
      sliderInput("range", "Range of Interest", value=c(0,100), min=0, max=100)
    ),
    mainPanel(
      
    )
  )
)
