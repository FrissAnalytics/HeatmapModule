# module ui
HeatmapModuleUI <- function(id){

  # set namespace via id
  ns <- NS(id)

  tagList(
    plotlyOutput(outputId = ns("Heatmap"),width = 1000, height = 1000)
  )

}

# module server
HeatmapModule <- function(input, output, session, data){

  # get namespace based on session
  ns <- session$ns

 output$Heatmap <- renderPlotly({

    # show time
    cat("\n\nModule start:",GetTimeString())

    # get heatmap
    p <- GetHeatmap(data)

    # show time
    cat("\n\nModule end:",GetTimeString())

    # output plot
    p

  })

}