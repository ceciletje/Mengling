############# Proficiency Correlation #####################
getwd()
#[1] 'C:/Users/Linda/Documents'
setwd('C:/Users/Linda/Desktop/Rdocument')


dat1 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//29L2Proficiency.csv', header=T, sep=',')

names(dat1)
#[1] "Subject"                                     "Group"                                      
#[3] "Proficiency.Score"                           "Percentile.Equivalent.Proficiency.Score"    
#[5] "Self.Evaluation.Score"                       "Percentile.Equivalent.Self.Evaluation.Score"
#[7] "Age.Chinese"                                
str(dat1)
#'data.frame':	29 obs. of  7 variables:
#$ Subject                                    : int  1 2 3 4 5 6 7 8 9 10 ...
#$ Group                                      : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Proficiency.Score                          : int  23 23 19 25 23 21 18 15 19 22 ...
#$ Percentile.Equivalent.Proficiency.Score    : int  92 92 76 100 92 84 72 60 76 88 ...
#$ Self.Evaluation.Score                      : int  35 35 23 30 34 28 22 23 31 25 ...
#$ Percentile.Equivalent.Self.Evaluation.Score: num  4.38 4.38 2.88 3.75 4.25 ...
#$ Age.Chinese                                : int  18 19 19 24 18 14 17 20 18 17 ...

dat1$Subject <- factor(dat1$Subject)
levels(dat1$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23"
#[24] "24" "25" "26" "27" "28" "29"
levels(dat1$Subject) <- c('L2.1','L2.2','L2.3','L2.4','L2.5','L2.6','L2.7','L2.8','L2.9','L2.10','L2.11','L2.12','L2.13','L2.14',
                          'L2.15','L2.16','L2.17','L2.18','L2.19','L2.20','L2.21','L2.22','L2.23','L2.24','L2.25','L2.26','L2.27','L2.28','L2.29')
save(dat1, file='C://Users//Linda//Desktop//Rdocument//src//Proficiency.rda')

load('C://Users//Linda//Desktop//Rdocument//src//Proficiency.rda')

### Correlation: the relationship between two quantative variables, that is, 
### Percentile.Equivalent.Proficiency.Score and Percentile.Equivalent.Self.Evaluation.Score,
### Positive correlation: if one increases/decreases, the other one increases/decreases?
install.packages(c('ggplot2','energy','car'))
library(ggplot2);library(energy); library(car)

plot(dat1$Percentile.Equivalent.Proficiency.Score,dat1$Percentile.Equivalent.Self.Evaluation.Score,main='Scatter plot of dat1$Percentile.Equivalent.Proficiency.Score and dat1$Percentile.Equivalent.Self.Evaluation.Score')
m <- lm(dat1$Percentile.Equivalent.Proficiency.Score  ~ dat1$Percentile.Equivalent.Self.Evaluation.Score)
abline(m)

ggplot(dat1, aes(x=Percentile.Equivalent.Proficiency.Score, y=Percentile.Equivalent.Self.Evaluation.Score)) + geom_point(shape=1, size=3) + stat_smooth(method=lm)
# The Pearson product-moment correlation coefficient
cor(dat1$Percentile.Equivalent.Proficiency.Score,dat1$Percentile.Equivalent.Self.Evaluation.Score)
#[1] 0.6755185
# The coefficient is positive: r=0.676,
# The closer r to 0, the more individual points deviate from the line and the weaker the correlation.
# As a very approximate rule of thumb, if r is equal to or greater than 0.7 or smaller than -0.7, the correlation is considered to be strong.
# if r is between 0.3 and 0.7 or between -0.3 and -0.7, it is considered to be moderate.
# if r is between 0 and 0.3 or 0 and -0.3, the correlation is considered to be weak.
# However, a steep slope does not mean that the correlation is strong, it only shows the number of units by which y will change if x changes, 
# the angle of the slope also depends on how R scales the axes.

# Test the significance of the correlation coeffient
#mvnorm.etest(cbind(dat1$Percentile.Equivalent.Proficiency.Score,dat1$Percentile.Equivalent.Self.Evaluation.Score))

#Energy test of multivariate normality: estimated parameters
#data:  x, sample size 29, dimension 2, replicates 999
#E-statistic = 0.87942, p-value = 0.07307

# ncvTest(m)
#Non-constant Variance Score Test 
#Variance formula: ~ fitted.values 
#Chisquare = 0.2423684    Df = 1     p = 0.6225007 

#durbinWatsonTest(m)
#lag Autocorrelation D-W Statistic p-value
#1       0.2350631      1.509665   0.186
#Alternative hypothesis: rho != 0

cor.test(dat1$Percentile.Equivalent.Proficiency.Score,dat1$Percentile.Equivalent.Self.Evaluation.Score,alternative='greater')
# Pearson's product-moment correlation
# data:  dat1$Percentile.Equivalent.Proficiency.Score and dat1$Percentile.Equivalent.Self.Evaluation.Score
# t = 4.7605, df = 27, p-value = 2.899e-05
# alternative hypothesis: true correlation is greater than 0
# 95 percent confidence interval:
# 0.4607338 1.0000000
# sample estimates:
# cor 
# 0.6755185
# the p-value is very small, so the null hypothesis is of no correlation can be rejected. 
# So, the Chinese proficiency test score and the self-evaluation score has a positive correlation, that is, either of them can be taken as the Chinese proficiency variable.
# So, Chinese proficiency test score is used as a predictor, that is, 'Percentile.Equivalent.Proficiency.Score'is taken as the Chinese proficiency variable.

## corresponding to L2 learners' Chinese proficiency test score and self-evaluation score, all native Chinese have the full score for both tests.
## each native Chinese speaker's Chinese proficiency test score is 25, that is, 'Percentile.Equivalent.Proficiceny.Score' is 100,
## each native Chinese speaker's self-evaluation score is 40, that is,'Percentile.Equivalent.Self.Evaluation.Score' is 5.

```{r}
getwd()

setwd('C:/Users/Linda/Desktop/RDocument')

load('C://Users//Linda//Desktop//Rdocument//src//Proficiency.rda')

install.packages(c('ggplot2','car'))
library(ggplot2); library(car)

plot(dat1$Percentile.Equivalent.Proficiency.Score,dat1$Percentile.Equivalent.Self.Evaluation.Score,
     main='Scatter plot of dat1$Percentile.Equivalent.Proficiency.Score and 
     dat1$Percentile.Equivalent.Self.Evaluation.Score')

m <- lm(dat1$Percentile.Equivalent.Proficiency.Score  ~ dat1$Percentile.Equivalent.Self.Evaluation.Score)
abline(m)

ggplot(dat1, aes(x=Percentile.Equivalent.Proficiency.Score, y=Percentile.Equivalent.Self.Evaluation.Score))
+ geom_point(shape=1, size=3) + stat_smooth(method=lm)

# The Pearson product-moment correlation coefficient
cor(dat1$Percentile.Equivalent.Proficiency.Score,dat1$Percentile.Equivalent.Self.Evaluation.Score)

cor.test(dat1$Percentile.Equivalent.Proficiency.Score,dat1$Percentile.Equivalent.Self.Evaluation.Score,
         alternative='greater')
```
```{r}
getwd()

setwd('C:/Users/Linda/Desktop/RDocument')

load('C://Users//Linda//Desktop//Rdocument//src//AttentionData.rda')

require(survival)

## defining the DV (time to correct response) #
yy <- Surv(attention$SlideTarget.RT, event=attention$SlideTarget.ACC==1)

## Cox Proportional Hazard modelling
dat.surv3 <- coxph(yy ~ WarningType + FlankerType + TargetType + Group*TargetDirection + frailty.gaussian(Trial, sparse=F), attention)
# summary(dat.surv3)

## plot for item random effect:
# for model: dat.surv3 <- coxph(yy ~ WarningType + FlankerType + TargetType + Group*TargetDirection + frailty.gaussian(Trial, sparse=F),attention)
items <- 1:96
resp <- coef(dat.surv3)[-c(1:9,106)]
item.effect <- lm(resp ~ items)
plot(items, resp, main="Random effect estimates", xlab="Item", ylab="Estimates", axes=F)
axis(2)
axis(1, at=1:96)
abline(item.effect,col=2, lty=3)
# summary(item.effect)
```

```{r}
getwd()

setwd('C:/Users/Linda/Desktop/RDocument')

load('C://Users//Linda//Desktop//Rdocument//src//AttentionData.rda')

require(survival)

## defining the DV (time to correct response) #
yy <- Surv(attention$SlideTarget.RT, event=attention$SlideTarget.ACC==1)

## Cox Proportional Hazard modelling
dat.surv3 <- coxph(yy ~ WarningType + FlankerType + TargetType + Group*TargetDirection + frailty.gaussian(Trial, sparse=F), attention)
summary(dat.surv3)
```

