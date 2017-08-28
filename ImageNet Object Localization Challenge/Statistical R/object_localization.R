#Install & load any needed libraries.

#To get access to tensorflow, install via devtools.
#req Rtools 3.4, reticulate
#tensorflow reqs 64-bit Python 3.5 or 3.6
#tensorflow reqs Anaconda, then pip install tensorflow
install.packages("devtools")
install.packages("reticulate")
library(devtools)
library(reticulate)
devtools::install_github("rstudio/tensorflow")


library(tensorflow)
#before you run the next line, make sure that
#you have already pip installed tensorflow in anaconda.
install_tensorflow()

#Make sure R can find your installation
#Sys.setenv(TENSORFLOW_PYTHON="C:/Users/Home/AppData/Local/Programs/Python")


#Confirm the r interface to tensorflow works.
#If not working out the gate, close out of anaconda + rstudio and restart rstudio.
sess = tf$Session()
hello <- tf$constant('Hello, Jessie!')
sess$run(hello)
#SUCCESS!!!
