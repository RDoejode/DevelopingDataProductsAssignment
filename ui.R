library(shiny)

# Define UI for miles per gallon application
shinyUI(fluidPage(

  # Application title
  headerPanel("Developing Data Products Application Assignment - Ravishankar Doejode"),

	sidebarPanel(
		tags$style("body{background-color:lightblue;color:brown}"),
		tags$form(
			p("Dataset used are the datasets that come with R by default")
		),
		tags$form(
			br(),
			tags$b("MT Cars Dataset"),
			p("Response Variable:mpg, Predictor Variable:am,cyl,disp,hp,wt"),
    			radioButtons("variable1", "Select variable/variables and click the button below",list("AM" = "am","AM + CYL" = "am + cyl","AM + CYL + DISP" = "am + cyl + disp","AM + CYL + DISP + HP" = "am + cyl + disp + hp","AM + CYL + DISP + HP+ WT" = "am + cyl + disp + hp + wt"),selected=character(0)),
			actionButton("button1","Linear Regression on MTCars")
 		), 
		tags$form(
			br(),
			br(),
			tags$b("Faithful Dataset"),
			p("Response Variable:eruptions,Predictor Variable:waiting"),
			p("Run Regression on the Faithful dataset by clicking the following button"),
			actionButton("button2","Linear Regression on Faithful")
			
		),	
		tags$form(
			br(),
			br(),
			tags$b("Iris Dataset"),
			p("Response Variable:Species,Predictor Variable:Sepal.Length Sepal.Width Petal.Length Petal.Width"),	
			p("Run K-Means Clustering on the Iris dataset by clicking the following button"),
                        actionButton("button3","K-Means Cluster on Iris")
                )
	), 
  mainPanel(
	br(),
	br(),
	br(),
	br(),
	br(),
	br(),
	br(),
	tags$b("Coefficients for Regression on MT Cars"),
	h4(verbatimTextOutput("coeff")),
	br(),
	br(),
	br(),
	br(),
	br(),
        br(),
        br(),
	br(),
	br(),
	br(),
	tags$b("Coefficients for Regression on Faithful"),
	h4(verbatimTextOutput("coeff1")),	
	br(),
	br(),
	br(),
	tags$b("Predication Quality for K-Means Cluster on Iris"),
	h4(tableOutput("irisCluster"))
)
))
