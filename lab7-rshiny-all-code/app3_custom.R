ui <- fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create Dragon Ball Z characters with 
               custom-set power levels."),
      
      selectInput("var", 
                  label = "Choose a DBZ Character",
                  choices = list("Goku", 
                                 "Gohan",
                                 "Vegeta", 
                                 "Broly"),
                  selected = "Goku"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel()
  )
)

server <- function(input, output) {

}

shinyApp(ui = ui, server = server)