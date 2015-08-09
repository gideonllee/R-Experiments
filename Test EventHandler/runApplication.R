library(shiny)

source("ui.R")
source("server.R")
app <- shinyApp(ui,server)
runApp(app)
showReactLog 