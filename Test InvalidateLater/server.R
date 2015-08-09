library(shiny)

testfunction <- function(value1,value2){
  return(value1 + value2)
}

server <- function(input,output){
  
  values <- reactiveValues()
  
  observe({
    invalidateLater(millis = 1000,NULL)
    values$time <- Sys.time()
    output$answer <- renderText(paste("The current time is:",values$time))
  })
  
#   observeEvent(
#     eventExpr={invalidateLater(millis = 1000,NULL)},
#     handlerExpr={
#       values$time <- Sys.time()
#       output$answer <- renderText(paste("The current time is:",values$time))
#     }
#   )
  
}