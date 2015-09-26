library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel(
    h1("Fuel Consumption Prediction") # headerPanel sembra prendere solo il primo argomento
  ),
  
  sidebarPanel(
    h2('Data Input'),
    h4('enter here your data'),
    
    sliderInput(
      'inweight',
      'car weight (lb/1000)',
      
      value = 3.5, #default value
      
      min = 1.0, # minimum
      max = 6.0, # maximum
      step = 0.1 # step
    ),
    
    # enter number of cylinders
    
    
    radioButtons(
      'incylinders',
      'number of cylinders',
      c('doesn\'t matter' = 'not specified',
        '4' = '4',
        '6' = '6',
        '8' = '8'),
      selected = 'not specified',
      inline = FALSE
    ),
    
    submitButton('go!') # run calculation
    
  ),
  
  mainPanel(
    h3('Quick User Instructions'),
    p('This application allows you to predict how many miles your car can 
       run per US/gallon by using weight and number of cylinders as predictors.
       It is based on the mtcars database in R and on a very simple linear 
       regression model. Enter your data in the Data Input panel on the left, 
       click on the go! button to submit, and then look at the prediction 
       result in the Data Output panel below. Enjoy it!'),

    h2('Data Output'),
    h4('find here your inputted data'),
    
    p('car weight (lb/1000):'),
    verbatimTextOutput('outweight'),
    
    p('number of cylinders: '),
    verbatimTextOutput('outcylinders'),

    
    h3('find here the calculated prediction'),
    
    p('your car should run the following number of miles / (US) gallon:'),
    verbatimTextOutput('prediction')
    
  )
  
))
