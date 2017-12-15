library(shiny)

fluidPage(
  titlePanel(title = "Hello World"),
  sidebarLayout(position="right",
                sidebarPanel(h4("this is fourth level sidepanel"),
                             h5("this is fifth level sidepanel")
                ),
                mainPanel(
                  img(src="rstudio.png", height=140, width=140)
                  
                )
  )
  
)

