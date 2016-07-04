getwd()
#[1] "C:/Users/Linda/Documents"
setwd('C:/Users/Linda/Desktop/Rdocument')

load("C:/Users/Linda/Desktop/Rdocument/src/Exp1criticaldata.rda")
str(subdat)
#'data.frame':	4860 obs. of  53 variables:
#$ Subject                                    : Factor w/ 54 levels "L2.1","L2.10",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Attention                                  : num  0.0383 0.0383 0.0383 0.0383 0.0383 ...
#$ Proficiency.Score                          : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Proficiency                                : num  92 92 92 92 92 92 92 92 92 92 ...
#$ Self.Evaluation.Score                      : int  35 35 35 35 35 35 35 35 35 35 ...
#$ Percentile.Equivalent.Self.Evaluation.Score: num  4.38 4.38 4.38 4.38 4.38 ...
#$ Age.Chinese                                : num  18 18 18 18 18 18 18 18 18 18 ...
#$ Session                                    : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                                        : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group                                      : Factor w/ 2 levels "1","2": 1 1 1 1 1 1 1 1 1 1 ...
#$ Handedness                                 : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                                        : Factor w/ 2 levels "female","male": 1 1 1 1 1 1 1 1 1 1 ...
#$ Context                                    : Factor w/ 2 levels "Local","Long.dist": 1 2 2 2 1 1 1 1 1 2 ...
#$ Verb.Type                                  : Factor w/ 3 levels "v3","v1","v2": 2 1 1 3 3 1 2 3 1 2 ...
#$ Distance                                   : Factor w/ 2 levels "LD","local": 2 1 1 1 1 2 2 1 2 2 ...
#$ Context.Sentence                           : Factor w/ 90 levels "LDbangzhu.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CS.RT                                      : int  5402 6049 13877 5259 5148 6591 5653 3593 3336 5798 ...
#$ CSTSwhole                                  : Factor w/ 90 levels "LDbangzhuwhole.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CSTSwhole.RT                               : int  14064 17572 21645 19276 51187 4969 17937 18585 10845 24745 ...
#$ Question                                   : Factor w/ 45 levels "bangzhuquestion.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ CorrectAnswer                              : int  2 1 1 1 1 2 2 1 2 2 ...
#$ Question.ACC                               : int  1 1 0 1 0 1 0 0 0 0 ...
#$ Question.RT                                : int  2800 6171 5480 7112 2658 1239 4601 2492 4807 3557 ...
#$ Embedded.Verb                              : Factor w/ 46 levels "bangzhu.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ Embedded.Verb.RT                           : int  190 162 778 487 722 982 443 198 149 458 ...
#$ Pronoun                                    : Factor w/ 3 levels "ziji.bmp","ziji9.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Pronoun.RT                                 : int  231 596 1257 991 416 514 683 216 399 1007 ...
#$ Spillover1                                 : Factor w/ 4 levels "dajia.bmp","dajia9.bmp",..: 1 1 1 1 1 1 1 1 3 1 ...
#$ Spillover1.RT                              : int  180 183 1041 710 540 1116 555 315 202 207 ...
#$ Spillover2                                 : Factor w/ 53 levels "bu.bmp","dou.bmp",..: 2 5 5 5 8 5 2 2 2 2 ...
#$ Spillover2.RT                              : int  196 301 396 305 428 756 316 284 298 391 ...
#$ Spillover3                                 : Factor w/ 18 levels "dengdai.bmp",..: 11 4 2 8 1 3 11 11 14 11 ...
#$ Spillover3.RT                              : int  459 399 1754 364 536 685 559 374 410 218 ...
#$ Matrix.Subject                             : Factor w/ 4 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT                          : int  603 481 581 468 527 560 341 227 390 626 ...
#$ Matrix.Verb                                : Factor w/ 9 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT                             : int  292 158 283 277 345 341 220 249 199 370 ...
#$ Embedded.Subject                           : Factor w/ 17 levels "lisi.bmp","dengdai.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT                        : int  188 278 191 454 322 308 516 170 143 292 ...
#$ NOT                                        : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT                                     : int  0 0 0 0 0 0 0 0 0 0 ...
#$ Handness                                   : Factor w/ 2 levels "mixed","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Stand.Score                                : int  111 111 111 111 111 111 111 111 111 111 ...
#$ Memory                                     : num  77 77 77 77 77 77 77 77 77 77 ...
#$ Condition                                  : Factor w/ 6 levels "Local.v3","Long.dist.v3",..: 3 2 2 6 5 1 3 5 1 4 ...
#$ Embedded.Verb.LogRT                        : num  5.25 5.09 6.66 6.19 6.58 ...
#$ Pronoun.LogRT                              : num  5.44 6.39 7.14 6.9 6.03 ...
#$ Spillover1.LogRT                           : num  5.19 5.21 6.95 6.57 6.29 ...
#$ Spillover2.LogRT                           : num  5.28 5.71 5.98 5.72 6.06 ...
#$ Spillover3.LogRT                           : num  6.13 5.99 7.47 5.9 6.28 ...
#$ TestSentence.RT                            : int  2339 2558 6281 4056 3836 5262 3633 2033 2190 3569 ...
#$ Reading.baseline                           : num  4618 4618 4618 4618 4618 ...
#$ Reading.baseline.LogRT                     : num  8.44 8.44 8.44 8.44 8.44 ...

data <- subdat

## DV: Antecedent (i.e. local or long-distance choice), 
## which corresponds to ¡®local or long-distance¡¯ rather than ¡®matching the context or not¡¯

data$Antecedent <- ifelse(data$Verb.Type == "v3"
                          & data$Context == "Local"
                          & data$Question.ACC == "1",
                          c("Local"),
                          ifelse(data$Verb.Type == "v3"
                                 & data$Context == "Local"
                                 & data$Question.ACC == "0",
                                 c("Long.dist"),
                                 ifelse(data$Verb.Type == "v3"
                                        & data$Context == "Long.dist"
                                        & data$Question.ACC == "1",
                                        c("Long.dist"),
                                        ifelse(data$Verb.Type == "v3"
                                               & data$Context == "Long.dist"
                                               & data$Question.ACC == "0",
                                               c("Local"),
                                               ifelse(data$Verb.Type == "v2"
                                                      & data$Context == "Local"
                                                      & data$Question.ACC == "1",
                                                      c("Long.dist"),
                                                      ifelse(data$Verb.Type == "v2"
                                                             & data$Context == "Local"
                                                             & data$Question.ACC == "0",
                                                             c("Local"),
                                                             ifelse(data$Verb.Type == "v2"
                                                                    & data$Context == "Long.dist"
                                                                    & data$Question.ACC == "1",
                                                                    c("Long.dist"),
                                                                    ifelse(data$Verb.Type == "v2"
                                                                           & data$Context == "Long.dist"
                                                                           & data$Question.ACC == "0",
                                                                           c("Local"),
                                                                           ifelse(data$Verb.Type == "v1"
                                                                                  & data$Context == "Local"
                                                                                  & data$Question.ACC == "1",
                                                                                  c("Local"),
                                                                                  ifelse(data$Verb.Type == "v1"
                                                                                         & data$Context == "Local"
                                                                                         & data$Question.ACC == "0",
                                                                                         c("Long.dist"),
                                                                                         ifelse(data$Verb.Type == "v1"
                                                                                                & data$Context == "Long.dist"
                                                                                                & data$Question.ACC == "1",
                                                                                                c("Local"),
                                                                                                ifelse(data$Verb.Type == "v1"
                                                                                                       & data$Context == "Long.dist"
                                                                                                       & data$Question.ACC == "0",
                                                                                                       c("Long.dist"),
                                                                                                       c("N/A")))))))))))))

data$Antecedent <- as.factor(data$Antecedent)
levels(data$Antecedent)
#[1] "Local"     "Long.dist"

#table(data$Antecedent, data$Condition, data$Group)
#, ,  = 1
#            Local.v3 Long.dist.v3 Local.v1 Long.dist.v1 Local.v2 Long.dist.v2
#Local          356          133      385          186      243          109
#Long.dist       79          302       50          249      192          326

#, ,  = 2
#             Local.v3 Long.dist.v3 Local.v1 Long.dist.v1 Local.v2 Long.dist.v2
#Local          322           32      369          197      106            3
#Long.dist       53          343        6          178      269          372

library(ggplot2)
## Linda's Question: How to draw a bar chart to show the aboved numbers???????
# ggplot(data=data, aes(x=Condition, y=Antecedent, fill= Group)) + geom_bar(stat='identity', position='dodge')
#       +scale_fill_discrete(name='Group', breaks=c(1,2),labels=c('NC','L2'))
#       +xlab('Verb.Type_Context')+ylab('AntecedentChoices')


## Modelling Judgement Data_Antecedent Choices ##
## Logistic mixed-effects regression model ##
library(lme4)
library(nlme)
library(stats)
library(multcomp)

data.glmer0a <- glmer( Antecedent ~ (1|Subject), data,  family='binomial')
summary(data.glmer0a)

data.glmer0b <- glmer( Antecedent ~ (1|Subject)+(1|CSTSwhole), data,  family='binomial')
summary(data.glmer0b)

anova(data.glmer0a, data.glmer0b)
#Data: data
#Models:
#data.glmer0a: Antecedent ~ (1 | Subject)
#data.glmer0b: Antecedent ~ (1 | Subject) + (1 | CSTSwhole)
#              Df AIC    BIC    logLik deviance Chisq  Chi Df Pr(>Chisq)    
#data.glmer0a  2 6672.7 6685.7 -3334.4   6668.7                             
#data.glmer0b  3 4657.2 4676.7 -2325.6   4651.2 2017.5      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.glmer0 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition, data,  family='binomial')
summary(data.glmer0)

anova(data.glmer0,data.glmer0b)
#Data: data
#Models:
#data.glmer0b: Antecedent ~ (1 | Subject) + (1 | CSTSwhole)
#data.glmer0: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition
#              Df  AIC    BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.glmer0b  3 4657.2 4676.7 -2325.6   4651.2                             
#data.glmer0   8 4498.7 4550.6 -2241.3   4482.7 168.58      5  < 2.2e-16 ***
#  ---
#Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#So, data.glmer0 is better, that is, the dummy-coded factor (Verb.Type:Context) has a main significant effect.#

data.glmer1 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition + Group, data,  family='binomial')
summary(data.glmer1)

anova(data.glmer0,data.glmer1)
#Data: data
#Models:
#data.glmer0: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition
#data.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition + Group
#            Df    AIC  BIC   logLik  deviance Chisq  Chi Df Pr(>Chisq)   
#data.glmer0  8 4498.7 4550.6 -2241.3   4482.7                           
#data.glmer1  9 4490.1 4548.5 -2236.1   4472.1 10.54      1   0.001168 **
#  ---
#Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#So, data.glmer1 is better, that is, Group also has a main significant effect.##
## Native Chinese Group is significant different from L2 learners. ##

#Generalized linear mixed model fit by maximum likelihood (Laplace Approximation) ['glmerMod']
#Family: binomial  ( logit )
#Formula: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition + Group
#Data: data

#AIC      BIC   logLik deviance df.resid 
#4490.1   4548.5  -2236.1   4472.1     4851 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-4.2308 -0.4339 -0.0999  0.5114  9.4048 

#Random effects:
#  Groups    Name        Variance Std.Dev.
#CSTSwhole (Intercept) 0.4331   0.6581  
#Subject   (Intercept) 0.3093   0.5561  
#Number of obs: 4860, groups:  CSTSwhole, 90; Subject, 54

#Fixed effects:
#                         Estimate Std. Error z value Pr(>|z|)    
#  (Intercept)            -2.1914     0.2300  -9.529  < 2e-16 ***
#  ConditionLong.dist.v3   3.4869     0.2814  12.391  < 2e-16 ***
#  ConditionLocal.v1      -0.9389     0.2991  -3.139 0.001693 ** 
#  ConditionLong.dist.v1   2.0330     0.2740   7.420 1.17e-13 ***
#  ConditionLocal.v2       2.2583     0.2752   8.206 2.30e-16 ***
#  ConditionLong.dist.v2   4.0003     0.2873  13.926  < 2e-16 ***
#  Group2                  0.5806     0.1701   3.413 0.000643 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

#Correlation of Fixed Effects:
#  (Intr) CnL..3 CndL.1 CnL..1 CndL.2 CnL..2
#CndtnLng..3 -0.637                                   
#CndtnLcl.v1 -0.581  0.475                            
#CndtnLng..1 -0.645  0.528  0.488                     
#CndtnLcl.v2 -0.645  0.528  0.486  0.537              
#CndtnLng..2 -0.627  0.513  0.465  0.518  0.518       
#Group2      -0.356  0.021 -0.002  0.010  0.012  0.025

comparisons <- glht(data.glmer1, linfct=mcp(Condition="Tukey"))
summary(comparisons,test=adjusted(type='bonferroni'))
op <- par(mar = c(4,14,4,2) + 0.1)
plot(comparisons)
ranef(data.glmer1)$CSTSwhole # only one outlier: localhushiwhole.bmp  2.35522067
ranef(data.glmer1)$Subject # no obvious outliers

### Native Chinese Group ###
NCdat <- droplevels(data[data$Group != '1',])
dim(NCdat)
#[1] 2250   54
levels(NCdat$Group)
#[1] "2"
NCdat.glmer1 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition, NCdat,  family='binomial')
summary(NCdat.glmer1)
#Generalized linear mixed model fit by maximum likelihood (Laplace Approximation) ['glmerMod']
#Family: binomial  ( logit )
#Formula: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition
#Data: NCdat

#AIC      BIC   logLik deviance df.resid 
#1430.0   1475.8   -707.0   1414.0     2242 

#Scaled residuals: 
#  Min       1Q   Median       3Q      Max 
#-10.6686  -0.2840   0.0573   0.2195   6.9548 

#Random effects:
#  Groups    Name        Variance Std.Dev.
#CSTSwhole (Intercept) 1.5393   1.2407  
#Subject   (Intercept) 0.0407   0.2017  
#Number of obs: 2250, groups:  CSTSwhole, 90; Subject, 25

#Fixed effects:
#                         Estimate Std. Error z value Pr(>|z|)    
#  (Intercept)            -2.2671     0.3799  -5.968 2.40e-09 ***
#  ConditionLong.dist.v3   5.5561     0.5955   9.330  < 2e-16 ***
#  ConditionLocal.v1      -2.4292     0.6719  -3.616    3e-04 ***
#  ConditionLong.dist.v1   2.1499     0.5089   4.224 2.40e-05 ***
#  ConditionLocal.v2       3.5104     0.5206   6.742 1.56e-11 ***
#  ConditionLong.dist.v2   7.8189     0.8284   9.439  < 2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

#Correlation of Fixed Effects:
#  (Intr) CnL..3 CndL.1 CnL..1 CndL.2
#CndtnLng..3 -0.655                            
#CndtnLcl.v1 -0.541  0.321                     
#CndtnLng..1 -0.738  0.488  0.404              
#CndtnLcl.v2 -0.729  0.498  0.387  0.544       
#CndtnLng..2 -0.475  0.358  0.227  0.354  0.363
comparisons <- glht(NCdat.glmer1, linfct=mcp(Condition="Tukey"))
summary(comparisons,test=adjusted(type='bonferroni'))
op <- par(mar = c(4,14,4,2) + 0.1)
plot(comparisons)
ranef(NCdat.glmer1)$CSTSwhole 
# Outliers: 
#localhushiwhole.bmp  3.57759422
#LDtiaozhanwhole.bmp -2.74881497
#LDqianlianwhole.bmp -2.00033441
#LDjieshaowhole.bmp  -2.74881497
#LDfengfuwhole.bmp    2.00407605
ranef(NCdat.glmer1)$Subject # no obvious outliers

## L2 learners Group ##
L2dat <- droplevels(data[data$Group != '2',])
dim(L2dat)
#[1] 2610   54
levels(L2dat$Group)
#[1] "1"
L2dat.glmer1 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition, L2dat,  family='binomial')
summary(L2dat.glmer1)
#L2dat.glmer1a <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition + Memory, L2dat,  family='binomial')
#summary(L2dat.glmer1a) # Memory has no significant effect.

## Interaction between proficiency and verb type
L2dat.glmer2 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency, L2dat,  family='binomial')
summary(L2dat.glmer2)
#L2dat.glmer2a <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition + Memory + Verb.Type*Proficiency, L2dat, family='binomial')
#summary(L2dat.glmer2a) # Memory has no significant effect.

anova(L2dat.glmer2, L2dat.glmer1)
#Data: L2dat
#Models:
#L2dat.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition
#L2dat.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition + Verb.Type * Proficiency
#             Df   AIC    BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat.glmer1  8 2784.1 2831.1 -1384.1   2768.1                             
#L2dat.glmer2 11 2766.1 2830.6 -1372.0   2744.1  24.068      3  2.417e-05 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#L2dat.glmer2 is better, significant interaction effect between Verb.Type and Proficiency

# anova(L2dat.glmer2a, L2dat.glmer1a)

comparisons <- glht(L2dat.glmer2, linfct=mcp(Condition="Tukey"))
summary(comparisons,test=adjusted(type='bonferroni'))
op <- par(mar = c(4,14,4,2) + 0.1)
plot(comparisons)
ranef(L2dat.glmer2)$CSTSwhole # no obvious outliers
ranef(L2dat.glmer2)$Subject # no obvious outliers

### Questions:
### ??? if adding the variable 'Attention', the fixed-effect model matrix is rank deficient so dropping 1 column/coeffeicient, and there are warning messages:
### 1: In checkConv(attr(opt, "derivs"), opt$par, ctrl = control$checkConv,  :
###  Model failed to converge with max|grad| = 0.00119794 (tol = 0.001, component 1)
### 2: In checkConv(attr(opt, "derivs"), opt$par, ctrl = control$checkConv,  :
###  Model is nearly unidentifiable: large eigenvalue ratio
###  - Rescale variables?
### ??? And there is no values for 'Attention' Variable in the summary
