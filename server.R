# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define a server for the Shiny app
server <- function(input, output) {
  
  # Fill in the spot we created for a plot
  output$lineplot <- renderPlot({
    
    # Render a barplot
    ggplot(df[df$name == input$name,], aes(x = date, y = fitnesslevel))+
      geom_point(aes(color = excersize))+
      labs(x = "Date of baseline", y = "Fitness level")

  })
  
  
  output$barplot <- renderPlot({
    
    # Render a barplot
    ggplot(df[df$name == input$name,], aes(x = date, y = fitnesslevel))+
      geom_bar(aes(color = excersize))+
      labs(x = "Date of baseline", y = "Fitness level")
    
  })
  
  
}
