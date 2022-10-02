# MechaCar Statistical Analysis


## Overview of the Analysis
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles. By running regression analyses and t-tests, I will review production data for the MechaCar, and provide insights that may help the manufacturing team.

### Analysis Resources
* **Data Sources:** [MechaCar_mpg.csv](https://github.com/dgornowicz/mechacar-analysis/blob/main/MechaCar_mpg.csv), [Suspension_Coil.csv](https://github.com/dgornowicz/mechacar-analysis/blob/main/Suspension_Coil.csv)
* **Software:** R 4.2.1 for Windows, RStudio 2022.07.1


## Deliverable 1 - Linear Regression to Predict MPG

<img width="308" alt="Screenshot 2022-10-02 165546" src="https://user-images.githubusercontent.com/102050273/193476264-925952f9-3e37-4314-b65b-da1c74c5bc0a.png">

The linear regression model above estimates that: 

```mpg = (6.267)vehicle_length + (0.0012)vehicle_weight + (0.0688)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD - 104.0```

* Using the formula above, vehicle length, and ground clearance are statistically likely to provide non-random amounts of variance to the model or are most likely to affect the miles per gallon performance of the MechaCar's AutosRUs prototype.  
* Given the model's ```p-value of 5.35e-11```, which is lower than the 0.05 assumed statistical significance, there is strong evidence **against the null hypothesis** (slope = 0). Therefore, we can accept the alternative hypothesis that the **slope is not 0**.
* The model's ```r-squared value of .7149``` means that about 71% of the variance in mpg predictions can be explained by this model, while 29% cannot. In other words, the variables of vehicle length, spoiler angle, ground clearance, and AWD have a strong positive association with mpg. Therefore, this model effectively predicts mpg of MechaCar prototypes.


## Deliverable 2 - Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Looking at the PSI data for all three manufacturing lots, provided in the PSI summary chart below, we see that the ```variance of the suspension coils is 62.69 pounds per square inch```. Therefore, it does not exceed the design specification of 100 pounds per square inch.

<img width="163" alt="Screenshot 2022-10-02 171147" src="https://user-images.githubusercontent.com/102050273/193476532-aa0cfc68-a184-45b3-acfb-61e093f25318.png">

When we break the manufacturing data by the three lots, shown below, we see that on the one hand Lot 1 and 2 have ```variances of 0.98 and 7.47``` that are well below the design specification of 100 pounds per square inch. On the other hand, Lot 3, has a much larger ```variance of 170.29``` that is well above the design specification. The variance of Lot 3 is causing the PSI variance of the total lot population to increase significantly.

<img width="251" alt="Screenshot 2022-10-02 171116" src="https://user-images.githubusercontent.com/102050273/193476551-b5a79000-ab44-49ee-b4b2-85f2bed37417.png">

The box plot below demonstrates how much larger the variance of Lot 3 is compared to Lot 1 and 2.

<img width="348" alt="Screenshot 2022-10-02 171225" src="https://user-images.githubusercontent.com/102050273/193476576-69bf1d4a-580c-4475-82f0-82cb66ce3368.png">


## Deliverable 3 - T-Tests on Suspension Coils

<img width="281" alt="lot1_ttest" src="https://user-images.githubusercontent.com/102050273/193476761-1b14802f-4ebb-4e57-aea3-26fd65b46993.png">

**Lot 1** results show that the ```sample mean is 1,500``` and the p-value is a perfect 1. There is no statistical difference from the population mean of 1,500 pounds per square inch. In this case, we fail to reject the null hypothesis.

<img width="284" alt="lot2_ttest" src="https://user-images.githubusercontent.com/102050273/193476786-f9633746-9fda-4190-9050-777ffb36934b.png">

**Lot 2** results show ```sample mean is 1,500.2``` and the ```p-value is 0.61```. Because the p-value is much higher than the assumed statistical significance of 0.05, we fail to reject the null hypothesis. There is no statistical difference from the population mean of 1,500 pounds per square inch.

<img width="280" alt="lot3_ttest" src="https://user-images.githubusercontent.com/102050273/193476802-d740993c-fa14-4961-b092-9b81086da10f.png">

**Lot 3** results show ```sample mean is 1,496.14``` and the ```p-value is 0.04```. Because the p-value is lower than the assumed statistical significance of 0.05, we ***reject the null hypothesis*** and accept the alternative hypothesis that the true mean is not equal to 1,500. This means that this sample shows that there ***is*** a statistical difference from the population mean of 1,500 pounds per square inch.


## Deliverable 4 - Study Design: MechaCar vs Competition
Many consumers, especially families and those who have previously been in accidents, value safety when it comes to picking their car. To test MechaCar's safety rating against its competition, we need to create a null and alternative hypothesis.

**H0 (Null Hypothesis):** MechaCar's vehicle safety ratings are no different from its competitors 

**Ha (Alternative Hypothesis):** MechaCar's vehicle safety ratings are different from its competitors 

To test these, we'd need to collect safety ratings on MechaCar's models as well as its competitors from the Insurance Institute for Highway Safety, which determines saftey ratings. As the non-profit explains, their scores are determined by four factors: measurements from dummies, survival space, airbags, and seat belt effectiveness. Using that data, we could t-test the population of vehicles and each carmaker. This will help us determine if MechaCar's vehicles' safety rating scores are statistically different from its competitors as a whole and then statistically different from each competitor.
