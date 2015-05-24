library(UsingR)
data(nottem)
#temps <- as.data.frame(tapply(nottem, list(year = floor(time(nottem)), month = cycle(nottem)), c))
Temperature <- tapply(nottem, list(year = floor(time(nottem)), month = cycle(nottem)), c)
mse <- rep(0, 12)
months <- c("January", "February", "March", "April", "May", "June", "July", "August",
            "September", "October", "November", "December") 

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      hist(Temperature, xlab='Temperature', col='lightblue',main='Histogram of monthly average temperatures')
      mu <- input$mu
      lines(c(mu, mu), c(0, 50),col="red",lwd=5)
      for (i in 1:12) {
        mse[i] <- mean((Temperature[,i]- mu)^2)
      }
      
      text(60, 55, paste("Temperature = ", mu))
      text(60, 52, paste("Most probable month = ", months[which.min(mse)]))
      text(60, 49, paste("Most unlikely month = ", months[which.max(mse)]))      
    })
    
  }
)