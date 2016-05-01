library(shiny)
library(raster)
library(XML)
library(plyr)
polygons <- shapefile("data/TM_WORLD_BORDERS_SIMPL-0.3.shp")
gap<-read.csv("data/gapminder.csv",header = TRUE)
names(gap)[1]<-paste("NAME")

shinyServer(function(input, output) {
  
  
  
  output$distPlot <- renderPlot({
    gap1<-subset(gap,polityscore >= input$polityscore[1] & polityscore <= input$polityscore[2] & 
                   alcconsumption >= input$alcconsumption[1] & alcconsumption <= input$alcconsumption[2] &
                   incomeperperson >= input$incomeperperson[1] & incomeperperson <= input$incomeperperson[2] &
                   armedforcesrate >= input$armedforcesrate[1] & armedforcesrate <= input$armedforcesrate[2] &
                   breastcancerper100th >= input$breastcancerper100th[1] & breastcancerper100th <= input$breastcancerper100th[2] &
                   co2emissions >= input$co2emissions[1] & co2emissions <= input$co2emissions[2] &
                   femaleemployrate >= input$femaleemployrate[1] & femaleemployrate <= input$femaleemployrate[2] &
                   hivrate >= input$hivrate[1] & hivrate <= input$hivrate[2] &
                   internetuserate >= input$internetuserate[1] & internetuserate <= input$internetuserate[2] &
                   oilperperson >= input$oilperperson[1] & oilperperson <= input$oilperperson[2] &
                   relectricperperson >= input$relectricperperson[1] & relectricperperson <= input$relectricperperson[2] &
                   suicideper100th >= input$suicideper100th[1] & suicideper100th <= input$suicideper100th[2] &
                   employrate >= input$employrate[1] & employrate <= input$employrate[2], 
                 urbanrate >= input$urbanrate[1] & urbanrate <= input$urbanrate[2] )
    
    polygons1 <- merge(polygons,gap, by="NAME")
    
    spplot(polygons1,input$checkGroup, main=paste(input$checkGroup) )
  })
  
})