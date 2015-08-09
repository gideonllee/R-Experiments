library(shiny)

ui <- function(input,output){
  fluidPage(
    titlePanel("Test Reactivity"),
  sidebarLayout(
    sidebarPanel(
    ),
    mainPanel(
      wellPanel(
        verbatimTextOutput("answer")
      )
      
    )
  )
  )
}