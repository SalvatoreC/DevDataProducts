DDP Course Project
========================================================
author: Salvatore Caccamo
date: September 23, 2015
transition: rotate

# <small>Fuel Consumption Prediction</small>
## <small>by using the MTCARS database and linear regression</small>


Summary
========================================================

### Goals
  - explain and motivate the application
  - how it works

### Agenda
  - exploratory data analysis
  - the linear model
  - the FCP shiny application

Exploratory Data Analysis
========================================================

### The MTCARS database
<small>

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```
</small>

The Linear Model
========================================================
left: 70%
right: 30%

<small>
![plot of chunk unnamed-chunk-2](ProjectPresentation-figure/unnamed-chunk-2-1.png) 
</small>
***
<small>
*the fitting line:*

$$y = \beta_0 + \beta_1 \cdot x$$

*the coefficients:*

$$\beta_0 = 37.29$$
$$\beta_1 = -5.34$$
</small>

The FCP Shiny Application
========================================================

### Deployed on the Rstudio's shiny server (shinyapps.io):

<small> <a>https://salvoc.shinyapps.io/DevelopingDataProducts_Course_Project</a> </small>

### Input:

  - the weight of the car in lb/1000
      - a slider between 1 and 6;
  
  - the number of cylinders
      - 4 radio buttons: unspecified, 4, 6, or 8 cylinders.

### Output:

  - the number of miles the car can run per US gallon.
