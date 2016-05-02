library(shiny)
library(raster)
library(XML)
library(plyr)
library(datasets)
polygons <- shapefile("data/TM_WORLD_BORDERS_SIMPL-0.3.shp")
gap<-read.csv("data/gapminder.csv",header = TRUE)
names(gap)[1]<-paste("NAME")

shinyServer(function(input, output) {
  
    output$distPlot <- renderPlot({
    
    polygons1 <- merge(polygons,gap, by="NAME")
    
    G<-spplot(polygons1,input$checkGroup, main=paste(input$checkGroup), lwd=.8, col="black")
           
    plot(G)
    })
    
    output$table <-  renderDataTable({ 
      
      gap2<-subset(gap, select = c("NAME",input$checkGroup));
      
      gap2<-gap2[with(gap2, order(-gap2[,2])),];
      
      gap2
    })
})