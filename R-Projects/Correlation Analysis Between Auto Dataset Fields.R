#With the public Auto dataset as a source, discover relationships between vehicle specifications.
#Find correlation coefficient values and t-value, degrees of freedom, p-value 
#and confidence interval using the statistical tools in R 

#load the ISLR package containing the AUTO dataset
library(ISLR)

#check the dataframe for non-numercial fields that will need to be converted or dropped
str(Auto)

#create dataframe AutoNumerical with numerical fields only (drop name field)
AutoNumerical <- subset(Auto, select = -c(name))

#check the dataframe for non-numercial fields that will need to be converted or dropped
str(AutoNumerical)

#calculate correlation coefficients between numerical fields
cor(AutoNumerical)

#Load corrplot package to create heat map visual of correlation coefficients
library(corrplot)

#graph correlation coefficients between numerical fields heat map visual
corrplot(cor(AutoNumerical))

# note strong negative correlation between:
#mpg - cylinders
#mpg - displacement
#mpg - horsepower
#mpg - weight
#horsepower - acceleration (moderate)

#note strong positive correlation between:
#cylinders - displacement
#cylinders - horsepower
#cylinders - weight
#displacement - horsepower
#displacement - weight
#horsepower - weight

#Digging deeper into the correlation between horsepower and acceleration
#Calculating t value, degrees of freedom, p value and confidence interval
cor.test(AutoNumerical$horsepower, AutoNumerical$acceleration)
