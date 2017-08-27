#Install & load any needed libraries.

#To get access to tensorflow, install via devtools.
#req Rtools 3.4, reticulate
#tensorflow reqs 64-bit Python 3.5 or 3.6
install.packages("devtools")
library(devtools)
devtools::install_github("rstudio/tensorflow")


library(tensorflow)
install_tensorflow()

#Confirm it works.
sess = tf$Session()
hello <- tf$constant('Hello, Jessie!')
sess$run(hello)