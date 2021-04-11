#Deliverable 1
#3. Load dplyr package
library(dplyr)

#4. Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

head(mechacar)

#5. Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar)

#6. Determine the p-value and the r-squared value for the linear regression model using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar))