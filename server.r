library(UsingR)
data(cars)

shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
	  plot(cars$dist,cars$speed,xlab='distance',ylab='speed',col='blue')
      x <- input$x
      lines(c(x, x), c(0, 200),col="red",lwd=5)
	  norm <- (x-mean(cars$speed))/sd(cars$speed)
      text(8, 15, paste("x = ", x))
      text(12, 14, paste("Norm_x = ", round(norm, 2)))
	  
    })
    
  }
)