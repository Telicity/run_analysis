Only 1 code file in project (run_analysis.R) and it has only 1 written function (run_analysis) included. Other commands used which must be able to be run are:

1. aggregate
2. as.character
3. c
4. cbind
5. grepl
6. join
7. list
8. mean
9. names
10. read.table
11. rbind
12. which
13. write.table

Note that the first few lines are commented out because the precise specifications for what is to be included in the repo expect that the data is already in the directory when the function is ran. Please make sure this is so.

Calling the run_analysis function writes a file called saAVG.txt which contains what was in r a data frame with 180 obserservations of 68 variables.

I'm adding a note here and in the Codebook because of the concern about naming variables so that they are readable:
I have kept the original names that the Samsung study used rather than guessing about how best to turn these names into a what amounts to a sentence partly because I don't like guessing, and partly because I fundamentally disagree with the idea having dozens and dozens of variable with names far longer than the too-long names we already have makes the data "tidy".

The reality is that no one would read this file to actually use the data given if they didn't understand what these abbreviations mean, and if those people using it were trying to present it to someone non-technical, they simply could not use all of this data. It would have to be turned into some summarization that cut out far more details than we've done.

As such to me this is as readable as we can get things.



