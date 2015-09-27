library(shiny)

mpg <- function(x,y) {
        
        data <- mtcars
        
        
        tmp <- data[data$cyl == x   , ]
        
        
        tmp <- data[data$cyl == x &
                            data$wt <= y, ]
        
        
        out <- mean(tmp$mpg)
        return (out)
}


shinyServer(
        function(input, output) {
                output$mpgId <- renderPrint(mpg(input$cyl, input$wt))
        }
)