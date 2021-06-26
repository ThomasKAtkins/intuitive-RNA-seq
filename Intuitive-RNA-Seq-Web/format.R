format <- tabPanel("Format",
h1("Format"),
p("In order for the app to work, the data must be formatted in the following way:"),
tags$ul(
  tags$li("The data must be formatted as a .csv file."),
  tags$li("The first row of the .csv file must be a header row."),
  tags$li("One column must have header \"Gene\" and contain the names of all the genes."),
  tags$li("Our model accepts raw counts, and may not perform as expected given other data."),
  tags$li("The times are assumed to be linearly spaced apart from each other in the order of the columns.")
  ),
p("Here is an example file."),
tableOutput("example_dataset")
)