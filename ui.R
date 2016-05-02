library(shiny)
# Define UI for application that draws a histogram
shinyUI(navbarPage("Global indicators",
  tabPanel("Main indicators",
    fluidPage(  
      plotOutput("distPlot",width = "100%",height = "400px"),
        hr(),
        fluidRow(
        column(9,
          h4("Ranking"),     
          dataTableOutput('table')
        ),  
        column(3,
        br(),
        checkboxGroupInput("checkGroup", label = h3("Social and economic indicators"), 
                    choices = list('Breast cancer per 100th' = 'breastcancerper100th', 'HIV rate' = 'hivrate',
                                                                       'Suicide per 100th' = 'suicideper100th',
                                                                       'Oil per person' = 'oilperperson',
                                                                       'Alc consumption' = 'alcconsumption',
                                                                       'Polity score' = 'polityscore',
                                                                       'Armed forces rate' = 'armedforcesrate',
                                                                       'CO2 emissions' = 'co2emissions',
                                                                       'Income per person' = 'incomeperperson',
                                                                       'Female employ rate' = 'femaleemployrate',
                                                                       'Employ rate' = 'employrate',
                                                                       'Internet use rate' = 'internetuserate',
                                                                       'Electric per person' = 'relectricperperson'),selected = 'breastcancerper100th')
                  )))
        ),
        tabPanel("About indicators",
                 includeMarkdown("read.Rmd")
                 )
))