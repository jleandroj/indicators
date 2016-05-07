library(shiny)
library(rgdal)
library(raster)
library(sp)
library(knitr)


polygons <- shapefile("TM_WORLD_BORDERS_SIMPL-0.3.shp")
gap<-read.table("g.txt")
names(gap)[1]<-"NAME"

shinyServer(function(input, output) {
  
    output$distPlot <- renderPlot({
    
    polygons1 <- merge(polygons,gap, by="NAME")
    
    spplot(polygons1,input$checkGroup, main=paste(input$checkGroup),lwd=.8, col="black")
           
    })
    
    output$table <-  renderDataTable({ 
      
      gap2<-subset(gap, select = c("NAME",input$checkGroup));
      
      gap2<-gap2[with(gap2, order(-gap2[,2])),];
      
      gap2
    })
})