# layout for section "Source"
# last update: 2016-10-06

# source("uiSourceItemConfig.R")

appSource <- function(){
        fluidRow(
                column(12,
                       # uiOutput('desktopUiSourceItemsRender')
                       tabsetPanel(
                               type='tabs',
                               tabPanel('Browser Plugins',
                                        fluidRow(column(11, 
                                                        offset=1,
                                                        br(),
                                                        helpText('Wähle das Plugin für den von dir verwendeten Browser und folge der Anleitung zur Installation:'),
                                                        p(
                                                                img(src='chrome.png', width='50px', alt='Chrome'),
                                                                span('Chrome Erweiterung:'),
                                                                a('herunterladen', href='https://github.com/OwnYourData/ext-webhistory_chrome'),
                                                                span('('),
                                                                a('Anleitung zur Installation', href='https://github.com/OwnYourData/ext-webhistory_chrome'),
                                                                span(')')),
                                                        p(
                                                                img(src='firefox.png', width='50px', alt='Chrome'),
                                                                span('bald verfügbar')),
                                                        p(
                                                                img(src='safari.png', width='50px', alt='Chrome'),
                                                                span('bald verfügbar')))
                                        )
                               )
                       )
                )
        )
}

# constants for configurable Tabs
# defaultSrcTabsName <- c('SrcTab1', 'SrcTab2')
# 
# defaultSrcTabsUI <- c(
#         "
#         tabPanel('SrcTab1',
#                 textInput(inputId=ns('defaultSourceInput1'), 
#                         'Eingabe1:'),
#                 htmlOutput(outputId = ns('defaultSourceItem1'))
#         )
#         ",
#         "
#         tabPanel('SrcTab2',
#                 textInput(inputId=ns('defaultSourceInput2'), 
#                         'Eingabe2:'),
#                 htmlOutput(outputId = ns('defaultSourceItem2'))
#         )
#         "
# )
# 
# defaultSrcTabsLogic <- c(
#         "
#         output$defaultSourceItem1 <- renderUI({
#                 input$defaultSourceInput1
#         })
#         ",
#         "
#         output$defaultSourceItem2 <- renderUI({
#                 input$defaultSourceInput2
#         })
#         "
# )
