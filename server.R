library(shiny)


shinyServer(
    function(input, output) {
 
        
        output$normDist <- renderPlot({
            x   <- seq(-20,20,length=1000)
            y   <- dnorm(x, mean = input$meanNorm, sd = input$sdNorm)
            plot(x,y, type="l", lwd=1)
        })
        
        output$tDist <- renderPlot({
            x   <- seq(-20,20,length=1000)
            y   <- dt(x, df = input$dfT, ncp = input$ncpT)
            plot(x,y, type="l", lwd=1)
        })
        
        output$chiDist <- renderPlot({
            x   <- seq(-20,20,length=1000)
            y   <- dchisq(x, df = input$dfChi, ncp = input$ncpChi)
            plot(x,y, type="l", lwd=1)
        })
    }
)