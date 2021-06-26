mainpage <- tabPanel("Home",
  
  # Sidebar where the user can input their files as well as their different parameters
  sidebarLayout(
    sidebarPanel(
      selectInput("sample_number", 
                  label = "Data Type",
                  choices = c("One Sample", "Two Sample"),
                  selected = "One Sample"),
      
      conditionalPanel(
        condition = "input.sample_number == \"One Sample\"",
        fileInput("input_csv", h3("Input a .csv file"), accept=c("txt/csv", "text/comma-separated-values,text/plain", ".csv")),
      ),
      conditionalPanel(
        condition = "input.sample_number == \"Two Sample\"",
        fileInput("input_csv_control", h3("Input a Control .csv file"), accept=c("txt/csv", "text/comma-separated-values,text/plain", ".csv")),
        fileInput("input_csv_experimental", h3("Input an Experimental .csv file"), accept=c("txt/csv", "text/comma-separated-values,text/plain", ".csv")),
      ),
      textAreaInput("interest_genes", "Genes of Interest (seperated by line breaks)"),
      actionButton("run", "Submit")
    ),
    
    #This is where the main output goes
    mainPanel(
      tableOutput("dataset_output"),
      textOutput("genes_of_interest")
    )
  )
)