library(shiny)

shinyUI(
    navbarPage("Shiny Web Application",
               tabPanel("My Statistical Analysis",
                        fluidPage(
                            titlePanel("The Relationship between Every variable and MPG"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Select one Variable:",
                                                c("Number of cylinders(cyl)" = "cyl",
                                                  "Displacement(disp)" = "disp",
                                                  "Gross horsepower(hp)" = "hp",
                                                  "Rear axle ratio(drat)" = "drat",
                                                  "Weight(wt)" = "wt",
                                                  "1/4 mile time(qsec)" = "qsec",
                                                  "V/S (vs)" = "vs",
                                                  "Transmission(am)" = "am",
                                                  "Number of forward gears(gear)" = "gear",
                                                  "Number of carburetors(carb)" = "carb"
                                                )),
                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)

                                             ),

                                mainPanel(
                                    h3(textOutput("caption")),

                                    tabsetPanel(type = "tabs",
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model",
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),

               tabPanel("Description of Dataset",
                        h2("Motor Trend Car Road Tests"),
                        hr(),
                        h3("Description"),
                        helpText("The data was extracted from the 1974 Motor Trend US magazine,",
                                 " and comprises fuel consumption and 10 aspects of automobile design and performance",
                                 " for 32 automobiles (1973-74 models)."),


                        h3("Format"),
                        p("A data frame with 32 observations on 11 variables."),

                        p("  1)   mpg         Miles/(US) gallon"),
                        p("  2)	 cyl	 Number of cylinders"),
                        p("  3)	 disp	 Displacement (cu.in.)"),
                        p("  4)	 hp	 Gross horsepower"),
                        p("  5)	 drat	 Rear axle ratio"),
                        p("  6)	 wt	 Weight (lb/1000)"),
                        p("  7)	 qsec	 1/4 mile time"),
                        p("  8)	 vs	 V/S"),
                        p("  9)	 am	 Transmission (0 = automatic, 1 = manual)"),
                        p(" 10)	 gear	 Number of forward gears"),
                        p(" 11)	 carb	 Number of carburetors")

               )
    )
)
