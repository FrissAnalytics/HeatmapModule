###
### stand alone version
###

# clean up
rm(list = ls())

# libraries
library(shiny)
library(magrittr)
library(plotly)

# basic helper routines
source("helper.R")

# data
load("C:/Users/hsontrop/Desktop/heatmap.RData")

# scale data
data <- Scale(data)


# stand alone plotly (code execution is reasonably fast)
plot_ly(z      = data,
        x      = rownames(data),
        y      = colnames(data),
        type   = "heatmap") %>%

  layout(font    = list(size = 12, color = "gray"),
         margin  = list(l = 300, b = 300, height = "1000px", width = "1000px"),
         xaxis   = list(title = "indicator", titlefont = list(size = 0.1, color = "blue")),
         yaxis   = list(title = "indicator", titlefont = list(size = 0.1, color = "blue"))
  )
