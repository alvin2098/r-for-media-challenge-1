### --- R Challenge 1, Alvin Aziz, 02.04.2021 --- ###

library(assertthat)

# Complete the following statements following the the assignment below:
# * Namen der sieben Hamburger Bezirke (Nicht Stadtteile!)
# * Einwohner
# * Bevölkerungsdichte in km2
# * Nachname Bezirkamtsleiter
# * Mehr als 100km2 Fläche (TRUE oder FALSE)  
#
# **Beantworte darüber hinaus folgende Fragen und nutze dafür dein neues R-Wissen:**
#
#   * Wie viele Menschen leben insgesamt in den Stadtteilen?
#   * Wie hoch ist die Bevökerungsdichte im Durchschnitt?

### --- Vectors --- ###
bezirk <- c("Hamburg-Mitte", "Altona", "Eimsbüttel", "Hamburg-Nord", "Wandsbek", "Bergedorf", "Harburg")
einwohner <- c(301543, 275264, 267051, 314593, 441012, 130260, 169426)
bevoelkerungsdichte <- c(2121, 3534, 5362, 5443, 2990, 841, 1353) # per Kilometer squared
bezirksamtsleiter <- c("Droßmann", "von Berg", "Gätgens", "Werner-Boelz", "Ritzenhoff", "Dornquast", "Fredenhagen")
flaecheRaw <- c(142.2, 77.9, 49.8, 57.8, 147.5, 154.8, 125.2) # in Kilometers squared
flaeche <- flaecheRaw > 100

### --- Dataframe --- ###
hamburg_df <- data.frame(bezirk, einwohner, bevoelkerungsdichte, bezirksamtsleiter, flaeche)

### --- Questions --- ###
# Wie viele Menschen leben insgesamt in den Stadtteilen?
inhabitants_sum <- sum(einwohner)
paste(inhabitants_sum, "Menschen leben insgesamt in den Stadtteilen")

# Wie hoch ist die Bevökerungsdichte im Durchschnitt?
density <- mean(bevoelkerungsdichte)
paste(density, "km² ist die durchschnittliche Bevölkerungsdichte")


if(
  assert_that(
    has_name(hamburg_df, "bezirk"),
    msg = "Die Spalte 'bezirk' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "einwohner"),
    msg = "Die Spalte 'einwohner' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "bevoelkerungsdichte"),
    msg = "Die Spalte 'bevoelkerungsdichte' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "bezirksamtsleiter"),
    msg = "Die Spalte 'bezirksamtsleiter' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "flaeche"),
    msg = "Die Spalte 'flaeche' fehlt"
  ) &&
  assert_that(
    is.character(hamburg_df$bezirk),
    msg = "Die Spalte 'bezirk' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.character(hamburg_df$bezirksamtsleiter),
    msg = "Die Spalte 'bezirksamtsleiter' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.logical(hamburg_df$flaeche),
    msg = "Die Spalte 'flaeche' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.numeric(hamburg_df$einwohner),
    msg = "Die Spalte 'einwohner' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.numeric(hamburg_df$bevoelkerungsdichte),
    msg = "Die Spalte 'bevoelkerungsdichte' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    inhabitants_sum == 1899149,
    msg = "Die Summe der Einwohner is nicht richtig"
  ) &&
  assert_that(
    density == 3092,
    msg = "Die durchschnittliche Bevölkerungsdichte ist falsch"
  )
) {
  writeLines("Congrats! 10/10 points!")
}

