#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {

    #outputs the head of the dataset
    output$dataset_output <- renderTable({
        req(input$input_csv)
        
        print(input$input_csv$datapath)
        head(read.csv(input$input_csv$datapath))
    })
    
    #outputs the head of the dataset
    output$genes_of_interest <- renderText({
        req(input$interest_genes)
        paste(strsplit(input$interest_genes, "\n"))
    })

})
