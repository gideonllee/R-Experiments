library(shiny)
library(leaflet)
library(RColorBrewer)


ui <- bootstrapPage(
#    tags$style(type = "text/css", "html, body {width:100%;height:100%}"),
    tags$head(
      # Include our custom CSS
      includeCSS("styles.css")
    ),
    leafletOutput("map", width = "100%", height = "100%"),
    absolutePanel(id="controls",bottom = 10, left = 10, draggable=TRUE,
                  sliderInput("range", "Magnitudes", min(quakes$mag), max(quakes$mag),
                              value = range(quakes$mag), step = 0.1
                  ),
                  selectInput("colors", "Color Scheme",
                              rownames(subset(brewer.pal.info, category %in% c("seq", "div")))
                  ),
                  checkboxInput("legend", "Show legend", TRUE)
    )
  )

source("testserver.R")

runApp(shinyApp(ui,server))