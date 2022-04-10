# Hypothesis-testing-in-Cancer-data

## Introduction:
Cancer is one of the most dangerous disease. As there is cure for some types of cancer it is very costly and all humans cannot afford it. So diagnosing the cancer in early stages itself is the best thing we can do. So this project is all about exploratrory data analysis and hypothesis testing on cancer data which is a part of the course [Introduction to Statistics & Data Analysis in Public Health](https://www.coursera.org/learn/introduction-statistics-data-analysis-public-health)


![M1310571-Cancer](https://user-images.githubusercontent.com/90656596/162630677-faab441d-98d9-4d87-adc1-576de06bfaae.jpg)

## Hypothesis Testing:
Hypothesis testing is a key concept in public health medicine and in science as a whole. In this project, I have used Chi-squared Test to see whether people who got cancer are more likely, equally likely, or less likely to eat five portions of fruit and vegetables daily. 
Next, I used Chi-squared test to see if there any relationship between cancer patients and healthy BMI (A healthy BMI according to the British National Health Service lies between 18.5 and 25)


## Results:
### Chi-squared test for five portions of fruits and vegetables daily: 

H0 : There is no relationship between fruits and veggies intake and cancer patients.
H1 : There is an association between fruits and veggies intake and cancer disease.

X-squared = 2.4265, df = 1, p-value = 0.1193

Though p value is not very high but it greater than 0.05 (alpha value). So, there is not enouth evidence to reject the null hypothesis. 

### Chi-squared test to test the relation between BMI and cancer

H0 : The variables are independent, i.e., no association between the variables. 
H1 : The variables are dependent, i.e., there is an association between the variables.

X-squared = 4.806e-31, df = 1, p-value = 1

Since p value is very high (100%), so there is not enough evidence to reject the null hypothesis. So, these variables are independent.
