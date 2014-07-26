==================================================================
Human Activity Recognition Using Smartphones Dataset
==================================================================

This is a repo with the Course Project for Coursera.org "Getting and Cleaning Data" course. This instruction will help you to evaluate my work.

Contents:
README.md - help file
run_analysis.R - the script
CodeBook.md - the codebook

Script:
The script reads files from Samsung Data (they should be in the same directory).
It modifies the data set, doing tasks from the Course Project tasks list. Then it writes the tidy dataset into "SamsungDataVariableMeans.csv" using write.csv.

The easiest way to read this file into R is
data <- read.csv(file = "SamsungDataVariableMeans.csv")

The resulting set is tidy because it satisfies the rules:
1) each observation is a row
2) each variable is a columns
3) each unit is a table
4) variables are descriptive