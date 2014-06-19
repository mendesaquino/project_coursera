## server.R file ##

#server.r
library(shiny)
shinyServer(
  function(input, output){
    output$odate1 <- renderPrint({input$date1}) #start date selected by user
    output$odate2 <- renderPrint({input$date2}) #end date selected by user
    output$days <- renderPrint({input$date2-input$date1}) #calculated difference in days
  }
)
