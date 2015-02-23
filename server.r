library(shiny)


shinyServer(
  function(input, output){
#     if (input$go >0 1) {
#     output$owt = renderPrint({input$wt})
#     output$ocyl = renderPrint({input$cyl})
#     output$oam = renderPrint({input$am})
    output$ompg = renderPrint({
      if (input$go > 0 ) {
        output$owt = renderPrint({input$wt})
        output$ocyl = renderPrint({input$cyl})
        output$oam = renderPrint({input$am})
        if (input$am == "Auto") { trans <- 0}
        else { trans <- 1}
        wt = as.numeric(input$wt)
        cyl = as.numeric(input$cyl)
        prediction = (39.42-(3.12*wt)+(0.17*trans)-
                         (1.51*cyl))
        isolate(prediction)
    }
    })
  }
  )