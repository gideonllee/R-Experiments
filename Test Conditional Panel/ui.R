library(shiny)

ui <- function(input,output,session){
  fluidPage(
    titlePanel("Test Conditional Output"),
    sidebarLayout(
      sidebarPanel(width=3,
                   h3("Input Number of Panels"),
                   sliderInput("numPanels","Number of Panels: ",
                               min = 0,max = 5, value = 3,step = 1)
      ),
      mainPanel(
        h3("Conditional Panels Go Here"),
        verbatimTextOutput("testText"),
        # UI output
        
        uiOutput("TestConditionalPanel")
        
      )
    )
  )
}