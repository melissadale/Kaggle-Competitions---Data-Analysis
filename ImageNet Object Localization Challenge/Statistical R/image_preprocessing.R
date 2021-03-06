#Image preprocessing steps
library(magick) #like image magick :)

#init sample url
url <- "http://farm4.static.flickr.com/3020/2755290967_ee3eb0444c.jpg"

#load image by url
loaded_image <- image_read(url)
#plot(loaded_image)

#Resize image to standard size
sized_image <- image_resize(loaded_image, "250x250!")
#plot(sized_image)

#Convert to grayscale.
gray_image <- image_convert(sized_image, colorspace = "gray")
#plot(gray_image)

#TODO: build this into a function that reads in from a list of URLs
#and then passes back image data

process_image <- function(urlPath, resolution = "250x250!") {
  loaded_image <- image_read(urlPath)
  sized_image <- image_resize(loaded_image, resolution)
  gray_image <- image_convert(sized_image, colorspace = "gray")
  #write out image to some index
}

process_image(url)
