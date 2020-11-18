#'
#' Builds the main function for styling ggplot2 plots in The Runoff style
#' Import the correct colours as hex codes to be used
#'
#'  @author Trent Henderson
#'

runoff_palette <- c(
  "#A09BE7",
  "#FF686B",
  "#861657",
  "#93E1D8",
  "#2274A5"
  )

#' runoff colour and fill Scales
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name runoff_pal
#'
#' @return the runoff palette
#' @export
#'

runoff_pal <- function(){
  scales::manual_pal(runoff_palette)
}

#' @rdname runoff_pal
#' @export
scale_colour_runoff <- function(...) {
  ggplot2::discrete_scale("colour", "runoff", runoff_pal(), ...)
}

#' @rdname runoff_pal
#' @export
scale_color_runoff <- scale_colour_runoff


#' @rdname runoff_pal
#' @export
scale_fill_runoff <- function(...) {
  ggplot2::discrete_scale('fill', 'runoff', runoff_pal(), ...)
}

#' Style general plot features according to the The Runoff theme
#'
#' @rdname theme_runoff
#' @export

theme_runoff <- function(grids = FALSE){
  the_theme <- ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "bottom",
                   axis.text = ggplot2::element_text(colour = "#2274A5"),
                   axis.title = ggplot2::element_text(colour = "#2274A5", face = "bold"),
                   panel.border = ggplot2::element_blank(),
                   panel.grid.minor = ggplot2::element_blank(),
                   axis.line = ggplot2::element_line(colour = "#2274A5"),
                   panel.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
                   plot.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
                   legend.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
                   legend.box.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
                   legend.key = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
                   legend.text = ggplot2::element_text(colour = "#2274A5"),
                   legend.title = ggplot2::element_text(colour = "#2274A5"),
                   plot.title = ggplot2::element_text(colour = "#2274A5"),
                   plot.subtitle = ggplot2::element_text(colour = "#2274A5"),
                   plot.caption = ggplot2::element_text(colour = "#2274A5"),
                   strip.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#2274A5"),
                   strip.text = ggplot2::element_text(colour = "#2274A5"))
  if(grids){
    the_theme <- the_theme +
      ggplot2::theme(panel.grid.minor.x = element_blank(),
                     panel.grid.minor.y = element_blank(),
                     panel.grid.major = ggplot2::element_line())
  }
  return(the_theme)
}
