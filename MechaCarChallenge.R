# Technical Analysis

# Download package
library(tidyverse)
library(jsonlite)


# Deliverable 1: Linear Regression to Predict MPG

# Import and read the file 
mechacar_table <- read.csv (file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# View the data frame 
head(mechacar_table)

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight +  spoiler_angle + ground_clearance,mechacar_table)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight +  spoiler_angle + ground_clearance,mechacar_table))


# Deliverable 2: Create Visualizations for the Trip Analysis

# Import and read the file 
suspensioncoil_table <- read.csv (file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

# View the data frame 
head(suspensioncoil_table)

# Create a total summary
total_summary <- summarize(suspensioncoil_table,
                           Mean = mean(PSI),
                           Median = median(PSI),
                           Variance = var(PSI),
                           SD = sd(PSI)
)
# View total summary table
head(total_summary)


# Create a lot summary
lot_summary <- summarize(group_by(suspensioncoil_table, Manufacturing_Lot),
                           Mean = mean(PSI),
                           Median = median(PSI),
                           Variance = var(PSI),
                           SD = sd(PSI)
)
# View lot summary table
head(lot_summary)

head(suspensioncoil_table)


# Deliverable 3:
?t.test()
# T-test compares all manufacturing lots against mean PSI of the population
t.test(suspensioncoil_table$PSI, mu=1500)


# Three T-tests compare each manufacturing lot against mean PSI of the population

lot1 <- subset(suspensioncoil_table, Manufacturing_Lot == "Lot1")
t.test(lot1$PSI, mu=1500)

lot2 <- subset(suspensioncoil_table, Manufacturing_Lot == "Lot2")
t.test(lot2$PSI, mu=1500)

lot3 <- subset(suspensioncoil_table, Manufacturing_Lot == "Lot3")
t.test(lot1$PSI, mu=1500)


# Deliverable 4: 
