library(devtools, imager) #requires devtools and imager

devtools::install_github("melissanjohnson/pupR", force=TRUE)
library(pupR)
for(i in 1:100){
  try(pupR:pupR())
  Sys.sleep(2)
}
