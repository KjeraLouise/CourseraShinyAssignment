DaysBetweenFunction <- function(parameterDateUse) {
    DaysLeft <- difftime(parameterDateUse,Sys.Date(), units="days")
    Days <- as.character(abs(DaysLeft), units = "days")

    if (parameterDateUse < Sys.Date() ){
        Reply  <- paste("That date was ", Days, " day(s) ago.", sep="")
        }else if (parameterDateUse == Sys.Date() ){
        Reply <- "That is today!"
        }else {
        Reply <- paste("That date is ", Days , " day(s) away.", sep="")
        }
    Reply
}

library(shiny)
shinyServer(
    function(input, output) {
        output$reply <- renderPrint({DaysBetweenFunction(input$DateUse)})
    }
)
