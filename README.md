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
```
## Running the Analysis

To run this analysis, load the script into your R environment and execute it. The script performs the following steps:

    Loading the required libraries - Ensures all necessary libraries are available.
    Loading and summarizing the dataset - Loads the mtcars dataset and outputs a summary and initial plots.
    Correlation Analysis - Computes and displays the correlation matrix of the variables.
    Regression Analysis - Performs linear regression and plots residuals.
    Decision Tree Analysis - Creates and plots a decision tree to predict miles per gallon (MPG).
    Naïve Bayes Classification - Implements a Naïve Bayes model to classify cars based on MPG.

## Files

    mtcars_analysis.R - Main script file that contains all the code for the project.

## Results

This script will output several plots that provide insights into the data, including:

    Pair plots showing relationships between key variables.
    A scatter plot of Displacement vs. MPG with a linear regression line.
    Residual plots from the regression model.
    A decision tree visual representation.
    Scatter plot comparing actual MPG to predicted MPG.
    Naïve Bayes model predictions and confusion matrix.

## Authors

   Anirudh Deveram

## License

This project is licensed under the MIT License - see the LICENSE file for details.
## Acknowledgments

    Thanks to the creators of the mtcars dataset.
