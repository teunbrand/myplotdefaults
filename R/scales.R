# Constructors ------------------------------------------------------------

#' A scale of ice and fire
#'
#' These are sequential colour scales in a hot and cold variety.
#'
#' @inheritDotParams ggplot2::continuous_scale -aesthetics -guide
#' @param direction Sets the order of colors in the scale. If 1, the default,
#'   colours are ordered from lightest to darkest. If -1, the order of the
#'   colours is reversed.
#' @inheritParams ggplot2::continuous_scale
#'
#' @return A `<ScaleContinuous>` object that can be added to a plot
#' @export
#' @name scale_ice_fire
#'
#' @examples
#' df <- data.frame(
#'   x = as.vector(row(volcano)),
#'   y = as.vector(col(volcano)),
#'   value = as.vector(volcano)
#' )
#'
#' p <- ggplot(df, aes(x, y, fill = value)) +
#'   geom_raster()
#' p + scale_fill_ice()
#' p + scale_fill_fire()
scale_colour_fire <- function(
  ..., direction = 1, aesthetics = "colour", guide = "colourbar"
) {
  pal <- pal_fire(direction)
  continuous_scale(
    aesthetics, "fire_c", pal, ...,
    guide = guide
  )
}

#' @rdname scale_ice_fire
#' @export
scale_fill_fire <- function(
  ..., direction = 1, aesthetics = "fill", guide = "colourbar"
) {
  pal <- pal_fire(direction)
  continuous_scale(
    aesthetics, "fire_c", pal, ...,
    guide = guide
  )
}

#' @rdname scale_ice_fire
#' @export
scale_colour_ice <- function(
  ..., direction = 1, aesthetics = "colour", guide = "colourbar"
) {
  pal <- pal_ice(direction)
  continuous_scale(
    aesthetics, "ice_c", pal, ...,
    guide = guide
  )
}

#' @rdname scale_ice_fire
#' @export
scale_fill_ice <- function(
  ..., direction = 1, aesthetics = "fill", guide = "colourbar"
) {
  pal <- pal_ice(direction)
  continuous_scale(
    aesthetics, "ice_c", pal, ...,
    guide = guide
  )
}

scale_colour_bright <- function(..., aesthetics = "colour") {
  discrete_scale(
    aesthetics, "d_bright", pal_bright, ...
  )
}

scale_fill_bright <- function(..., aesthetics = "fill") {
  discrete_scale(
    aesthetics, "d_bright", pal_bright, ...
  )
}

