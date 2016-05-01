library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  title="Global indicators!",
  plotOutput("distPlot"),
  hr(),
  fluidRow(
    column(3,
           br(),
           checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                              choices = list('Breast cancer per 100th' = 'breastcancerper100th',                                         'HIV rate' = 'hivrate',
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
    ),                                 
    
    column(3,
           h4("Public health indicators"),
           sliderInput('breastcancerper100th', 'Breast cancer per 100th', min=3.9, max=101.1, value=c(3.9,101.1), step=mean('breastcancerper100th'),width = '220%'),
           sliderInput('hivrate', 'HIV rate', min=11.30, max=83.30, value=c(11.30,83.30), step=1,width = '120%'),
           sliderInput('suicideper100th', 'Suicide per 100th', min=0.2014, max=35.7529, value=c(0.2014,35.7529), step=0.1,width = '120%'),
           sliderInput('oilperperson', 'Oil per person', min=0.03228, max=12.22864, value=c(0.03228,12.22864), step=0.01,width = '120%'),
           sliderInput('alcconsumption', 'Alc consumption', min=0.030, max=23.010, value=c(0.030,23.010), step=0.01,width = '120%')
    ),
    column(3,
           h4("Politic indicator"),
           sliderInput('polityscore', 'Polity score', min=-10.000, max=10.000, value=c(-10.000,10.000), step=1,width = '120%'),
           sliderInput('armedforcesrate', 'Armed forces rate', min=0.0000, max=10.6385, value=c(0.0000,10.6385), step=0.0001,width = '120%'),
           sliderInput('co2emissions', 'CO2 emissions', min=1.320e+05, max=3.342e+11, value=c(1.320e+05,3.342e+11), step=1,width = '220%')
           
    ),
    column(3,
           h4("Economic and social indicators"),
           sliderInput('incomeperperson', 'Income per person', min=103.8, max=105147.4 , value=c(103.8,105147.4), step=5000,width = '120%'),
           sliderInput('femaleemployrate', 'Female employ rate', min=60, max=300, value=c(60,300), step=10,width = '120%'),
           sliderInput('employrate', ' Employ rate', min= 32.00, max=83.20, value=c(32.00,83.20), step=1.2,width = '120%'),
           sliderInput('urbanrate', 'Urban rate', min=10.40, max=100.00, value=c(0.2014,35.7529), step=17,98,width = '220%'),
           sliderInput('internetuserate', 'Internet use rate', min=0.2101, max=95.6381, value=c(0.2101,95.6381), step=47,92,width = '120%'),
           sliderInput('relectricperperson', 'Electric per person', min= 0.0, max=11154.8, value=c(0.0,11154.8), step=5577,width = '120%')
    )
    
    
  )
)
)


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

tabPanel("play indicador"),
fluidPage(  
  position = "fixed-top",
  plotOutput("distPlot"),
  hr(),
  fluidRow(
    column(3,
           h4("Public health indicators"),
           sliderInput('breastcancerper100th', 'Breast cancer per 100th', min=3.9, max=101.1, value=c(3.9,101.1), step=mean('breastcancerper100th'),width = '220%'),
           sliderInput('hivrate', 'HIV rate', min=11.30, max=83.30, value=c(11.30,83.30), step=1,width = '120%'),
           sliderInput('suicideper100th', 'Suicide per 100th', min=0.2014, max=35.7529, value=c(0.2014,35.7529), step=0.1,width = '120%'),
           sliderInput('oilperperson', 'Oil per person', min=0.03228, max=12.22864, value=c(0.03228,12.22864), step=0.01,width = '120%'),
           sliderInput('alcconsumption', 'Alc consumption', min=0.030, max=23.010, value=c(0.030,23.010), step=0.01,width = '120%')
    ),
    column(3,
           h4("Politic indicator"),
           sliderInput('polityscore', 'Polity score', min=-10.000, max=10.000, value=c(-10.000,10.000), step=1,width = '120%'),
           sliderInput('armedforcesrate', 'Armed forces rate', min=0.0000, max=10.6385, value=c(0.0000,10.6385), step=0.0001,width = '120%'),
           sliderInput('co2emissions', 'CO2 emissions', min=1.320e+05, max=3.342e+11, value=c(1.320e+05,3.342e+11), step=1,width = '220%')
           
    ),
    column(3,
           h4("Economic and social indicators"),
           sliderInput('incomeperperson', 'Income per person', min=103.8, max=105147.4 , value=c(103.8,105147.4), step=5000,width = '120%'),
           sliderInput('femaleemployrate', 'Female employ rate', min=60, max=300, value=c(60,300), step=10,width = '120%'),
           sliderInput('employrate', ' Employ rate', min= 32.00, max=83.20, value=c(32.00,83.20), step=1.2,width = '120%'),
           sliderInput('urbanrate', 'Urban rate', min=10.40, max=100.00, value=c(0.2014,35.7529), step=17,98,width = '220%'),
           sliderInput('internetuserate', 'Internet use rate', min=0.2101, max=95.6381, value=c(0.2101,95.6381), step=47,92,width = '120%'),
           sliderInput('relectricperperson', 'Electric per person', min= 0.0, max=11154.8, value=c(0.0,11154.8), step=5577,width = '120%')
    )
    