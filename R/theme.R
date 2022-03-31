#' My theme
#'
#' These are functions for getting and setting my theme.
#'
#' @param ink_colour,paper_colour,shadow_colour A `character(1)` for colours.
#' @param font A `character(1)` with a font family name.
#' @param small_text,big_text A `numeric(1)` indicating font sizes.
#'
#' @return For `my_theme()`: A `theme` object. For `set_my_theme()`, nothing but
#'   global theme settings will have changed.
#' @export
#' @importFrom ggplot2 theme_grey theme element_text element_line element_blank element_rect unit
#'
#' @examples
#' # Standard plot
#' p <- ggplot(mtcars, aes(mpg, disp)) +
#'   geom_point(aes(colour = factor(cyl)))
#'
#' # Applying theme
#' p + my_theme()
#'
#' # Alternatively, to set globally:
#' set_my_theme()
#' p
my_theme <- function(
    ink_colour    = "#333333",
    paper_colour  = NA,
    shadow_colour = "#F2F2F2",
    font          = "Roboto",
    small_text    = 9,
    big_text      = 12
) {
  # Double check font exists
  font <- systemfonts::font_info(family = font)
  font <- font$family

  thm  <- theme_grey(big_text, font, 0.5, 0.5) + theme(
    # Global settings
    text              = element_text(colour = ink_colour, family = font,
                                     size   = big_text),
    line              = element_line(colour = ink_colour),

    # Axes
    axis.line         = element_line(colour = ink_colour, lineend = "square"),
    axis.ticks        = element_line(colour = ink_colour),
    axis.text         = element_text(colour = ink_colour, size = small_text),

    # Legends
    legend.title      = element_text(colour = ink_colour, size = small_text),
    legend.text       = element_text(colour = ink_colour, size = small_text),
    legend.key        = element_blank(),
    legend.background = element_rect(colour = paper_colour,
                                     fill   = paper_colour),

    # Panels
    panel.background  = element_blank(),
    panel.grid.major  = element_line(colour = shadow_colour, size = 0.25),
    panel.grid.minor  = element_blank(),

    # Strips
    strip.background  = element_blank(),
    strip.text        = element_text(colour = ink_colour, size = big_text),
    strip.placement   = "outside",
    strip.switch.pad.grid = unit(0, "pt"),
    strip.switch.pad.wrap = unit(0, "pt"),

    # Plot
    plot.background  = element_blank()
  )

  if (!is.na(paper_colour)) {
    thm <- thm + theme(plot.background = element_rect(fill   = paper_colour,
                                                      colour = NA))
  }
  thm

}

#' @rdname my_theme
#' @export
#' @importFrom ggplot2 theme_set
set_my_theme <- function(
    ink_colour    = "#333333",
    paper_colour  = NA,
    shadow_colour = "#F2F2F2",
    font          = "Roboto",
    small_text    = 9,
    big_text      = 12
) {
  thm <- my_theme(
    ink_colour    = ink_colour,
    paper_colour  = paper_colour,
    shadow_colour = shadow_colour,
    font          = font,
    small_text    = small_text,
    big_text      = big_text
  )
  theme_set(thm)
}
