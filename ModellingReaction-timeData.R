getwd()
#[1] "C:/Users/Linda/Documents"
setwd('C:/Users/Linda/Desktop/Rdocument')

load("C:/Users/Linda/Desktop/Rdocument/src/Exp1criticaldata.rda")
str(subdat)
data <- subdat

## A variable for the interpretation chosen (i.e. local or LD )
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

library(lme4)
library(stats)
library(multcomp)

## Modelling Reaction-time Data ##
## Two groups' data together ##
##1.Reading Time at the critical word 'ziji' ##
data.lmer0a <- lmer( Pronoun.LogRT ~ (1|Reading.baseline), data, REML=FALSE)
summary(data.lmer0a)

data.lmer0b <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer0b)

anova(data.lmer0a,data.lmer0b)
#Data: data
#Models:
#data.lmer0a: Pronoun.LogRT ~ (1 | Reading.baseline)
#data.lmer0b: Pronoun.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#             Df  AIC   BIC    logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer0a  3 4822.9 4842.3 -2408.4   4816.9                             
#data.lmer0b  4 4252.4 4278.3 -2122.2   4244.4   572.48     1   < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
# data.lmer0b is better than data.lmer0a. #

data.lmer0c <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, data, REML=FALSE)
summary(data.lmer0c)
anova(data.lmer0c,data.lmer0b)
#the dummy-coded variable(Verb.Type:Context) does not have a significant main effect.

data.lmer0d <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, data, REML=FALSE)
summary(data.lmer0d)

anova(data.lmer0d,data.lmer0b)
#Data: data
#Models:
#data.lmer0b: Pronoun.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#data.lmer0d: Pronoun.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#             Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)    
#data.lmer0b  4 4252.4 4278.3 -2122.2   4244.4                             
#data.lmer0d  5 4238.0 4270.5 -2114.0   4228.0 16.357      1  5.245e-05 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
# Proficiency: significant effect.

data.lmer0e <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group, data, REML=FALSE)
summary(data.lmer0e)

anova(data.lmer0e,data.lmer0d)
#Data: data
#Models:
#data.lmer0d: Pronoun.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#data.lmer0e: Pronoun.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency + Group
#             Df  AIC    BIC  logLik deviance Chisq Chi Df Pr(>Chisq)    
#data.lmer0d  5 4238.0 4270.5  -2114   4228.0                            
#data.lmer0e  6 4218.1 4257.0  -2103   4206.1 21.93      1  2.827e-06 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer0e is better, Group improves the model.

data.lmer0f <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Verb.Type*Proficiency, data, REML=FALSE)
summary(data.lmer0f)
anova(data.lmer0e, data.lmer0f)
#No significant interaction effect between Verb.Type and Proficiency.

data.lmer0g <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Antecedent*Verb.Type, data, REML=FALSE)
summary(data.lmer0g)
anova(data.lmer0e, data.lmer0g)
#No interaction between interpretation and verb type.

data.lmer0h <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Antecedent*Context, data, REML=FALSE)
summary(data.lmer0h)
anova(data.lmer0e, data.lmer0h)
#No interaction between interpretation and context.

####2. Reading Time at Spillover Region ####
#### Spillover1 ####
data.lmer1a <- lmer( Spillover1.LogRT ~ (1|Reading.baseline), data, REML=FALSE)
summary(data.lmer1a)

data.lmer1b <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer1b)

anova(data.lmer1a, data.lmer1b)
#Data: data
#Models:
#data.lmer1a: Spillover1.LogRT ~ (1 | Reading.baseline)
#data.lmer1b: Spillover1.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#            Df   AIC   BIC    logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer1a  3 4823.7 4843.1 -2408.8   4817.7                             
#data.lmer1b  4 3973.0 3998.9 -1982.5   3965.0   852.71      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
# data.lmer1b is better than data.lmer1a. #

data.lmer1c <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Conidition, data, REML=FALSE)
summary(data.lmer1c)
anova(data.lmer1c, data.lmer1b)
#Condition has no significant main effect. #

data.lmer1d <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, data, REML=FALSE)
summary(data.lmer1d)
anova(data.lmer1d, data.lmer1b)
#Data: data
#Models:
#data.lmer1b: Spillover1.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#data.lmer1d: Spillover1.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#             Df  AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#data.lmer1b  4 3973.0 3998.9 -1982.5   3965.0                             
#data.lmer1d  5 3960.2 3992.6 -1975.1   3950.2 14.799      1  0.0001196 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer1d is better, Proficiency has a significant main effect.

data.lmer1e <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group, data, REML=FALSE)
summary(data.lmer1e)
anova(data.lmer1e, data.lmer1d)
#Data: data
#Models:
#data.lmer1d: Spillover1.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#data.lmer1e: Spillover1.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency + Group
#            Df    AIC   BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#data.lmer1d  5 3960.2 3992.6 -1975.1   3950.2                             
#data.lmer1e  6 3944.5 3983.4 -1966.2   3932.5 17.669      1  2.628e-05 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer1e is better, so Group improves the model.

data.lmer1g <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Verb.Type*Proficiency, data, REML=FALSE)
summary(data.lmer1g)
anova(data.lmer1g,data.lmer1e)
#No significant interaction effect between Verb.Type and Proficiency.

data.lmer1h <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Antecedent*Verb.Type, data, REML=FALSE)
summary(data.lmer1h)
anova(data.lmer1h,data.lmer1e)
#No significant interaction effect between Antecedent and Verb.Type.

data.lmer1i <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Antecedent*Context, data, REML=FALSE)
summary(data.lmer1i)
anova(data.lmer1i,data.lmer1e)
#No Significant interaction effect between Antecedent and Context.

#### Spillover2 ####
data.lmer2a <- lmer( Spillover2.LogRT ~ (1|Reading.baseline), data, REML=FALSE)
summary(data.lmer2a)

data.lmer2b <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer2b)

anova(data.lmer2a, data.lmer2b)
#Data: data
#Models:
#data.lmer2a: Spillover2.LogRT ~ (1 | Reading.baseline)
#data.lmer2b: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#             Df  AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#data.lmer2a  3 3276.9 3296.4 -1635.5   3270.9                             
#data.lmer2b  4 2562.4 2588.3 -1277.2   2554.4  716.55      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.lmer2c <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, data, REML=FALSE)
summary(data.lmer2c)
anova(data.lmer2c, data.lmer2b)
#Condition does not have a significant main effect.

data.lmer2d <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, data, REML=FALSE)
summary(data.lmer2d)

anova(data.lmer2d, data.lmer2b)
#Data: data
#Models:
#data.lmer2b: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#data.lmer2d: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#            Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)    
#data.lmer2b  4 2562.4 2588.3 -1277.2   2554.4                             
#data.lmer2d  5 2550.9 2583.3 -1270.4   2540.9 13.473      1   0.000242 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer2d is better, Proficicency has a significant main effect.

data.lmer2e <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group, data, REML=FALSE)
summary(data.lmer2e)

anova(data.lmer2e,data.lmer2d)
#Data: data
#Models:
#data.lmer2d: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#data.lmer2e: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency + Group
#             Df  AIC    BIC   logLik  deviance Chisq  Chi Df Pr(>Chisq)    
#data.lmer2d  5 2550.9 2583.3 -1270.4   2540.9                             
#data.lmer2e  6 2539.8 2578.7 -1263.9   2527.8 13.124      1  0.0002915 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer2e is better, Group improves the model.

data.lmer2f<- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Verb.Type*Proficiency, data, REML=FALSE)
summary(data.lmer2f)
anova(data.lmer2f,data.lmer2e)
#No significant interaction effect between Verb.Type and Proficiency #

data.lmer2g<- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Verb.Type*Antecedent, data, REML=FALSE)
summary(data.lmer2g)
anova(data.lmer2g,data.lmer2e)
#No significant interaction effect between Verb.Type and Antecedent.

data.lmer2h<- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Context*Antecedent, data, REML=FALSE)
summary(data.lmer2h)
anova(data.lmer2h,data.lmer2e)
#No significant interaction effect between Context and Antecedent.

#### Spillover3 ####
data.lmer3a <- lmer( Spillover3.LogRT ~ (1|Reading.baseline), data, REML=FALSE)
summary(data.lmer3a)

data.lmer3b <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer3b)

anova(data.lmer3a, data.lmer3b)
#Data: data
#Models:
#data.lmer3a: Spillover3.LogRT ~ (1 | Reading.baseline)
#data.lmer3b: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#             Df  AIC    BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer3a  3 5791.2 5810.6 -2892.6   5785.2                             
#data.lmer3b  4 5060.1 5086.0 -2526.0   5052.1   733.12      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.lmer3c <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, data, REML=FALSE)
summary(data.lmer3c)
anova(data.lmer3c,data.lmer3b)
# No significant main effect of Condition 

data.lmer3d <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, data, REML=FALSE)
summary(data.lmer3d)

anova(data.lmer3d, data.lmer3b)
#Data: data
#Models:
#data.lmer3b: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#data.lmer3d: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)    
#data.lmer3b  4 5060.1 5086.0 -2526.0   5052.1                             
#data.lmer3d  5 5041.4 5073.8 -2515.7   5031.4 20.681      1  5.426e-06 ***
# ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer3d is better, Proficiency has a significant effect.

data.lmer3e <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group, data, REML=FALSE)
summary(data.lmer3e)

anova(data.lmer3e, data.lmer3d)
#Data: data
#Models:
#data.lmer3d: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency
#data.lmer3e: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency + Group
#            Df   AIC    BIC   logLik  deviance  Chisq Chi Df Pr(>Chisq)    
#data.lmer3d  5 5041.4 5073.8 -2515.7   5031.4                             
#data.lmer3e  6 5032.4 5071.4 -2510.2   5020.4 10.951      1  0.0009356 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer3e is better, so Group improves the model.

data.lmer3g <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Verb.Type*Proficiency, data, REML=FALSE)
summary(data.lmer3g)

anova(data.lmer3g,data.lmer3e)
#Data: data
#Models:
#data.lmer3e: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency + Group
#data.lmer3g: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency + Group + Verb.Type * Proficiency
#            Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)   
#data.lmer3e  6 5032.4 5071.4 -2510.2   5020.4                            
#data.lmer3g 10 5025.5 5090.4 -2502.8   5005.5 14.935      4   0.004837 **
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#data.lmer3g is better, so Verb.Type and Proficiency has a significant interaction effect.

data.lmer3h <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Verb.Type*Proficiency + Antecedent*Verb.Type, data, REML=FALSE)
summary(data.lmer3h)
anova(data.lmer3g,data.lmer3h)
#No interaction significant effect between Verb.Type and Antecedent.
data.lmer3i <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency + Group + Verb.Type*Proficiency + Antecedent*Context, data, REML=FALSE)
summary(data.lmer3i)
anova(data.lmer3g,data.lmer3i)
#No interaction significant effect between Context and Antecedent.

#the best model for 2 groups'Reaction-time is data.lmer3g, and at the 3rd Spillover Region:
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Proficiency + Group + Verb.Type * Proficiency
#Data: data

#AIC      BIC   logLik deviance df.resid 
#5025.5   5090.4  -2502.7   5005.5     4850 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-4.4320 -0.5852 -0.0951  0.4182  6.9639 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.03272  0.1809  
#Reading.baseline (Intercept) 0.03974  0.1993  
#Residual                     0.15104  0.3886  
#Number of obs: 4860, groups:  CSTSwhole, 90; Reading.baseline, 54

#Fixed effects:
#  Estimate Std. Error t value
#(Intercept)              6.711114   0.308102  21.782
#Proficiency             -0.005291   0.003671  -1.441
#Group2                  -0.293212   0.084141  -3.485
#Verb.Typev1             -0.421482   0.116991  -3.603
#Verb.Typev2             -0.080360   0.116991  -0.687
#Proficiency:Verb.Typev1  0.003946   0.001174   3.360
#Proficiency:Verb.Typev2  0.000553   0.001174   0.471

#Correlation of Fixed Effects:
#  (Intr) Prfcnc Group2 Vrb.T1 Vrb.T2 P:V.T1
#Proficiency -0.986                                   
#Group2       0.671 -0.738                            
#Verb.Typev1 -0.190  0.145  0.000                     
#Verb.Typev2 -0.190  0.145  0.000  0.500              
#Prfcnc:V.T1  0.173 -0.160  0.000 -0.909 -0.455       
#Prfcnc:V.T2  0.173 -0.160  0.000 -0.455 -0.909  0.500

## Separate 2 groups' Reaction-time data ##
################################################################
### Native Chinese Group ###
NCdat <- droplevels(data[data$Group != '1',])
dim(NCdat)
#[1] 2250   54
levels(NCdat$Group)
#[1] "2"
## Modelling Reaction-time Data ##
##1.Reading Time at the critical word 'ziji' ##
NCdat.lmer0a <- lmer( Pronoun.LogRT ~ (1|Reading.baseline), NCdat, REML=FALSE)
summary(NCdat.lmer0a)

NCdat.lmer0b <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer0b)

anova(NCdat.lmer0a,NCdat.lmer0b)
#Data: NCdat
#Models:
#NCdat.lmer0a: Pronoun.LogRT ~ (1 | Reading.baseline)
#NCdat.lmer0b: Pronoun.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#              Df AIC    BIC    logLik  deviance Chisq  Chi Df Pr(>Chisq)    
#NCdat.lmer0a  3 1911.6 1928.7 -952.79   1905.6                             
#NCdat.lmer0b  4 1727.4 1750.3 -859.71   1719.4 186.17      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
# NCdat.lmer0b is better.

NCdat.lmer0c <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, NCdat, REML=FALSE)
summary(NCdat.lmer0c)

anova(NCdat.lmer0c,NCdat.lmer0b)
#the dummy-coded variable(Verb.Type:Context) does not have a significant main effect.

NCdat.lmer0d <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer0d)
anova(NCdat.lmer0d,NCdat.lmer0b)
#No interaction significant effect between Verb.Type and Antecedent.

NCdat.lmer0e <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer0e)
anova(NCdat.lmer0e,NCdat.lmer0b)
#No interaction significant effect between Context and Antecedent.

####2. Reading Time at Spillover Region ####
#### Spillover1 ####
NCdat.lmer1a <- lmer( Spillover1.LogRT ~ (1|Reading.baseline), NCdat, REML=FALSE)
summary(NCdat.lmer1a)

NCdat.lmer1b <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer1b)

anova(NCdat.lmer1a, NCdat.lmer1b)
#Data: NCdat
#Models:
#NCdat.lmer1a: Spillover1.LogRT ~ (1 | Reading.baseline)
#NCdat.lmer1b: Spillover1.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#              Df  AIC     BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#NCdat.lmer1a  3 1297.05 1314.20 -645.52  1291.05                             
#NCdat.lmer1b  4  956.53  979.41 -474.27   948.53 342.52      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
# NCdat.lmer1b is better.

NCdat.lmer1c <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, NCdat, REML=FALSE)
summary(NCdat.lmer1c)
anova(NCdat.lmer1c, NCdat.lmer1b)
# Condition has no significant main effect.

NCdat.lmer1d <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Proficiency, NCdat, REML=FALSE)
summary(NCdat.lmer1d)
anova(NCdat.lmer1d, NCdat.lmer1b)
#No significant interaction effect between Verb.Type and Proficiency.

NCdat.lmer1e <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer1e)
anova(NCdat.lmer1e, NCdat.lmer1b)
#No significant interaction effect between Verb.Type and Antecedent.

NCdat.lmer1f <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer1f)
anova(NCdat.lmer1f, NCdat.lmer1b)
#No significant interaction effect between Context and Antecedent.

#### Spillover2 ####
NCdat.lmer2a <- lmer( Spillover2.LogRT ~ (1|Reading.baseline), NCdat, REML=FALSE)
summary(NCdat.lmer2a)

NCdat.lmer2b <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer2b)

anova(NCdat.lmer2a, NCdat.lmer2b)
#Data: NCdat
#Models:
#NCdat.lmer2a: Spillover2.LogRT ~ (1 | Reading.baseline)
#NCdat.lmer2b: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#             Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)    
#NCdat.lmer2a  3 960.70 977.86 -477.35   954.70                             
#NCdat.lmer2b  4 638.82 661.70 -315.41   630.82 323.88      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#NCdat.lmer2b is better.

NCdat.lmer2c <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, NCdat, REML=FALSE)
summary(NCdat.lmer2c)

anova(NCdat.lmer2c, NCdat.lmer2b)
#Data: NCdat
#Models:
#NCdat.lmer2b: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#NCdat.lmer2c: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition
#              Df AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)  
#NCdat.lmer2b  4 638.82 661.70 -315.41   630.82                           
#NCdat.lmer2c  9 637.78 689.25 -309.89   619.78 11.042      5    0.05056 .
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#NCdat.lmer2c is better, the dummy-coded variable Condition (Verb.Type:Context) has a strong significant main effect.

NCdat.lmer2d <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency, NCdat, REML=FALSE)
summary(NCdat.lmer2d)
anova(NCdat.lmer2d, NCdat.lmer2c)
#No significant interaction effect between Verb.Type and Proficiency.

NCdat.lmer2e <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer2e)
anova(NCdat.lmer2e, NCdat.lmer2c)
#No significant interaction effect between Verb.Type and Antecedent.

NCdat.lmer2f <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer2f)
anova(NCdat.lmer2f, NCdat.lmer2c)
#No significant interaction effect between Context and Antecedent.

#### Spillover3 ####
NCdat.lmer3a <- lmer( Spillover3.LogRT ~ (1|Reading.baseline), NCdat, REML=FALSE)
summary(NCdat.lmer3a)

NCdat.lmer3b <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer3b)

anova(NCdat.lmer3a, NCdat.lmer3b)
#Data: NCdat
#Models:
#NCdat.lmer3a: Spillover3.LogRT ~ (1 | Reading.baseline)
#NCdat.lmer3b: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#              Df  AIC    BIC   logLik deviance  Chisq  Chi Df Pr(>Chisq)    
#NCdat.lmer3a  3 1691.5 1708.6 -842.72   1685.5                             
#NCdat.lmer3b  4 1455.6 1478.4 -723.78   1447.6 237.88      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#NCdat.lmer3b is better.

NCdat.lmer3c <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, NCdat, REML=FALSE)
summary(NCdat.lmer3c)

anova(NCdat.lmer3c,NCdat.lmer3b)
#Data: NCdat
#Models:
#NCdat.lmer3b: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#NCdat.lmer3c: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition
#             Df  AIC    BIC    logLik deviance  Chisq  Chi Df Pr(>Chisq)  
#NCdat.lmer3b  4 1455.6 1478.4 -723.78   1447.6                           
#NCdat.lmer3c  9 1455.0 1506.4 -718.49   1437.0 10.597      5    0.05999 .
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#NCdat.lmer3c is better, the dummy-coded variable Condition(Verb.Type:Context) has a significant main effect.

NCdat.lmer3d <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency, NCdat, REML=FALSE)
summary(NCdat.lmer3d)
anova(NCdat.lmer3d, NCdat.lmer3c)
#Verb.Type and Proficiency has no significant interaction effect.

NCdat.lmer3e <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer3e)
anova(NCdat.lmer3e, NCdat.lmer3c)
#Data: NCdat
#Models:
#NCdat.lmer3c: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition
#NCdat.lmer3e: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Verb.Type * Antecedent
#              Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)  
#NCdat.lmer3c  9 1455.0 1506.4 -718.49   1437.0                           
#NCdat.lmer3e 12 1450.7 1519.3 -713.32   1426.7 10.322      3    0.01602 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#Significant interaction effect between Verb.Type and Antecedent.

NCdat.lmer3f <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Antecedent + Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer3f)
anova(NCdat.lmer3e, NCdat.lmer3f)
#No significant interaction effect between Context and Antecedent.

#the best model for Native Chinese Reaction-time is NCdat.lmer3f, and at the 3rd Spillover Region:
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Verb.Type * Antecedent + Context * Antecedent
#Data: NCdat

#AIC      BIC   logLik deviance df.resid 
#1452.2   1526.6   -713.1   1426.2     2237 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-3.6378 -0.5872 -0.0977  0.4327  6.6592 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.01640  0.1281  
#Reading.baseline (Intercept) 0.04457  0.2111  
#Residual                     0.09925  0.3150  
#Number of obs: 2250, groups:  CSTSwhole, 90; Reading.baseline, 25

#Fixed effects:
#                                      Estimate Std. Error t value
#(Intercept)                           5.868897   0.056511  103.85
#ConditionLong.dist.v3                -0.004637   0.074016   -0.06
#ConditionLocal.v1                    -0.044122   0.052551   -0.84
#ConditionLong.dist.v1                 0.085538   0.055340    1.55
#ConditionLocal.v2                     0.050171   0.059533    0.84
#ConditionLong.dist.v2                -0.145015   0.095332   -1.52
#AntecedentLong.dist                   0.003703   0.051518    0.07
#Verb.Typev1:AntecedentLong.dist      -0.154201   0.065283   -2.36
#Verb.Typev2:AntecedentLong.dist       0.017371   0.063320    0.27
#AntecedentLong.dist:ContextLong.dist  0.045176   0.069196    0.65

#Correlation of Fixed Effects:
#  (Intr) CnL..3 CndL.1 CnL..1 CndL.2 CnL..2 AntcL. V.T1:A V.T2:A
#CndtnLng..3 -0.317                                                        
#CndtnLcl.v1 -0.474  0.330                                                 
#CndtnLng..1 -0.454  0.347  0.489                                          
#CndtnLcl.v2 -0.417  0.279  0.447  0.422                                   
#CndtnLng..2 -0.311  0.567  0.321  0.345  0.459                            
#AntcdntLng. -0.129 -0.058  0.128  0.154  0.100  0.461                     
#Vrb.Ty1:AL.  0.030  0.590 -0.049 -0.165 -0.042  0.361 -0.235              
#Vrb.Ty2:AL.  0.101  0.076 -0.101 -0.114 -0.372 -0.590 -0.785  0.209       
#AntcdL.:CL.  0.072 -0.553 -0.058 -0.116 -0.029 -0.729 -0.561 -0.542  0.405
#fit warnings:
#  fixed-effect model matrix is rank deficient so dropping 3 columns / coefficients

### L2 learners Group ###
L2dat <- droplevels(data[data$Group != '2',])
dim(L2dat)
#[1] 2610   54
levels(L2dat$Group)
#[1] "1"
## Modelling Reaction-time Data ##
##1.Reading Time at the critical word 'ziji' ##
L2dat.lmer0a <- lmer( Pronoun.LogRT ~ (1|Reading.baseline), L2dat, REML=FALSE)
summary(L2dat.lmer0a)

L2dat.lmer0b <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), L2dat, REML=FALSE)
summary(L2dat.lmer0b)

anova(L2dat.lmer0a,L2dat.lmer0b)
#Data: L2dat
#Models:
#L2dat.lmer0a: Pronoun.LogRT ~ (1 | Reading.baseline)
#L2dat.lmer0b: Pronoun.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#              Df  AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#L2dat.lmer0a  3 2843.2 2860.8 -1418.6   2837.2                             
#L2dat.lmer0b  4 2535.5 2559.0 -1263.8   2527.5 309.67      1  < 2.2e-16 ****
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#L2dat.lmer0b is better.

L2dat.lmer0c <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, L2dat, REML=FALSE)
summary(L2dat.lmer0c)
anova(L2dat.lmer0c,L2dat.lmer0b)
#the dummy-coded variable(Verb.Type:Context) does not have a significant main effect.

L2dat.lmer0d <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer0d)
anova(L2dat.lmer0d,L2dat.lmer0b)
#Proficiency: No significant effect.

L2dat.lmer0e <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Memory, L2dat, REML=FALSE)
summary(L2dat.lmer0e)
anova(L2dat.lmer0e,L2dat.lmer0b)
#Memory: No significant effect.

L2dat.lmer0f <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer0f)
anova(L2dat.lmer0f,L2dat.lmer0b)
#Verb.Type*Proficiency: No significant interaction effect.

L2dat.lmer0g <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer0g)
anova(L2dat.lmer0g,L2dat.lmer0b)
#No interaction significant effect between Verb.Type and Antecedent.

L2dat.lmer0h <- lmer( Pronoun.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Context*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer0h)
anova(L2dat.lmer0h,L2dat.lmer0b)
#No interaction significant effect between Context and Antecedent.

####2. Reading Time at Spillover Region ####
#### Spillover1 ####
L2dat.lmer1a <- lmer( Spillover1.LogRT ~ (1|Reading.baseline), L2dat, REML=FALSE)
summary(L2dat.lmer1a)

L2dat.lmer1b <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), L2dat, REML=FALSE)
summary(L2dat.lmer1b)

anova(L2dat.lmer1a, L2dat.lmer1b)
#Data: L2dat
#Models:
#L2dat.lmer1a: Spillover1.LogRT ~ (1 | Reading.baseline)
#L2dat.lmer1b: Spillover1.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#             Df  AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#L2dat.lmer1a  3 3240.5 3258.1 -1617.2   3234.5                             
#L2dat.lmer1b  4 2820.7 2844.2 -1406.3   2812.7 421.79      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#L2dat.lmer1b is better.

L2dat.lmer1c <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, L2dat, REML=FALSE)
summary(L2dat.lmer1c)
anova(L2dat.lmer1c, L2dat.lmer1b)
#Condition has no significant main effect.

L2dat.lmer1d <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer1d)
anova(L2dat.lmer1d, L2dat.lmer1b)
#No significant interaction effect between Verb.Type and Proficiency.

L2dat.lmer1e <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer1e)
anova(L2dat.lmer1e, L2dat.lmer1b)
#No Significant effect of Proficiency.

L2dat.lmer1f <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Memory, L2dat, REML=FALSE)
summary(L2dat.lmer1f)
anova(L2dat.lmer1f, L2dat.lmer1b)
#No Significant effect of Memory.

L2dat.lmer1g <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Age.Chinese, L2dat, REML=FALSE)
summary(L2dat.lmer1g)
anova(L2dat.lmer1g, L2dat.lmer1b)
#No Significant effect of Age.Chinese

L2dat.lmer1h <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer1h)
anova(L2dat.lmer1h, L2dat.lmer1b)
#No interaction significant effect between Verb.Type and Antecedent.

L2dat.lmer1i <- lmer( Spillover1.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Context*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer1i)
anova(L2dat.lmer1i, L2dat.lmer1b)
#No interaction signficant effect between Context and Antecedent.

#### Spillover2 ####
L2dat.lmer2a <- lmer( Spillover2.LogRT ~ (1|Reading.baseline), L2dat, REML=FALSE)
summary(L2dat.lmer2a)

L2dat.lmer2b <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), L2dat, REML=FALSE)
summary(L2dat.lmer2b)

anova(L2dat.lmer2a, L2dat.lmer2b)
#Data: L2dat
#Models:
#L2dat.lmer2a: Spillover2.LogRT ~ (1 | Reading.baseline)
#L2dat.lmer2b: Spillover2.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#              Df  AIC    BIC   logLik  deviance Chisq  Chi Df Pr(>Chisq)    
#L2dat.lmer2a  3 2193.1 2210.7 -1093.57   2187.1                            
#L2dat.lmer2b  4 1884.7 1908.2  -938.37   1876.7 310.4      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#L2dat.lmer2b is better.

L2dat.lmer2c <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, L2dat, REML=FALSE)
summary(L2dat.lmer2c)
anova(L2dat.lmer2c, L2dat.lmer2b)
# the dummy-coded variable Condition (Verb.Type:Context) does not have a significant main effect.

L2dat.lmer2d <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer2d)
anova(L2dat.lmer2d, L2dat.lmer2b)
#No significant interaction effect between Verb.Type and Proficiency #

L2dat.lmer2e <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer2e)
anova(L2dat.lmer2e, L2dat.lmer2b)
#No significant effect of Proficiency

L2dat.lmer2f <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Memory, L2dat, REML=FALSE)
summary(L2dat.lmer2f)
anova(L2dat.lmer2f, L2dat.lmer2b)
#No significant effect of Memory

L2dat.lmer2g <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Age.Chinese, L2dat, REML=FALSE)
summary(L2dat.lmer2g)
anova(L2dat.lmer2g, L2dat.lmer2b)
#No significant effect of Age.Chinese

L2dat.lmer2h <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer2h)
anova(L2dat.lmer2h, L2dat.lmer2b)
#No significant interaction effect between Verb.Type and Antecedent

L2dat.lmer2i <- lmer( Spillover2.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Context*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer2i)
anova(L2dat.lmer2i, L2dat.lmer2b)
#No significant interaction effect between Context and Antecedent

#### Spillover3 ####
L2dat.lmer3a <- lmer( Spillover3.LogRT ~ (1|Reading.baseline), L2dat, REML=FALSE)
summary(L2dat.lmer3a)

L2dat.lmer3b <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), L2dat, REML=FALSE)
summary(L2dat.lmer3b)

anova(L2dat.lmer3a, L2dat.lmer3b)
#Data: L2dat
#Models:
#L2dat.lmer3a: Spillover3.LogRT ~ (1 | Reading.baseline)
#L2dat.lmer3b: Spillover3.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#             Df  AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#L2dat.lmer3a  3 3785.6 3803.2 -1889.8   3779.6                             
#L2dat.lmer3b  4 3349.2 3372.7 -1670.6   3341.2 438.41      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#L2dat.lmer3b is better.

L2dat.lmer3c <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, L2dat, REML=FALSE)
summary(L2dat.lmer3c)
anova(L2dat.lmer3c,L2dat.lmer3b)
#No significant main effect of Condition.

L2dat.lmer3d <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer3d)
anova(L2dat.lmer3d, L2dat.lmer3b)
#Verb.Type and Proficiency has no significant interaction effect.

L2dat.lmer3e <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer3e)
anova(L2dat.lmer3e, L2dat.lmer3b)
#No significant effect of Proficiency

L2dat.lmer3f <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Memory, L2dat, REML=FALSE)
summary(L2dat.lmer3f)
anova(L2dat.lmer3f, L2dat.lmer3b)
#No significant effect of Memory

L2dat.lmer3g <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Age.Chinese, L2dat, REML=FALSE)
summary(L2dat.lmer3g)
anova(L2dat.lmer3g, L2dat.lmer3b)
#No significant effect of Age.Chinese

L2dat.lmer3h <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Verb.Type*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer3h)
anova(L2dat.lmer3h, L2dat.lmer3b)
#No significant interaction effect between Verb.Type and Antecedent

L2dat.lmer3i <- lmer( Spillover3.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Context*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer3i)
anova(L2dat.lmer3i, L2dat.lmer3b)
#No significant interaction effect between Context and Antecedent

########After Spillover Region#####################
L2dat$CSTSwhole.LogRT <- log(L2dat$CSTSwhole.RT)

L2dat.lmer4a <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline), L2dat, REML=FALSE)
summary(L2dat.lmer4a)

L2dat.lmer4b <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole), L2dat, REML=FALSE)
summary(L2dat.lmer4b)

anova(L2dat.lmer4a, L2dat.lmer4b)
#L2dat.lmer4b is better.

L2dat.lmer4c <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition, L2dat, REML=FALSE)
summary(L2dat.lmer4c)

anova(L2dat.lmer4c,L2dat.lmer4b)
#Data: L2dat
#Models:
#L2dat.lmer4b: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole)
#L2dat.lmer4c: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition
#              Df  AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#L2dat.lmer4b  4 7331.6 7355.0 -3661.8   7323.6                             
#L2dat.lmer4c  9 7296.8 7349.6 -3639.4   7278.8  44.747      5  1.633e-08 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#the dummy-coded variable Condition(Verb.Type:Context) has main significant effect.

L2dat.lmer4d <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer4d)
anova(L2dat.lmer4d, L2dat.lmer4c)
#Data: L2dat
#Models:
#L2dat.lmer4c: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition
#L2dat.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Verb.Type * Proficiency
#              Df  AIC    BIC  logLik   deviance  Chisq  Chi Df Pr(>Chisq)   
#L2dat.lmer4c  9 7296.8 7349.6 -3639.4   7278.8                            
#L2dat.lmer4d 12 7289.5 7359.9 -3632.7   7265.5  13.345      3   0.003947 **
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#Verb.Type and Proficiency has a significant interaction effect.

L2dat.lmer4e <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Proficiency, L2dat, REML=FALSE)
summary(L2dat.lmer4e)
anova(L2dat.lmer4e, L2dat.lmer4c)
#Data: L2dat
#Models:
#L2dat.lmer4c: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition
#L2dat.lmer4e: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Proficiency
#             Df   AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)  
#L2dat.lmer4c  9 7296.8 7349.6 -3639.4   7278.8                           
#L2dat.lmer4e 10 7295.6 7354.2 -3637.8   7275.6  3.2467      1    0.07157 .
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#Proficiency: no significant effect.

anova(L2dat.lmer4e, L2dat.lmer4d)
#Data: L2dat
#Models:
#L2dat.lmer4e: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Proficiency
#L2dat.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Verb.Type * Proficiency
#             Df  AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)   
#L2dat.lmer4e 10 7295.6 7354.2 -3637.8   7275.6                            
#L2dat.lmer4d 12 7289.5 7359.9 -3632.7   7265.5 10.098      2   0.006415 **
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#L2dat.lmer4d is better, Verb.Type and Proficiency has a significant interaction effect.

L2dat.lmer4f <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency + Memory, L2dat, REML=FALSE)
summary(L2dat.lmer4f)
anova(L2dat.lmer4f, L2dat.lmer4d)
#No significant effect of Memory

L2dat.lmer4g <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency + Age.Chinese, L2dat, REML=FALSE)
summary(L2dat.lmer4g)
anova(L2dat.lmer4g, L2dat.lmer4d)
#No significant effect of Age.Chinese

L2dat.lmer4h <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency + Verb.Type*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer4h)
anova(L2dat.lmer4d, L2dat.lmer4h)
#Data: L2dat
#Models:
#L2dat.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Verb.Type * Proficiency
#L2dat.lmer4h: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Verb.Type * Proficiency + Verb.Type * Antecedent
#             Df  AIC    BIC   logLik  deviance  Chisq  Chi Df Pr(>Chisq)  
#L2dat.lmer4d 12 7289.5 7359.9 -3632.7   7265.5                          
#L2dat.lmer4h 15 7287.5 7375.5 -3628.7   7257.5  7.97      3    0.04664 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#Significant interaction effect between Verb.Type and Antecedent.

L2dat.lmer4i <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline) + (1|CSTSwhole) + Condition + Verb.Type*Proficiency + Context*Antecedent, L2dat, REML=FALSE)
summary(L2dat.lmer4i)
anova(L2dat.lmer4i, L2dat.lmer4h)
#No significant interaction effect between Context and Antecedent.

#the best model for L2 Reaction-time data is L2dat.lmer4h, and after Spillover Region:
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) + Condition + Verb.Type * Proficiency + Verb.Type * Antecedent
#Data: L2dat

#AIC      BIC   logLik deviance df.resid 
#7287.5   7375.5  -3628.7   7257.5     2595 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-4.2136 -0.6198  0.0788  0.6868  3.5127 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.0603   0.2456  
#Reading.baseline (Intercept) 0.2492   0.4992  
#Residual                     0.8771   0.9366  
#Number of obs: 2610, groups:  CSTSwhole, 90; Reading.baseline, 29

#Fixed effects:
#                                 Estimate Std. Error t value
#(Intercept)                     10.499145   0.781209  13.440
#ConditionLong.dist.v3            0.121988   0.117033   1.042
#ConditionLocal.v1               -1.280702   0.371899  -3.444
#ConditionLong.dist.v1           -0.879354   0.376606  -2.335
#ConditionLocal.v2               -0.243985   0.370662  -0.658
#ConditionLong.dist.v2           -0.825627   0.371721  -2.221
#Proficiency                     -0.024472   0.009362  -2.614
#AntecedentLong.dist              0.027798   0.078608   0.354
#Verb.Typev1:Proficiency          0.013973   0.004310   3.242
#Verb.Typev2:Proficiency          0.010196   0.004313   2.364
#Verb.Typev1:AntecedentLong.dist  0.174378   0.110463   1.579
#Verb.Typev2:AntecedentLong.dist -0.107383   0.105900  -1.014

#Correlation of Fixed Effects:
#  (Intr) CnL..3 CndL.1 CnL..1 CndL.2 CnL..2 Prfcnc AntcL. V.T1:P V.T2:P V.T1:A
#CndtnLng..3 -0.073                                                                      
#CndtnLcl.v1 -0.237  0.153                                                               
#CndtnLng..1 -0.234  0.151  0.952                                                        
#CndtnLcl.v2 -0.238  0.153  0.499  0.493                                                 
#CndtnLng..2 -0.237  0.153  0.498  0.492  0.954                                          
#Proficiency -0.988  0.013  0.219  0.217  0.220  0.219                                   
#AntcdntLng.  0.019 -0.344 -0.041 -0.042 -0.041 -0.043 -0.038                            
#Vrb.Typv1:P  0.227 -0.029 -0.954 -0.948 -0.478 -0.477 -0.231  0.083                     
#Vrb.Typv2:P  0.226 -0.027 -0.476 -0.470 -0.950 -0.943 -0.231  0.080  0.501              
#Vrb.Ty1:AL. -0.013  0.242 -0.030 -0.097  0.028  0.029  0.027 -0.702 -0.015 -0.057       
#Vrb.Ty2:AL. -0.014  0.248  0.029  0.029  0.019 -0.022  0.027 -0.721 -0.059 -0.110  0.513
#fit warnings:
#  fixed-effect model matrix is rank deficient so dropping 2 columns / coefficients
