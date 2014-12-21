library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Motor Trend Data"),
    sidebarPanel(
      h3("Background"),
      p('The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).'),
      p('Select the number of cylinders or the maximum Horse Power to estimate the corresponding average Miles/Gallon'),
      
      h3("Enter the data"),
      
      radioButtons("cyl", "# of cylinders:",
                   c("4" = "4",
                     "6" = "6",
                     "8" = "8")),
      
      numericInput('horse', 'Horse Power input: ', 140, min = 70, max = 250, step = 10)			   
    ),
    mainPanel(
      h4("Miles/(US) gallon"),
      verbatimTextOutput("mpgId")
    )
  ))