# importing cancer data in R
library(readr)
cancer<- read.csv("cancer data for MOOC 1.csv",header = TRUE,sep = ',')
#let's see what type of variables are there.
str(cancer)
#let's see if there is any missing value.
summary(cancer)
# there is just one missi?g value in smoking variable,it's (probably) best to drop this patient from everything for ease of reporting. With just one person with missing data, the risk of bias is very low. 
# changing gender variable in factor.
cancer$gender<- as.factor(cancer$gende?)
summary(cancer$bmi)
# Mean and Median values are differ slightly so suggesting that it will be a skew but not engough to worry about.
# we have fruits and veg in different coulmns, so lets combine them and see how many people are taking 5 fruits and vegg?es in a day.
cancer$fruit_veg<- cancer$fruit + cancer$veg
summary(cancer$fruit_veg)
library(ggplot2)
ggplot()+ geom_histogram(data=cancer,aes(x=fruit_veg),bins = 10,fill="pink",col="red")+labs(x="Portions of fruits and veggies",y="Frequency")+scale_x_conti?uous(breaks = seq(from=0,to=12,by=1))
#Based on WHO recommendations, many countries recommend their citizens to consume 5 or more portions of fruit and vegetables a day as part of a healthy diet. Let's create another variable to see how many people in our ?ataset meet these recommendations.
cancer$five_per_day<- ifelse(cancer$fruit_veg>=5,"healthy","unhealthy")
table(cancer$five_per_day)
#let's explore the distribution of age and bmi in our data set.
summary(cancer$age)
ggplot()+geom_histogram(data=cancer,ae?(x=age),bins = 20,fill="lightblue",col="dark blue")+labs(x="Age",y="Frequency")+scale_x_continuous(breaks=seq(from=30,to=100,by=5))
summary(cancer$bmi)
ggplot()+geom_histogram(data=cancer,aes(x=bmi),bins = 20,fill="lightgreen",col="dark green")+labs(x="Bmi?,y="Frequency")+scale_x_continuous(breaks=seq(from=10,to=42,by=2))
#A healthy BMI according to the British National Health Service lies between 18.5 and 25.let's create a new variable, healthy_BMI. 
cancer$healthy_bmi<- ifelse(cancer$bmi>18.5 & cancer$bmi<?5, "healthy","not_healthy")
table(cancer$healthy_bmi)
#lets do chi-squared test between healthy_bmi and cancer patients.Now, Let's first create a contengency table to perform the test.
tab<- table(cancer$healthy_bmi,cancer$cancer)
tab
#Let's visualize the ?ata.
barplot(tab,beside = TRUE,legend=TRUE)
#From the graph we can say that there is some relationship between these two variables.Let's perform chi-squared test to test our hypothesis.
#H0 : The variables are independent, i.e., no association between the ?ariables HA : The variables are dependent, i.e., there is an association between the variables
#let's perform chi-squared test:
chisq.test(tab,correct = TRUE)
#Since p value is very high (100%), so there is not enough evidence to reject the null hypothesis? So, these variables are independent.
# Now, let's check if there is any relationship between fruits and vegies consumption and cancer disease.
# let's create contingency table for five_per_day and cancer.
tab2<- table(cancer$five_per_day,cancer$cancer)
ta?2
# First, I will visualize this table.
barplot(tab2, beside = TRUE, legend=TRUE)
#let's perform chi-squared test:
chi2<-chisq.test(tab2,correct = TRUE)
#though p value is not very high but it greater than 0.05 (alpha value). So, there is not enouth eviden?e to reject the null hypothesis.