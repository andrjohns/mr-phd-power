# Sample Size Requirements for MR's PhD

## Choosing Sample Sizes Through Montecarlo Simulation - Bias & Power

Choosing the sample size for a study is a balance of two concepts: bias and power.

### Power

Power refers to the probability of identifying a significant effect in the current sample size, given that the effect truly exists in the population. We aim for a power of .80 or greater. 

However, it’s important that bias & power are interpreted in combination, because a given estimate might always be found to be significant regardless of sample size (highly powered), but this is just because the parameters and standard errors are highly biased and inaccurate.

### Bias

Bias refers to how ‘wrong’ the estimate would be in the current sample size (i.e., how much smaller or larger than the ‘true’ effect would the estimate be?). Bias is further sub-divided into two parts: parameter bias and standard error (SE) bias. Parameter bias refers to the bias of the estimate itself (i.e., the regression coefficient or odds ratio), whereas SE bias (unsurprisingly) refers to the bias of the standard errors which determine how significant the estimate is (i.e., the p-value). We do not want the parameter or standard error bias to exceed 10%.

## Results

When simulating the power to detect a ‘Medium’ effect from six predictors and an outcome with a 9% event rate in a sample of 100 individuals, the model was highly powered but also severely biased:

| Sample Size | Parameter Bias | SE Bias | Power |
| ----------- | -------------- | ------- | ----- |
| 100 | 70.16% | -94.82% | .920|
| 200 | 9.65% | -7.54% | .998|

Given that the model is more than adequately powered, but it is biased, we can instead split the 6-predictor model into two 3-predictor models. Using this approach, we can have both very good power and acceptable bias with only 115 participants:

| Sample Size | Parameter Bias | SE Bias | Power |
| ----------- | -------------- | ------- | ----- |
| 115 | 10.39% | -9.30% | .975|

Given that the individual models will now be over-powered, we can correct the p-values for multiple comparisons using the Bonferroni-Holm correction while still retaining adequate power in the individual models.

## Reproducibility

The R & Mplus code to reproduce all results is provided in this repository

