### MechaCar Analysis

library('tidyverse') # import dependecy
setwd("C:/Users/david/OneDrive/R_Analysis/01_Demo") # set working directory


## Deliverable 1

# import and read mechacar data
mechaData <- read.csv(file = 'MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)

# multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaData)

# summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaData))


## Deliverable 2

# import and read suspension data
suspensionData <- read.csv(file = 'Suspension_Coil.csv', check.names = F,stringsAsFactors = F)

# create summary dataframe
total_summary <- suspensionData %>% summarise(
  Mean = mean(PSI),
  Median = median(PSI),
  Variance = var(PSI),
  SD = sd(PSI),
  .groups = 'keep'
)

# create grouped summary dataframe
lot_summary <- suspensionData %>% group_by(Manufacturing_Lot) %>% summarise(
  Mean = mean(PSI),
  Median = median(PSI),
  Variance = var(PSI),
  SD = sd(PSI),
  .groups = 'keep'
)

# create box plot of total summary
pltTotal <- ggplot(suspensionData,aes(y=PSI))
pltTotal + geom_boxplot()

# create box plot of lot summary
pltLot <- ggplot(suspensionData, aes(x=Manufacturing_Lot,y=PSI))
pltLot + geom_boxplot()


## Deliverable 3

# t test total psi
t.test(suspensionData$PSI,mu=1500)

# t test subset lots psi
lot1 <- subset(suspensionData,Manufacturing_Lot=='Lot1')
lot2 <- subset(suspensionData,Manufacturing_Lot=='Lot2')
lot3 <- subset(suspensionData,Manufacturing_Lot=='Lot3')

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)