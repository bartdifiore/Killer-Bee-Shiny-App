# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Use a fluid Bootstrap layout
ui <- fluidPage(    
  
  # Give the page a title
  titlePanel("User"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("name", "Name:", 
                  choices=unique(df$name)),
      hr(),
      helpText("Select your name from the dropdown.")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("lineplot")  
    )
    
  )
)
``