#'
#' Sets default geom colours to be compliant with The Runoff branding
#' @importFrom ggplot2 update_geom_defaults theme_set
#'

.onAttach <- function(libname, pkgname) {

ggplot2::update_geom_defaults("bar", list(fill = "#861657"))
ggplot2::update_geom_defaults("col", list(fill = "#861657"))
ggplot2::update_geom_defaults("point", list(colour = "#861657"))
ggplot2::update_geom_defaults("line", list(colour = "#861657"))
ggplot2::update_geom_defaults("path", list(colour = "#861657"))
ggplot2::update_geom_defaults("smooth", list(colour = "#25388E"))
ggplot2::update_geom_defaults("boxplot", list(colour = "#861657"))
ggplot2::update_geom_defaults("segment", list(colour = "#861657"))
ggplot2::update_geom_defaults("abline", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("hline", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("vline", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("rug", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("density", list(colour = "#F84791", fill = "#861657", alpha = 0.5))
ggplot2::update_geom_defaults("pointrange", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("linerange", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("errorbar", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("crossbar", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("text", list(colour = "#2274A5"))
ggplot2::update_geom_defaults("label", list(colour = "#2274A5"))

ggplot2::theme_set(theme_runoff())

invisible()

}
