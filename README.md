# ExampleofTDDUsingR
Sample R code to demonstrate Test driven development using testthat package in R. Also how auto grading can be done.
1. Open the R Project file in RStudio instead of the indvidual files so that working directory is set automatically. Else some code changes would be required to test and code folders in auto_test function.
2. Have two folders, one in which code is kept and another in which testcase files are present.
3. The main file is auto_code.R, that executes auto_code function with 2 parameters.
4. First parameter is the folder that contains source code and second parameter is the folder that contains test cases.
5. On any change of code or test cases, the auto_code runs all the test cases again.
6. There is a last test case written to print result (written for failure)
7. This sample also demonstrates how auto grading can be done for a R assignment.
