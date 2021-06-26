#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)

shinyServer(function(input, output) {

    output$dataset_output <- renderTable({
        table_reactive()
    })
    
    table_reactive <- eventReactive( input$run, {
        req(input$input_csv)
        dataset <- read.csv(input$input_csv$datapath)
        dataset %>% filter(GeneID %in% strsplit(input$interest_genes, "\n")[[1]])
    })
    
    #outputs the head of the dataset
    output$genes_of_interest <- renderText({
        genes_reactive()
    })
    
    genes_reactive <- eventReactive( input$run, {
        req(input$interest_genes)
        paste(strsplit(input$interest_genes, "\n"))
    })


})
