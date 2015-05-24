shinyUI(pageWithSidebar(
  headerPanel("Cars Data Plot"),
  sidebarPanel(
    sliderInput('x', 'Select Distance',value = 10, min = 0, max = 120, step = 1,),
p('Documentation: This app uses the cars dataset.  It plots distance vs. speed.  The user can select the distance, using the slider bar.  A red line is displayed on the plot showing the distance the user has selected.  The app calculates the normalized value for the distance and displays it on the graph as "Norm_x" along with the distance x.')	
  )
  ,
  mainPanel(
    plotOutput('newPlot')
  )
))