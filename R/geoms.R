#' My geoms
#'
#' These are functions for getting and setting geom defaults.
#'
#' @inheritParams my_theme
#'
#' @return For `my_geom_defaults`: a `list` with defaults. For
#'   `set_my_geom_defaults()`: nothing but global geom defaults will have
#'   changed.
#' @export
#'
#' @examples
#' # Standard plot
#' p <- ggplot(mtcars, aes(mpg, disp)) +
#'   geom_point()
#'
#' # Change default foreground colour to red
#' set_my_geom_defaults(ink_colour = "red")
#' p
my_geom_defaults <- function(
    ink_colour    = "#333333",
    paper_colour  = NA,
    shadow_colour = "#F2F2F2",
    font          = "Roboto",
    small_text    = 9,
    big_text      = 12
) {
  list(
    "text"      = list(family = font, size = small_text / .pt,
                       colour = ink_colour),
    "label"     = list(family = font, size = small_text / .pt,
                       colour = ink_colour),
    "point"     = list(colour = ink_colour, shape = 16, size = 2),
    "line"      = list(colour = ink_colour),
    "path"      = list(colour = ink_colour),
    "segment"   = list(colour = ink_colour),
    "curve"     = list(colour = ink_colour),
    "abline"    = list(colour = ink_colour),
    "hline"     = list(colour = ink_colour),
    "vline"     = list(colour = ink_colour),
    "bar"       = list(fill   = ink_colour),
    "boxplot"   = list(colour = ink_colour, fill = paper_colour),
    "violin"    = list(colour = ink_colour, fill = paper_colour),
    "step"      = list(colour = ink_colour),
    "spoke"     = list(colour = ink_colour),
    "rug"       = list(colour = ink_colour),
    "ribbon"    = list(fill   = ink_colour),
    "rect"      = list(fill   = ink_colour),
    "tile"      = list(fill   = ink_colour),
    "raster"    = list(fill   = ink_colour),
    "polygon"   = list(fill   = ink_colour),
    "logticks"  = list(colour = ink_colour),
    "linerange" = list(colour = ink_colour),
    "function"  = list(colour = ink_colour),
    "errorbarh" = list(colour = ink_colour),
    "errorbar"  = list(colour = ink_colour),
    "dotplot"   = list(colour = ink_colour, fill = ink_colour),
    "density"   = list(colour = ink_colour, fill = paper_colour),
    "crossbar"  = list(colour = ink_colour, fill = paper_colour),
    "col"       = list(fill   = ink_colour),
    "area"      = list(fill   = ink_colour)
  )
}

#' @rdname my_geom_defaults
#' @export
#' @importFrom ggplot2 update_geom_defaults
set_my_geom_defaults <- function(
    ink_colour    = "#333333",
    paper_colour  = NA,
    shadow_colour = "#F2F2F2",
    font          = "Roboto",
    small_text    = 9,
    big_text      = 12
) {
  dflt <- my_geom_defaults(
    ink_colour    = ink_colour,
    paper_colour  = paper_colour,
    shadow_colour = shadow_colour,
    font          = font,
    small_text    = small_text,
    big_text      = big_text
  )
  for (i in names(dflt)) {
    update_geom_defaults(i, dflt[[i]])
  }
}
