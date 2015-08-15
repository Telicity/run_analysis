---
title: "README"
output: html_document
---

Only 1 code file in project (run_analysis.R) and it has only 1 written function (run_analysis) included. Other commands used which must be able to be run are:

aggregate
as.character
c
cbind
grepl
join
list
mean
names
read.table
rbind
which
write.table

Note that the first few lines are commented out because the precise specifications for what is to be included in the repo expect that the data is already in the directory when the function is ran. Please make sure this is so.

Calling the run_analysis function writes a file called saAVG.txt which contains what was in r a data frame with 180 obserservations of 81 variables.

Variables
Activities - The first variable is the name of the activity recorded 
Subject - The second variable is the number of the subject who performed the activity
The rest of the variables represent measurements recorded that recorded means and standard deviations. The particular values in this data are the averages of all those measurements which recorded by each subject for each activity.

