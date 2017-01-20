# application specific logic
# last update: 2016-10-07

source('srvDateselect.R', local=TRUE)
source('srvEmail.R', local=TRUE)

# any record manipulations before storing a record
appData <- function(record){
        record
}

getRepoStruct <- function(repo){
        appStruct[[repo]]
}

repoData <- function(repo){
        data <- data.frame()
        app <- currApp()
        if(length(app) > 0){
                url <- itemsUrl(app[['url']],
                                repo)
                data <- readItems(app, url)
        }
        data
}

output$Top10Sites <- renderTable({
        data <- currDataDateSelectTimestamp()
        if(nrow(data) > 0){
                df <- as.data.frame(table(data$url))
                df <- df[with(df, order(-Freq)), ]
                colnames(df) <- c('Website', 'Anzahl')
                head(df, input$maxWebsites)
        } else {
                data.frame()
        }
})