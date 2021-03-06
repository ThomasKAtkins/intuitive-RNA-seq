#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source('mainpage.R')
source('format.R')
source('about.R')

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  navbarPage(
    "Intuitive RNA-Seq",
        mainpage,
        format,
        about
    )
))
