library(shiny)
library(shinythemes)
library(markdown)


shinyUI(fluidPage(title="KNU/KNLA Peace Council Web Site", theme=shinytheme("cerulean"),
                  navbarPage(strong("KNU/KNLA Peace Council"),
                             tabPanel("Home", titlePanel("KNU/KNLA Peace Council"),  includeMarkdown("home.md"), uiOutput("video")), #tabPanel Submit Job # uiOutput("video")
                             
                             tabPanel("History", titlePanel("History"), includeMarkdown("history.md")),
                             tabPanel("Department", titlePanel("Department"), includeMarkdown("department.md")),
                             #tabPanel("Activities", titlePanel("Activities"), div(includeMarkdown("activities.md"), align="justify")),
                             navbarMenu("Agriculture", tabPanel(
                               a("Rice Production", href="https://htmlpreview.github.io/?https://raw.githubusercontent.com/sawsimeon/pc-web/master/rice_farm.html", target = "_blank")),
                                        tabPanel(a("Animal/Husbary", href = "https://htmlpreview.github.io/?https://raw.githubusercontent.com/sawsimeon/pc-web/master/animal.html", target = "_blank")),
                                        tabPanel(a("Chicken farm", href = "https://htmlpreview.github.io/?https://raw.githubusercontent.com/sawsimeon/pc-web/master/chicken.html", target = "_blank"))),
                             tabPanel("Construction", titlePanel("Construction"), includeMarkdown("construction.md")),
                             tabPanel("Education", titlePanel("Education"), includeMarkdown("education.md")),
                             tabPanel("Activities", titlePanel("Activities"), includeMarkdown("activities.md")),
                             tabPanel("Meeting", titlePanel("Meeting"), includeMarkdown("meeting.md")),
                             tabPanel("Karen Marthyr's Day", titlePanel("Karen Martyr's Day"), includeMarkdown("marthyr.md")),
                             tabPanel("Karen New Year", titlePanel("Karen New Year"), includeMarkdown("new_year.md")),
                             tabPanel("Photos", titlePanel("Photos"), includeMarkdown("photo.md")),
                             tabPanel("Videos", titlePanel("Videos"), includeMarkdown("video.md")),
                             tabPanel("Contact", titlePanel("Contact"), includeMarkdown("contact.md"))	
                             
                  ) #navbarPage
) #fluidPage	
) #shinyUI
