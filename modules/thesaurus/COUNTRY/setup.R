# library(RSQLite)
# con <- dbConnect(RSQLite::SQLite(), "data/rc.db")
# datestable = dbGetQuery(con, 'select * from dates')

#### create thesaurus table and add function ####
COUNTRY_thesaurus <- data.frame()
add <- function(vec, term) {
  COUNTRY_thesaurus <<- rbind(
    COUNTRY_thesaurus, 
    data.frame(cor = rep(term, length(vec)), var = vec, stringsAsFactors = FALSE)
  )
}

#### variants ####
unknown <- c(
  "",
  "n/a",
  "nd",
  "NoCountry",
  "probably Ireland?"
)
add(unknown, "unknown")

Israel <- c(
  "Israel/Palestina"
)
add(Israel, "Israel")

Egypt <- c(
  "Egypt_Sinai"
)
add(Egypt, "Egypt")

Yugoslavia <- c(
  "SFRY"
)
add(Yugoslavia, "Yugoslavia")

Central_African_Republic <- c(
  "CAF"
)
add(Central_African_Republic, "Central African Republic")

Gabon <- c(
  "GAB"
)
add(Gabon, "Gabon")

Congo <- c(
  "COG"
)
add(Congo, "Congo")

Democratic_Republic_of_the_Congo <- c(
  "COD"
)
add(Democratic_Republic_of_the_Congo, "Democratic Republic of the Congo")

Rwanda <- c(
  "RWA"
)
add(Rwanda, "Rwanda")

Cameroon <- c(
  "CMR"
)
add(Cameroon, "Cameroon")

Chad <- c(
  "TCD"
)
add(Chad, "Chad")

Equatorial_Guinea <- c(
  "GNQ"
)
add(Equatorial_Guinea, "Equatorial Guinea")

Ghana <- c(
  "GHA"
)
add(Ghana, "Ghana")

Angola <- c(
  "AGO"
)
add(Angola, "Angola")

Burundi <- c(
  "BDI"
)
add(Burundi, "Burundi")

United_Arab_Emirates <- c(
  "U.A.E."
)
add(United_Arab_Emirates, "United Arab Emirates")

#### save thesaurus table ####
COUNTRY <- COUNTRY_thesaurus
save(COUNTRY, file = "modules/thesaurus/COUNTRY/COUNTRY_thesaurus.RData")