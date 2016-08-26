library(shiny)
library(shinythemes)
library(markdown)


shinyUI(fluidPage(title="KNU/KNLA Peace Council Web Site", theme=shinytheme("cerulean"),
                  navbarPage(strong("KNU/KNLA Peace Council"),
                             tabPanel("Home", titlePanel("KNU/KNLA Peace Council")), #tabPanel Submit Job
                             
                             tabPanel("History", titlePanel("History"), div(includeMarkdown("history.md"), align="justify")),
                             tabPanel("Department", titlePanel("Department"), includeMarkdown("department.md")),
                             #tabPanel("Activities", titlePanel("Activities"), div(includeMarkdown("activities.md"), align="justify")),
                             navbarMenu("Agriculture", tabPanel(
                               a("Rice Production", href="https://htmlpreview.github.io/?https://raw.githubusercontent.com/sawsimeon/pc-web/master/rice_farm.html", target = "_blank")),
                                        tabPanel("Animal/Husbary", titlePanel("Animal")),
                                        tabPanel("Chicken farm", titlePanel("Chicken"))),
                             tabPanel("Education", titlePanel("Education"), includeMarkdown("education.md")),
                             tabPanel("Activities", titlePanel("Activities"), div(includeMarkdown("activities.md"), align="justify")),
                             tabPanel("Meeting", titlePanel("Meeting"), includeMarkdown("meeting.md")),
                             tabPanel("Photos", titlePanel("Photos"), includeMarkdown("photo.md")),
                             tabPanel("Contact", titlePanel("Contact"), includeMarkdown("contact.md"))	
                             
                  ) #navbarPage
) #fluidPage	
) #shinyUI
