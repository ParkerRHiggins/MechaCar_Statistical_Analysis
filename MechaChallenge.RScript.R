#Deliverable 1 

#Load dplyr package
library(dplyr)

#Import file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#Perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))



#Deliverable 2

#Import file
Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

#Create total summary
total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD= sd(PSI), .groups="keep")

#Create lot summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD= sd(PSI), .groups="keep")



#Deliverable 3

# Perform t-test across all Lots
t.test(Suspension$PSI,mu = 1500)

# Perform t-test on Lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Perform t-test on Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Perform t-test on Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)