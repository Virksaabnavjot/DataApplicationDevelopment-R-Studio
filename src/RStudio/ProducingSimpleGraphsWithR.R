#References: This code is done with the help of this tutorial
#http://www.harding.edu/fmccown/r/

# Define the cars vector with 5 values
cars <- c(6, 15, 9, 23, 25)

# Graph the cars vector with all defaults
plot(cars)

# Graph cars using green points overlayed by a line
plot(cars, type = "o", col = "green")

# Create a title with a Blue, bold/italic font
title(main="Autos", col.main="blue", font.main=4)


