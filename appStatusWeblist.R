# Top 10 most visited websites
# last update: 2016-10-06

appStatusWeblist <- function(){
        fluidRow(column(3, 
                        offset=1,
                        numericInput('maxWebsites', 'Anzahl:', 7),
                        helpText('Gib hier die Anzahl der Webseiten ein, die du in der Liste auf der rechten Seite sehen möchtest. Diese Liste sortiert die besuchten Webseiten nach der Häufigkeit der Besuche absteigend.')),
                 column(8,
                        tableOutput('Top10Sites'))
        )
}