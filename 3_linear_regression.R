# 3.1.2 Assessing the Accuracy of the Coefficient Estimates

# Standard Error (SE) allows us to estimate the accuracy a single sample mean 
# is against the population mean.

# SE = sd/sqrt(n)

# This describes the average amount that the estimate mu-hat differs from mu
# As the number of observations (n) increases SE decreases due to increased
# confidence in mu-hat provided that more observations can provide

# SEs are critical for calculating confidence intervals (CIs)
# A 95% CI is the range of values such that with 95% probability, this range 
# will contain the true unknown value of the parameter.

# Assuming a Gaussian distribution, a 95% CI for term a = a +- 2 * SE(a)

# SEs allow Hypothesis Testing to be done as hypotheses can be set up relying 
# on the SE to advise on whether a coefficient is far enough from 0 to be 
# confident that the coefficient is actually non-zero and therefore provides 
# evidence of a relationship between a feature and a target.   

# A t-statistic measures the number of standard deviations away that a is away 
# from 0. It takes the form t = (a - n - 2)/SE(a) where n are the dimensions

# Finally, a p-value can be calculated which determines the probability of 
# observing a value equal to |t| or more extreme, assuming the null hypothesis
# (e.g. that a = 0).

# A small p-value indicates it would be unlikely to observe the relationship 
# that was observed just by chance, so can therefore infer that there is a real
# association between a predictor and a response, rejecting the null and 
# accepting the alternative hypothesis. p-values should be chosen in advance, 
# but typical values are 1% or 5%.


# 3.1.3 Assessing the Accuracy of the model

# Even if the null hypothesis is rejected, it's important to assess the extent 
# to which a model fits the data. Two valuable metrics for this are:
# * the residual standard error (RSE)
# * the r-squared statistic (r2)

# RSE is the average amount that the response deviates from the true 
# regression line. RSE is given by sqrt(1/(n-2) * RSS)
# RSE is a measure of the lack of fit of the model to the data.

# The R2 statistics provides a normalised value which is never larger than 1.
# It is defined by taking 1 - RSS/TSS. As RSS tends towards 0, the R2 value gets
# closer to 1 implying that the dependent variable is perfectly explained by
# the independent variable. 0 indicates that the regression explained none of
# the variance.


# 3.2 Multiple Linear Regression