# MTCARS Analysis Project

This project demonstrates several statistical and machine learning techniques using the **mtcars** dataset in R. It includes data visualization, correlation analysis, linear regression, decision tree modeling, and a Naïve Bayes classifier to explore and predict *Miles Per Gallon (mpg)* performance.

---

## Table of Contents
1. [Overview](#overview)
2. [Setup & Requirements](#setup--requirements)
3. [Analysis Breakdown](#analysis-breakdown)
4. [Usage](#usage)
5. [Results & Outputs](#results--outputs)
6. [Possible Improvements](#possible-improvements)
7. [Author](#author)

---

## Overview
- **Dataset**: The [mtcars](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/mtcars) dataset, which contains fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).
- **Goal**: Use various techniques—visualizations, linear regression, decision tree regression, and Naïve Bayes classification—to analyze and predict mpg.

---

## Setup & Requirements
1. **R version 4.0+**  
2. **Packages**:  
   - [**ggplot2**](https://cran.r-project.org/web/packages/ggplot2/index.html) for data visualization.  
   - [**rpart**](https://cran.r-project.org/web/packages/rpart/index.html) for decision tree modeling.  
   - [**rpart.plot**](https://cran.r-project.org/web/packages/rpart.plot/index.html) for plotting decision trees.  
   - [**e1071**](https://cran.r-project.org/web/packages/e1071/index.html) for implementing Naïve Bayes.  

Install them (if needed) using:
```r
install.packages(c("ggplot2", "rpart", "rpart.plot", "e1071"))
