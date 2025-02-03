# Car Analyzer

## Overview
This project uses R to analyze textual descriptions and categorize cars based on various features. It incorporates data cleaning, feature extraction, and a decision tree classifier to predict car categories or labels from the textual data.

## Purpose
- **Showcase Text Preprocessing** for car-related descriptions.  
- **Demonstrate a Simple Classification Pipeline** to predict a car’s category (e.g., type, condition, etc.) from text.  
- **Explore Basic Analytics** on a car dataset, gaining insights into how different features or words correlate with certain labels.

## What It Does
1. **Reads and Prepares the Data**  
   - Loads a CSV file (`train.csv`) containing car descriptions and their respective labels.  
   - Cleans and normalizes text (removing punctuation, numbers, whitespace) using the `tm` package.

2. **Transforms Text to TF-IDF**  
   - Builds a TF-IDF-based Document-Term Matrix to quantify word importance.  
   - Ensures no empty documents by filtering out entries with no meaningful text.

3. **Builds and Evaluates a Decision Tree**  
   - Uses `caret` to partition data into training and test sets (80/20 split).  
   - Trains a decision tree classifier (`rpart`) on the training data to predict each car’s label.  
   - Generates a confusion matrix to gauge how well the model performs on unseen test data.

## Requirements
- **R version 4.0+**  
- **Packages**:  
  - [`tm`](https://cran.r-project.org/web/packages/tm/index.html)  
  - [`data.table`](https://cran.r-project.org/web/packages/data.table/index.html)  
  - [`caret`](https://cran.r-project.org/web/packages/caret/index.html)  
  - [`rpart`](https://cran.r-project.org/web/packages/rpart/index.html)  

## How to Run
1. **Clone or Download** this repository to your machine.
2. **Install Required Packages**:
   ```r
   install.packages(c("tm", "data.table", "caret", "rpart"))
