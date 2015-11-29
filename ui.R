shinyUI(

  navbarPage(title = "test",

   tabPanel("test 1", icon = icon("dashboard"),

      HeatmapModuleUI("Heat1")

   ),

   tabPanel("test 2", icon = icon("dashboard"),

      plotlyOutput("Heat2")

   )
))
