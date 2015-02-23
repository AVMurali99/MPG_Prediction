library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predicting Miles per gallon (MPG) for cars using their weight, 
              number of cylinders and the transmission type"),
  sidebarPanel(
      h3("Select the following and click submit"),
      h4('Select the weight(in 1000 lbs) of the car:'),
      sliderInput("wt", label= NULL, min = 1, max = 5, value = 1, step = 0.1),
      h4(' '),
      h4('Select the number of cylinders in the car:'),
      radioButtons("cyl",label= NULL, c("4 Cyl" = "4", "6 Cyl" = "6","8 Cyl" = "8")),
      h4(' '),
      h4('Select the type of transmission:'),
      radioButtons("am",label= NULL, c("Auto" = "Auto", "Manual" = "Manual")),
      actionButton(inputId = "go",label = "Submit")
      ),
  mainPanel(
            p('This application predicts the expected miles per gallon (MPG) for
              cars given thier weight, transmission type and number of cylinders.
              This prediction is based on a linear regression model developed
              using the "mtcars" dataset in R'),
            h3('The values you entered are:'),
            h4('Weight (in 1000 lbs)'),
            verbatimTextOutput("owt"),
            h4('Number of Cylinders'),
            verbatimTextOutput("ocyl"),
            h4('Transmission type'),
            verbatimTextOutput("oam"),
            h2('Based on your input values, the expected MPG for this car is:'),
            verbatimTextOutput("ompg")
            )
  
    
  ))