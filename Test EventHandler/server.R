library(shiny)

testfunction <- function(value1,value2){
  return(value1 + value2)
}

server <- function(input,output){
  
  values <- reactiveValues()
#   
#     observe({
#       input$runcalculation
#       isolate({
#         values$slider1 <- input$slider1
#         values$slider2 <- input$slider2
#         value3 <- testfunction(values$slider1,values$slider2)
#         output$answer <- renderText(paste(value3,"=",values$slider1,"+",values$slider2))
#       })
#     })
#     
    observeEvent(
      eventExpr = {input$runcalculation},
      handlerExpr = {
        values$slider1 <- input$slider1
        values$slider2 <- input$slider2
        value3 <- testfunction(values$slider1,values$slider2)
        output$answer <- renderText(paste(value3,"=",values$slider1,"+",values$slider2))
      }
    )
}