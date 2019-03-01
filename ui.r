shinyServer(
  pageWithSidebar(
    headerPanel("welcome to my blog post"),
    
    sidebarPanel(
      selectInput("Distribution","please select distribution",
                  choices = c("Normal","Exponential")),
      sliderInput("sampleSize","please select sample size :",
                  min=100,max=5000,value=1000,step = 100),
      conditionalPanel(condition = "input.Distribution=='Normal'",
                       textInput("Mean","please select the mean",10),
                       textInput("sd","please select std",3)),
      conditionalPanel(condition = "input.Distribution=='Exponential'",
                       textInput("lambda","please select exp lambda:",1))
    ),
  mainPanel(
    plotOutput("myplot")
  )
  )
)