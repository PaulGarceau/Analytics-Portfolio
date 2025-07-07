#Compare the hours spent studying to whether a students passes an exam
#Plot data as points and graph logarithmic regression S Curve
#Use logarithmic regression to create a predictive model
#Predict outcome for various study times


# load necessary graphing package
library(ggplot2)

#Enter Hours studied and Pass/Fail as vectors and convert to dataframe
Hours <- c(0.50, 0.75, 1.00, 1.25, 1.50, 1.75, 1.75, 2.00, 2.25,
           2.50, 2.75, 3.00, 3.25, 3.50, 4.00, 4.25, 4.50, 4.75,
           5.00, 5.50)
Pass <- c(0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1)

hoursstudied = data.frame(Hours, Pass)


#Plot the data with logarithmic regression
ggplot(hoursstudied, aes(Hours, Pass)) + geom_point(aes()) + 
  geom_smooth(formula = y ~ x, method = 'glm', se = FALSE, method.args = list(family=binomial)) + 
  labs(x = "Hours Studied", y = "Probability of Passing",
       title = "Probability of Passing Based on Hours Studied")


#Use logarithmic regression to create a predictive model
logmodel = glm(Pass ~ Hours, family = binomial(link ="logit"), 
                                             data = hoursstudied)

logmodel$coefficients 
summary(logmodel)

#Create model to predict outcome using hour coefficiecnt and intercept

#Predict chance of passing (as a percent) for a student who studied for 2 hours 
studentstudied = 2
probofpassing = 1/(1+exp(-(-4.077713+1.504645*studentstudied)))
probofpassing

#Predict chance of passing (as a percent) for a student who studied for 12 minutes 
studentstudied = .2
probofpassing = 1/(1+exp(-(-4.077713+1.504645*studentstudied)))
probofpassing

#Predict chance of passing (as a percent) for a student who studied for 4 hours
studentstudied = 4
probofpassing = 1/(1+exp(-(-4.077713+1.504645*studentstudied)))
probofpassing

