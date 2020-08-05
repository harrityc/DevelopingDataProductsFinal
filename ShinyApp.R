library(shiny)
ui <- fluidPage(
titlePanel("2x2 Table Proportion Testing: 
           Automatic Chi-Squared/Fisher Selection"),  
numericInput(inputId = "w", "Group 1 Successes", value = 10),
numericInput(inputId = "x", "Group 1 Failures", value = 10),
numericInput(inputId = "y", "Group 2 Successes", value = 10),
numericInput(inputId = "z", "Group 2 Failures", value = 10),
verbatimTextOutput(outputId = "chi")
)

server <- function(input, output) {
  output$chi <- renderPrint({
    if(input$w<10|input$x<10|input$y<10|input$z<10){
    fisher.test(matrix(c(input$w,input$x,input$y,input$z), 
             nrow = 2, ncol = 2))
  } else {
    chisq.test(matrix(c(input$w,input$x,input$y,input$z), 
           nrow = 2, ncol = 2))
  }
})
}
shinyApp(ui = ui, server = server)