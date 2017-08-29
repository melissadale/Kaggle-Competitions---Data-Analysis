#Image preprocessing steps
#libraries
library(magick)

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
