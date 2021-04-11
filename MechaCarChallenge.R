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


#Deliverable 2
#2. Import and read in the Suspension_Coil.csv file as a table
suspensioncoil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

#3. Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- suspensioncoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- suspensioncoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups="keep")


#Deliverable 3
#1. Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch using t.test()
t.test(suspensioncoil$PSI, mu=1500)

#2. Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch using t.test() and subset()
t.test(subset(suspensioncoil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspensioncoil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspensioncoil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)






