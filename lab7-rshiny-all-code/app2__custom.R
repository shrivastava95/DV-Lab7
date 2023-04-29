library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("Jaisidh Singh"),
  sidebarLayout(
    sidebarPanel(
      h2("About me"),
      p("I am a self-driven undergraduate aiming to do impactful research in deep learning, particularly related to computer vision, NLP and RL."),
      code('print("I love research!")'),
      br(),
      br(),
      br(),
      br(),
      img(src = "me.jfif", height = 70, width = 200),
      br(),
      "I use  ", 
      span("PyTorch", style = "color:red")
    ),
    mainPanel(
      h1("I am familiar with"),
      p("GANs and semantic editing in StyleGAN2 ", 
        em("incredibly interesting "), 
        "and information leakage analysis in GANs."),
      br(),
      p("Learn more about me at ",
        a("My homepage.", 
          href = "https://jaisidhsingh.github.io/")),
      br(),
      h2("Vision"),
      p("- Develop novel methods for visual-language based tasks in deep learning."),
      p("- Develop models rich in their knowledge, able to comprehend vision, language and merge them into their decisions as reliable agents ", 
        strong("I hope to collaborate"),
        " with a variety of people in a long and fruitful manner.")
    )
  )
)

# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)