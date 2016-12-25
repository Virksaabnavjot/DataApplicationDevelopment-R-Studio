#References: This code is done with the help of this tutorial
#http://www.harding.edu/fmccown/r/


#TASK 1
# Define the cars vector with 5 values
cars <- c(6, 15, 9, 23, 25)

# Graph the cars vector with all defaults
plot(cars)


#TASK 2
# Graph cars using green points overlayed by a line
plot(cars, type = "o", col = "green")

# Create a title with a Blue, bold/italic font
title(main="Autos", col.main="blue", font.main=4)


#TASK 3
#Now let's add a red line for trucks and specify the y-axis range directly 
#so it will be large enough to fit the sports cars data:


# Define 2 vectors
cars <- c(6, 15, 9, 23, 25)
sports_cars <- c(2, 25, 4, 29, 12)

# Graph cars using a y axis that ranges from 0 to 35
plot(cars, type="o", col="green", ylim=c(0,35))

# Graph sports_cars with red dashed line and square points
lines(sports_cars, type="o", pch=22, lty=2, col="red")

# Create a title with a blue, bold/italic font
title(main="Autos", col.main="blue", font.main=4)


#TASK 4
#Next let's change the axes labels to match our data and add a legend. 
#We'll also compute the y-axis values using the max function so any changes 
#to our data will be automatically reflected in our graph.

# Calculate range from 0 to max value of cars and sports_cars
g_range <- range(0, cars, sports_cars)

# Graph autos using y axis that ranges from 0 to max 
# value in cars or sports_cars vector.  Turn off axes and 
# annotations (axis labels) so we can specify them ourself
plot(cars, type="o", col="green", ylim=g_range, 
     axes=FALSE, ann=FALSE)

# Make x axis using Mon-Fri labels
axis(1, at=1:5, lab=c("Mon","Tue","Wed","Thu","Fri"))

# Make y axis with horizontal labels that display ticks at 
# every 4 marks. 4*0:g_range[2] is equivalent to c(0,4,8,12).
axis(2, las=1, at=4*0:g_range[2])

# Create box around plot
box()

# Graph sports_cars with red dashed line and square points
lines(sports_cars, type="o", pch=22, lty=2, col="red")

# Create a title with a black, bold/italic font
title(main="Autos", col.main="black", font.main=4)

# Label the x and y axes with dark green text
title(xlab="Days", col.lab=rgb(0,0.5,0))
title(ylab="Total", col.lab=rgb(0,0.5,0))

# Create a legend at (1, g_range[2]) that is slightly smaller 
# (cex) and uses the same line colors and points used by 
# the actual plots 
legend(1, g_range[2], c("cars","sports_cars"), cex=0.8, col=c("blue","red"), pch=21:22, lty=1:2);

