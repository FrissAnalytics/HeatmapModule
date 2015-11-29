shinyServer(function(input, output, session){

  ###
  ### module based code
  ###

  callModule(module = HeatmapModule, id = "Heat1", data = data)

  ###
  ### standard code
  ###

  # plotly output
  output$Heat2 <- renderPlotly({

    # show time
    cat("\n\nStandard plotly start:",GetTimeString())

    # plot code
    p <- GetHeatmap(data)

    # show time
    cat("\n\nStandard plotly end:",GetTimeString())

    # output plot
    p
  })

})
