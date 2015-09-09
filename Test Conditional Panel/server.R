library(shiny)

server <- function(input,output,session){
  
  
  observe({
    
    output$testText <- renderPrint(input$numPanels)
    print(input$numPanels)
    print(class(input$numPanels))
    
    
    lapply(1:input$numPanels, function(i) {
      output[[paste0('b', i)]] <- renderUI({
        fluidRow(
          column(4,
                 wellPanel(
                   strong(paste0('Plan Number ', i)),
                   p("This is a test of conditional plan.")
                   
                 )),
          column(4,
                 wellPanel(
                   strong(paste0('Plan Number ', i)),
                   p("This is a test of conditional plan.")
                 )),
          column(4,
                 wellPanel(
                   strong(paste0('Plan Number ', i)),
                   p("This is a test of conditional plan.")
                 ))
        )
      })
    })
    
    output$TestConditionalPanel <- renderUI({
      conditionalPanel(
        condition = "input.numPanels > 0",
        lapply(1:input$numPanels, function(i) {
          uiOutput(paste0('b', i))
        })
      )
    })
    
  })
}