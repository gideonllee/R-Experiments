library(shiny)

ui <- function(input,output){
  fluidPage(
    titlePanel("Test Reactivity"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slider1", "Slider 1", 
                  min=1, max=100, value=30),
      sliderInput("slider2", "Slider 2", 
                  min=1, max=100, value=30),
      actionButton("runcalculation","Run Calculation")
    ),
    mainPanel(
      wellPanel(
        verbatimTextOutput("answer")
      )
      
    )
  )
  )
}