shinyUI(pageWithSidebar(
  headerPanel("Nottingham Monthly Temperatures"),
  sidebarPanel(
    sliderInput('mu', 'Select temperature',value = 50, min = 30, max = 70, step = 0.05,),
    h4('Choose a temperature using the slider and see which month\'s temperature in Nottingham  
       is closest to the chosen temperature. Also the most unlikely month for that temperature is shown.')
  ),
  mainPanel(
    plotOutput('newHist')
  )
))