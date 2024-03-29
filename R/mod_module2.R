#' module2 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_module2_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("another plot"),
    plotOutput(ns("plot"))
  )
}
    
#' module2 Server Functions
#'
#' @noRd 
mod_module2_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$plot <- renderPlot({
      plot(airquality)
    })
  })
}
    
## To be copied in the UI
# mod_module2_ui("module2_ui_1")
    
## To be copied in the server
# mod_module2_server("module2_ui_1")
