library(shiny)

shinyUI(
    
    pageWithSidebar(
    
        headerPanel("Simple Visual Probability Distributions Comparator"),
    
        sidebarPanel(
            h3('Settings for Normal Distribution:'),
            numericInput('meanNorm', 'Choose Mean', 0, min = -10, max = 10, step = 0.1),
            sliderInput('sdNorm', 'Choose Standard Deviation', 1, min = 0, max = 10, step = 0.1),
            h3('Settings for Student t Distribution:'),
            sliderInput('dfT', 'Choose Degrees of Freedom', 5, min = 1, max = 50, step = 1),
            sliderInput('ncpT', 'Choose Non-Centrality Parameter Delta', 5, min = 0, max = 30, step = 0.1),
            h3('Settings for Chi-Squared Distribution:'),
            sliderInput('dfChi', 'Choose Degrees of Freedom', 5, min = 1, max = 50, step = 1),
            sliderInput('ncpChi', 'Choose Non-Centrality Parameter', 1, min = 0, max = 30, step = 0.1)
        ),
    
        mainPanel(
            h2('Normal Distribution'),
            plotOutput('normDist'),
            h2('Student t Distribution'),
            plotOutput('tDist'),
            h2('Chi-Squared Distribution'),
            plotOutput('chiDist')
        )
    )
)