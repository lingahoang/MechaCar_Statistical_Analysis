# MechaCar Challenge


## Project Overview 
### Executive Summary 

For the past few weeks, AutosRUs' managment has been suffering from production troubles that are blocking the manufacturing team's progress with the newest prototype, the MechaCar. By using RStudio, we will perform analysis with given data to help the team with further developtiong in the project. 

__Data Sources__
  - [MechaCar_mpg.csv](MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv)
  - [Suspension_Coil.csv](MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv)

__Software Used__
RStudio


### Deliverable 1: Linear Regression to Predict MPG
 
![__MPG DataFrame__](https://github.com/lingahoang/MechaCar_Statistical_Analysis/blob/main/Data_Source/MechaCar_Dataframe.png)
  
__Table 1: MPG DataFrame__
  

![__Linear Regression Model__](https://github.com/lingahoang/MechaCar_Statistical_Analysis/blob/main/Data_Source/Linear_Regression.png)

__Table 2: Linear Regression Model__


![__Linear Regression Model with The Intended P-values__](https://github.com/lingahoang/MechaCar_Statistical_Analysis/blob/main/Data_Source/Summary_Statistics.png)

__Table 3: Linear Regression Model with The Intended P-values__



1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  *Looking at Table 3, it can be confirmed that vehicle length with p-value equals 2.06e-12 and ground clearance with p-value equals 5.21e08 both provided  a non-random of variance to the mpg values in the dataset.*

2. Is the slope of the linear model considered to be zero? Why or why not?

  *Looking at Table 3, the p-value is 5.35e-11, we can confirmed that is much smaller than 0.05%. This sugguested that we have enough evidence to reject the null hypothesis, and the slope of the linear model is not zero.*
  
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  *Table 3 analysis has r-squared value is 0.7149, which means 71% of all mpg predicitons will be conceited by this model. In this case, the model will have high accuracy of predicting the MechaCar mpg prototype will be fairly effective.*
  


### Deliverable 2: Summary Statistics on Suspension Coils


__Table 4: Total Summary of Suspension Coils DataFrame__

![__Total Summary__](https://github.com/lingahoang/MechaCar_Statistical_Analysis/blob/main/Data_Source/Total_Summary.png)


__Table 5: Suspension Coil per Lot Summary__ 

![__Lot Summary__](https://github.com/lingahoang/MechaCar_Statistical_Analysis/blob/main/Data_Source/Lot_Summary.png)



The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

*Table 4 shows a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots. As the number indicated, the variance under all three lots combined is under allowance of 100 psi. However, when we performed an individual lot summary, there are some different that we can see:*
  
  *. Lot 1 and lot 2 have the variance below 8 psi with a low margin of standard deviation.*
 
 *. Lot 3 has the variance at 170 psi with the standard deviation at 13.*

![__Manufacturing Lot per PSI__](https://github.com/lingahoang/MechaCar_Statistical_Analysis/blob/main/Data_Source/PSI_Boxplot.png)
__Table 6: __

### Deliverable 3: T-Tests on Suspension Coils

![Ttest_all_lot](https://user-images.githubusercontent.com/107448172/193958040-63acc4b9-715e-4b8b-a94e-9185cca57a45.png)

__Table 7: T-test for all Manufacturing Lot__


![Ttest_each_lot](https://user-images.githubusercontent.com/107448172/193958060-baa9f517-8df9-498e-91f8-c40cae30a8c6.png)

__Table 8: T-test for Each Lot__

T-test was performed on table 7 and table 8, while we used t-test to compareds all manufacturing lots against mean PSI of the population, table 8 has 3 differnt t-test performed to compare each manufacturing lot against mean PSI of the population. As we can confirmed, the sample mean of all lots is not drastically different from the population mean with a p-value of 0.06. However with table 8, the sample t-test was performed in lot 1 and 2 are not statiscally different to the population mean with the p-value of  1 and 0.60 respectively comparing to lot 3 p-value is 0.04 which is way smaller than the population mean. 

### Deliverable 4: Study Design: MechaCar vs Competition 

MechaCar is a great prototype to begin with. However, there are more factors to be considered when it comes to competition in the marketplace. Here are some dependent variable can be use to test to see how this prototype could performs against the competition. We sugguested to do a pool survey to rank each  of these metrics below on which metrics should be in a top-tier consideration:
  - Fuel cost for a full tank
  - City or highway efficiency for MPG. 
  - Maintenance cost on each 5k and each 10k. 

All of these factors above can be used to make further steps in development when it comes into comparing MechaCar with other similar competitors. 

The null hypothesis will be none of these metrics will affect the overall competitive advantage of MechaCar.
An alternative hypothesis can be some or all of these above metrics will affect the overall competitive advantages of MechaCar with other similar competitor, and the development team should into which metric that has the most impact statistically. 

In order to test these hypotheses with all suggested metrics, we are recommending to use multiple linear regression to predict whether how much of those metrics will be accounted in order to set MechaCar apart from it competitor. We could also use one-sample t-test to see is there a statistical difference between the mean of the sample distribution and the mean of population distribution, which can affect the mass production line in the overall producing and distributing center. The sample size shold be large, so the collection of the dataset will be huge and unbiased within the past recent year in order to yield a high understanding of the market to perform a good and a better MechaCar final production. 


