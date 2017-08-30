#Get list of wnids
#given the wnid of a sysnset, the list of urls is at
#http://www.image-net.org/api/text/imagenet.synset.geturls?wnid=[wnid]
#ex wnid: Dog, domestic dog, Canis familiaris is n02084071
library(data.table)
library(readtext)
library(RCurl)
library(XML)

#Read in url list for a given wnid.
#Define a test synset - dog.
wnid <- "n02084071"
wnid_geturl_general <- "http://www.image-net.org/api/text/imagenet.synset.geturls?wnid="

#paste together sample url; in future throw wnid into a function for multiple wnids
wnid_url <- paste0(wnid_geturl_general, wnid)
img_urls <- data.frame(read.table(wnid_url))

#start with reading in small set of images to test function
test_urls <- head(img_urls)

#TODO - this is reading test_urls as factors not strings, so the function
#process_image can't download the image.  
# for (i in 1:length(test_urls[,1])) {
#   process_image(test_urls[i])
#   plot(gray_image) #temp for now until you get it in function
# }

