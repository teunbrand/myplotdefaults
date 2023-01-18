# Colours -----------------------------------------------------------------

# ice_colours <- farver::encode_colour(cbind(
#   l = seq(1, 0.2, length.out = 100),
#   c = c(seq(0, 0.25, length.out = 50), seq(0.25, 0, length.out = 50)),
#   h = seq(230, 310, length.out = 100)
# ), from = "oklch")
# ice_colours <- ice_colours[!duplicated(ice_colours)]

ice_colours <- c(
  "#FFFFFF", "#F9FDFF", "#F3FBFF", "#EDF9FF", "#E8F7FF", "#E2F5FF",
  "#DCF3FF", "#D7F1FF", "#D1EFFF", "#CBECFF", "#C6EAFF", "#C0E8FF",
  "#BBE5FF", "#B5E3FF", "#B0E1FF", "#ABDEFF", "#A6DBFF", "#A1D9FF",
  "#9CD6FF", "#97D4FF", "#92D1FF", "#8DCEFF", "#88CBFF", "#84C8FF",
  "#7FC6FF", "#7BC3FF", "#77C0FF", "#72BDFF", "#6FB9FF", "#6BB6FF",
  "#67B3FF", "#64B0FF", "#60ACFF", "#5DA9FF", "#5AA6FF", "#58A2FF",
  "#559FFF", "#539BFF", "#5197FF", "#4F93FF", "#4E90FF", "#4D8CFF",
  "#4C88FF", "#4B84FF", "#4B7FFF", "#4A7BFF", "#4A77FF", "#4A72FF",
  "#4B6EFF", "#4B69FF", "#4D65FF", "#4E63FF", "#5060FF", "#515EFE",
  "#525CF9", "#535AF3", "#5458ED", "#5455E7", "#5453E1", "#5451DB",
  "#544FD5", "#544DCF", "#544CCA", "#544AC4", "#5348BE", "#5346B8",
  "#5244B3", "#5143AD", "#5041A8", "#4F3FA2", "#4E3E9C", "#4D3C97",
  "#4C3A92", "#4B398C", "#493787", "#483682", "#46347C", "#453377",
  "#433172", "#41306D", "#402F68", "#3E2D63", "#3C2C5E", "#3A2A59",
  "#382955", "#362850", "#34274B", "#322547", "#302442", "#2E233E",
  "#2C213A", "#292035", "#271F31", "#251E2D", "#221C29", "#201B25",
  "#1D1A21", "#1B181D", "#18171A", "#161616"
)

# fire_colours <- farver::encode_colour(cbind(
#   l = seq(1, 0.2, length.out = 100),
#   c = c(seq(0, 0.25, length.out = 50), seq(0.25, 0, length.out = 50)),
#   h = seq(75, 35, length.out = 100)
# ), from = "oklch")
# fire_colours <- fire_colours[!duplicated(fire_colours)]

fire_colours <- c(
  "#FFFFFF", "#FFFCF9", "#FEF9F2", "#FEF6EC", "#FDF3E6", "#FDEFDF",
  "#FCECD9", "#FCE9D3", "#FBE6CD", "#FBE3C6", "#FBDFC0", "#FADCBA",
  "#FAD9B3", "#FAD5AD", "#F9D2A7", "#F9CFA1", "#F9CB9A", "#F8C894",
  "#F8C48D", "#F8C187", "#F7BD81", "#F7BA7A", "#F6B673", "#F6B26D",
  "#F6AF66", "#F5AB5E", "#F5A757", "#F5A350", "#F4A047", "#F49C3F",
  "#F39835", "#F3942A", "#F2901D", "#F28C05", "#F28800", "#F18300",
  "#F07F00", "#F07B00", "#EF7600", "#EF7200", "#EE6D00", "#EE6800",
  "#ED6300", "#EC5E00", "#EC5900", "#EB5400", "#EA4E00", "#E94800",
  "#E84100", "#E83A00", "#E53600", "#E13500", "#DC3400", "#D83400",
  "#D33300", "#CF3300", "#CB3200", "#C63200", "#C23100", "#BD3000",
  "#B93000", "#B53000", "#B02F00", "#AC2F00", "#A82E00", "#A32E00",
  "#9F2D00", "#9B2D00", "#962C00", "#922C00", "#8E2B00", "#892B00",
  "#852A00", "#812A00", "#7C2900", "#782900", "#742800", "#702800",
  "#6C2701", "#672705", "#632608", "#5F250B", "#5B250D", "#57240F",
  "#532311", "#4E2312", "#4A2213", "#462114", "#422015", "#3E2015",
  "#3A1F16", "#361E16", "#321D16", "#2E1C17", "#2A1B17", "#261A17",
  "#221917", "#1E1816", "#1A1716", "#161616"
)

bright_colours <- c(
  "#e41a1c", # red
  "#17becf", # turquoise
  "#4daf4a", # green
  "#984EA3", # purple
  "#fed500", # yellow
  "#377EB8", # blue
  "#FF7F00", # orange
  "#F781BF", # pink
  "#A65628"  # brown
)

# Palettes ----------------------------------------------------------------

pal_fire <- function(direction = 1) {
  direction <- sign(direction)
  colours   <- fire_palette
  if (direction < 0) {
    colours <- rev(colours)
  }
  gradient_n_pal(colours)
}

pal_ice <- function(direction = 1) {
  direction <- sign(direction)
  colours   <- ice_colours
  if (direction < 0) {
    colours <- rev(colours)
  }
  gradient_n_pal(colours)
}

pal_bright <- manual_pal(bright_colours)
