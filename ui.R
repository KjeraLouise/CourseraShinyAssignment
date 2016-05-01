shinyUI(
    pageWithSidebar(
        #Days Before or Since
        headerPanel(
            "Calculate the Number of Days Until or Since a Specific Day"
        ),

        sidebarPanel(
            dateInput("DateUse", "Date:"),
            submitButton('Submit')
        ),

        mainPanel (
            verbatimTextOutput("reply")
        )
    )
)
