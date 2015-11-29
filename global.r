# clean up
rm(list = ls())

# libraries
library(shiny)
library(magrittr)
library(plotly)
library(lubridate)

# module
source("HeatModule.R")

# data
load("heatmap.RData")

# small helper function to show time as nice string
GetTimeString <- function(){as.character(ymd_hms(paste(today(),format(Sys.time(), "%H-%M-%S"))))}

# code to render plotly heatmap
GetHeatmap <- function(data, width = 1000, height = 1000){

  p <- plot_ly(z         = data,
               x         = rownames(data),
               y         = colnames(data),
               type      = "heatmap",
               hoverinfo = "all",
               text      = data) %>%

    layout(font     = list(size = 12, color = "gray"),
           margin   = list(l = 400, b = 400),
           xaxis    = list(title = "indicator", titlefont = list(size = 0.1, color = "blue")),
           yaxis    = list(title = "indicator", titlefont = list(size = 0.1, color = "blue")),
           width    = width,
           height   = height
    )

  return(p)

}