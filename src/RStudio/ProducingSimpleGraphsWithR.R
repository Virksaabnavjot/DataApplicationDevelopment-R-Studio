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


#Now let's add a red line for trucks and specify the y-axis range directly 
#so it will be large enough to fit the sports cars data:


# Define 2 vectors
cars <- c(6, 15, 9, 23, 25)
sports_cars <- c(2, 25, 4, 29, 12)

# Graph cars using a y axis that ranges from 0 to 30
plot(cars, type="o", col="green", ylim=c(0,30))

# Graph sports_cars with red dashed line and square points
lines(sports_cars, type="o", pch=22, lty=2, col="red")

# Create a title with a blue, bold/italic font
title(main="Autos", col.main="blue", font.main=4)

