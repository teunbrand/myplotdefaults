
#' Set plot defaults
#'
#' This function sets plot defaults, both geom defaults and theme defaults.
#'
#' @inheritParams my_theme
#'
#' @return Nothing, but sets plot defaults
#' @export
#'
#' @examples
set_defaults <- function(
  ink_colour    = "#333333",
  paper_colour  = NA,
  shadow_colour = "#F2F2F2",
  font          = "Roboto",
  small_text    = 9,
  big_text      = 12
) {
  set_my_geom_defaults(
    ink_colour    = ink_colour,
    paper_colour  = paper_colour,
    shadow_colour = shadow_colour,
    font          = font,
    small_text    = small_text,
    big_text      = big_text
  )
  set_my_theme(
    ink_colour    = ink_colour,
    paper_colour  = paper_colour,
    shadow_colour = shadow_colour,
    font          = font,
    small_text    = small_text,
    big_text      = big_text
  )
}
