# List of packages
packages <- c("ggplot2", "dplyr", "readr", "rgeos", "rgdal", "scales", 
              "downloader", "stringr", "tidyr", "maptools", "gridExtra")

# Function to check and install missing packages
install_and_update_packages <- function(packages) {
  for (pkg in packages) {
    if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
      install.packages(pkg)
    } else {
      update.packages(pkg, ask = FALSE)
    }
  }
}

# Run the function with the list of packages
install_and_update_packages(packages)