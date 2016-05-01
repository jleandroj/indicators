library(shiny)
# Define UI for application that draws a histogram
shinyUI(navbarPage("Global indicators",
                   tabPanel("Main indicators"),
                            fluidPage(  
                            plotOutput("distPlot"),
                            hr(),
                            fluidRow(
                              column(width = 12,
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
                                                                       'Electric per person' = 'relectricperperson'),selected = 'alcconsumption')
                                 ))
                      ),
                      tabPanel("read"),
                              mainPanel(
                              includeMarkdown("read.Rmd")
)))




#checkboxInput('breastcancerper100th', 'Breast cancer per 100th'),
#checkboxInput('hivrate', 'HIV rate'),
#checkboxInput('suicideper100th', 'Suicide per 100th'),
#checkboxInput('oilperperson', 'Oil per person'),
#checkboxInput('alcconsumption', 'Alc consumption'),
#checkboxInput('polityscore', 'Polity score'),
#checkboxInput('armedforcesrate', 'Armed forces rate'),
#checkboxInput('co2emissions', 'CO2 emissions'),
#checkboxInput('incomeperperson', 'Income per person'),
#checkboxInput('femaleemployrate', 'Female employ rate'),
#checkboxInput('employrate', 'Employ rate'),
#checkboxInput('urbanrate', 'Urban rate'),
#checkboxInput('internetuserate', 'Internet use rate'),
#checkboxInput('relectricperperson', 'Electric per person')