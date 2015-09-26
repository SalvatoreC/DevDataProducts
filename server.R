library(shiny)

myFunction <- function(inweight, incylinders) {
  
  data(mtcars)

  if(incylinders == "not specified") {
    
    prediction <- round(predict(lm(mpg ~ wt, data = mtcars),data.frame(wt=inweight))[[1]],1)
    
    return(prediction)
  }
  
  else {
    
    prediction <- round(
                    predict(
                      lm(mpg ~ wt, data = mtcars[mtcars$cyl == as.numeric(incylinders),]),
                        data.frame(wt=inweight)
                      )[[1]],
                    1)
    
    return(prediction)
  }
  
}

shinyServer(
  function(input, output) {
    
    output$outweight <- renderPrint(input$inweight)
    
    output$outcylinders <- renderPrint(input$incylinders)
    
    output$prediction <- renderPrint(myFunction(input$inweight, input$incylinders))
    
  }
  
  )
  