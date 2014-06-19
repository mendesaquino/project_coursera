## ui.R file ##

#install.packages("shiny")
library("shiny")
shinyUI(pageWithSidebar(
  headerPanel("Calculating number of days between two dates"),
  sidebarPanel(
    dateInput("date1", "Start Date:"), #start date
    dateInput("date2", "End Date:") #end date
  ),
  mainPanel(
    h3('Results'),
    h4('You entered as start date:'),
    verbatimTextOutput("odate1"), #display start date
    h4('You entered as end date:'),
    verbatimTextOutput("odate2"), #display end date
    h4('The number of days between those two dates is:'),
    verbatimTextOutput("days") #display number of days betweeen start and and dates
  )
))

