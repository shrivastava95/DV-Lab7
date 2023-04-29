library(shiny)

ui <- fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create Dragon Ball Z characters with 
               custom-set power levels."),
      
      selectInput("var", 
                  label = "Choose a DBZ character",
                  choices = c("Goku", 
                              "Gokan",
                              "Vegeta", 
                              "Broly"),
                  selected = "Goku"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("selected_var"),
      textOutput("min_max")
    )
  )
)

server <- function(input, output) {
  
  output$selected_var <- renderText({ 
    paste("You have selected", input$var)
  })
  
  output$min_max <- renderText({ 
    paste("You have chosen a character that has power",
          input$range[1], "to", input$range[2])
  })
  
}

shinyApp(ui, server)