library(leaflet)

shinyUI(fluidPage(
	
  leafletOutput("map", width = 600, height = 600),
	tags$br(),
	uiOutput("info"),
	
	column(width = 4, 
		numericInput("numInput", label = "enter new number here", value = "", min = 0, max = 1000), 
		tableOutput("all")),
	column(width = 1, tags$br(),
		actionButton("submit", label = "submit"))
	)
)