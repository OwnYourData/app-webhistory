# global constants available to the app
# last update:2016-10-17

# constants required for every app
appName <- 'webhistory'
appTitle <- 'Webhistory'
app_id <- 'eu.ownyourdata.webhistory'

# definition of data structure
currRepoSelect <- ''
appRepos <- list(Webhistory = 'eu.ownyourdata.webhistory',
                 Verlauf = 'eu.ownyourdata.webhistory.log')
appStruct <- list(
        Webhistory = list(
                fields      = c('time', 'url'),
                fieldKey    = 'time',
                fieldTypes  = c('timestamp', 'string'),
                fieldInits  = c('empty', 'empty'),
                fieldTitles = c('Zeit', 'URL'),
                fieldWidths = c(200, 500)),
        Verlauf = list(
                fields      = c('date', 'description'),
                fieldKey    = 'date',
                fieldTypes  = c('date', 'string'),
                fieldInits  = c('empty', 'empty'),
                fieldTitles = c('Datum', 'Text'),
                fieldWidths = c(150, 450)))

# Version information
currVersion <- "0.3.0"
verHistory <- data.frame(rbind(
        c(version = "0.3.0",
          text    = "erstes Release")
))

# app specific constants
