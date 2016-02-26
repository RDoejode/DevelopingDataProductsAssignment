library(shiny)
library(datasets)
library(graphics)
newiris<-iris
newiris$Species <-NULL
kc<-kmeans(newiris,3)


# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {

	output$coeff  <- renderPrint({

		input$button1 
		if(input$button1==0)
                        return()
                else {
			isolate(formula1<-paste("mpg ~ ", input$variable1))	
			isolate(lm(formula1,data=mtcars)$coefficients) 
		}

	})

	output$coeff1 <-renderPrint({

		input$button2

		if(input$button2==0)
			return()
		else {
			isolate(formula2<-paste("eruptions ~ ", "waiting"))
			isolate(lm(formula2,data=faithful)$coefficients)
		}
	})	

	output$irisCluster <-renderTable({

		input$button3

		if(input$button3==0)
                        return()
                else {
                        isolate(table(iris$Species,kc$cluster))
                }
	})
})
