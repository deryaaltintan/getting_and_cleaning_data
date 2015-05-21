---
title: "Getting and Cleaning Data Course Project 2015"
author: "Derya Altintan"
date: "May 21, 2015"
output: pdf_document
---

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### For 1st data set:

- Read the traning and test data sets and combine them at a matrix named "Data", rename activities of "Data" to be more human readable.
- Read the traning and test label sets and combine them at a matrix named "Label".
- Read the traning and test subject sets and combine them at a matrix named "Subject"
- Read future list and create a matrix with only mean and standard deviation.
- Read activity list. 
- Combine "Data", "Label", "Subject"  at a matrix named "Tidy_Data1".
- Write "Tidy_Data1.txt" file. 

#### For 2nd data set:

- Loop through subjects, then subloop through activities.
- For each activity in a subject, get the full list of measurements.
- Calculate the mean of each of these activities.
- Place the means in subsequent columns of the subject/activity row.
- Write second tiny data set to "Tidy_Data2.txt" file.