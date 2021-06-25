#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Intuitive RNA-Seq Web Interface"),

    # Sidebar where the user can input their files as well as their different parameters
    sidebarLayout(
        sidebarPanel(
            fileInput("input_csv", h3("Input a .csv file")),
            textAreaInput("interest_genes", "Genes of Interest (seperated by line breaks)"),
            actionButton("newplot", "Submit")
        ),

        #This is where the main output goes
        mainPanel(
            tableOutput("dataset_output"),
            textOutput("genes_of_interest")
        )
    )
))
