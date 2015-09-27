library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel("Find Miles Per Gallon"),
                sidebarPanel(
                        h4('Find MPGs using Weight and cylinders'),
                        p('Select he number of cylinders and /or weight of the car - measured in lb/1000 starting at 1.5 to 5.4'),
                                                
                        radioButtons("cyl", "Number of cylinders:",
                                     c("4" = "4",
                                       "6" = "6",
                                       "8" = "8")),
                        
                        numericInput('wt', 'Weight input: ', 2.5, min = 1.5, max = 5.4, step = .1)			   
                ),
                mainPanel(
                        h4("Miles/(US) gallon"),
                        verbatimTextOutput("mpgId")
                )
        ))