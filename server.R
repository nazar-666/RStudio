library(shiny)
shinyServer(
  function(input, output) {
    output$func<-renderText({
      input$start
      if (input$num3 >= 0) {
        paste0('Функція: ',input$num1,'a', input$num2,'b + ',input$num3)
      }else if (input$num2 >= 0) {
        paste0('Функція: ',input$num1,'a + ', input$num2,'b ',input$num3)
      }else if (input$num3 >= 0 && input$num2 >= 0) {
        paste0('Функція: ',input$num1,'a + ', input$num2,'b + ',input$num3)
      }
      else
        paste0('Функція: ',input$num1,'a ', input$num2,'b ',input$num3)
    })
    output$dyscr<- renderText({
      paste0('Дискримінант = ',(input$num2*input$num2 - 4*input$num1*input$num3))
    }) 
    output$first<- renderText({
      paste0('X1 = ',((input$num2-2*input$num2)+sqrt(input$num2*input$num2 - 4*input$num1*input$num3))/(2*input$num1))
    })
    output$second<- renderText({
      paste0('X2 = ',((input$num2-2*input$num2)-sqrt(input$num2*input$num2 - 4*input$num1*input$num3))/(2*input$num1))
    })
  }
)