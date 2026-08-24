library(lubridate)

# First Monday of Fall 2026 classes (GW). Our class meets Tue/Thu.
mon <- as_date("2026-08-24")
tue <- mon + days(1)   # first class, Aug 25
wed <- mon + days(2)
thu <- mon + days(3)   # Thursday class
fri <- mon + days(4)
sat <- mon + days(5)
sun <- mon + days(6)

# "Aug 25" style
advdate <- function(day, week) {
  date <- (day + weeks(week))
  dm <- paste(month(date, label = TRUE), day(date))
  return(dm)
}

# "Monday, August 25" style (for deadlines)
advdate2 <- function(day, week) {
  date <- (day + weeks(week))
  day_name <- wday(date, label = TRUE, abbr = FALSE)
  month <- month(date, label = TRUE, abbr = FALSE)
  dm <- paste0(day_name, ", ", month, " ", day(date))
  return(dm)
}
