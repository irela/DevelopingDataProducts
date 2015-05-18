shinyUI(pageWithSidebar(
  headerPanel("Example plot"),
  sidebarPanel(
    sliderInput('mu', 'Guess at the mu',value = 70, min = 60, max = 80, step = 0.05,),
    h4('Choose a value using the slider and see mu and mean on the histogram.')
  ),
  mainPanel(
    plotOutput('newHist')
  )
))