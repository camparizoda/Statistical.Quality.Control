# Description: X-Bar/R Control Charts
#IMPORTANT: In a real case application process must exhibit a normal distribution

library(qcc)

#generate a data frama using random normal distrubution function 
#Mean=250, SD=20, n=10000
Air_Quality_May <- data.frame(
  Air_1 = rnorm(10000, 250, 20),
  Air_2 = rnorm(10000, 250, 20),
  Air_3 = rnorm(10000, 250, 20),
  Air_4 = rnorm(10000, 250, 20),
  Air_5 = rnorm(10000, 250, 20))

# Creates R chart to measure the dispersion or variance of the process
RChart <- qcc(Air_Quality_May, type="R", nsigmas=3)

# Creates X chart to measure central tendency of the process
XChart <- qcc(Air_Quality_May, type="xbar", nsigmas=3)

# See graph at http://rpubs.com/CampariZoda/280720

# For further readings see: 
# https://qualityandinnovation.files.wordpress.com/2015/11/xbar-r-75-925_9.pdf
# http://www.wiley.com/college/sc/reid/chap6.pdf



