getwd()
#[1] "C:/Users/Linda/Documents"
setwd('C:/Users/Linda/Desktop/Rdocument')

load('C://Users//Linda//Desktop//Rdocument//data//Exp1criticaldata.rda')
str(data)

library(lme4)
library(stats)
library(multcomp)

## Modelling Reaction Times Data ##
## Two groups together ##
##1.Reaction Times at the critical word 'ziji' ##
data.lmer0 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer0)

data.lmer1 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, data, REML=FALSE)
summary(data.lmer1)
anova(data.lmer1,data.lmer0)
#Verb.Type:no significant

data.lmer2 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, data, REML=FALSE)
summary(data.lmer2)
anova(data.lmer2,data.lmer0)
#Context: no significant

data.lmer3 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, data, REML=FALSE)
summary(data.lmer3)
anova(data.lmer3, data.lmer0)
#No significant Verb.Type*Context

data.lmer4 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group, data, REML=FALSE)
summary(data.lmer4)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: Pronoun.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#Data: data

#AIC      BIC   logLik deviance df.resid 
#4216.2   4248.7  -2103.1   4206.2     4855 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-3.5073 -0.5671 -0.1069  0.4079  7.7984 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.02252  0.1501  
#Reading.baseline (Intercept) 0.06326  0.2515  
#Residual                     0.12771  0.3574  
#Number of obs: 4860, groups:  CSTSwhole, 90; Reading.baseline, 54

#Fixed effects:
#            Estimate Std. Error t value
#(Intercept)  5.66494    0.05327  106.35
#GroupL2      0.51688    0.06941    7.45

#Correlation of Fixed Effects:
#  (Intr)
#GroupL2 -0.700

anova(data.lmer4,data.lmer0)
#Data: data
#Models:
#data.lmer0: Pronoun.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#data.lmer4: Pronoun.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#            Df   AIC  BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer0  4 4252.4 4278.3 -2122.2   4244.4                             
#data.lmer4  5 4216.2 4248.7 -2103.1   4206.2  38.149      1  6.553e-10 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#Group significant.

data.lmer5 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Verb.Type, data, REML=FALSE)
summary(data.lmer5)
anova(data.lmer5,data.lmer4)
#No significant.

data.lmer6 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole)  + Group*Context, data, REML=FALSE)
summary(data.lmer6)
anova(data.lmer6,data.lmer4)
#No significant.

data.lmer7 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole)  + Group*Antecedent, data, REML=FALSE)
summary(data.lmer7)
anova(data.lmer7,data.lmer4)
# No significant.

####2. Reading Time at Spillover Region ####
#### Spillover1 ####
data.lmer1a <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer1a)

data.lmer1b <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, data, REML=FALSE)
summary(data.lmer1b)
anova(data.lmer1b, data.lmer1a)
#Verb.Type has no significant effect.

data.lmer1c <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, data, REML=FALSE)
summary(data.lmer1c)
anova(data.lmer1c, data.lmer1a)
#Context:no significant.

data.lmer1d <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type * Context, data, REML=FALSE)
summary(data.lmer1d)
anova(data.lmer1d,data.lmer1a)
#No significant.

data.lmer1e <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group, data, REML=FALSE)
summary(data.lmer1e)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: Spillover1.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#Data: data

#AIC      BIC   logLik deviance df.resid 
#3942.5   3975.0  -1966.3   3932.5     4854 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-7.4746 -0.5846 -0.0966  0.4239  6.0207 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.03052  0.1747  
#Reading.baseline (Intercept) 0.06379  0.2526  
#Residual                     0.11990  0.3463  
#Number of obs: 4859, groups:  CSTSwhole, 90; Reading.baseline, 54

#Fixed effects:
#             Estimate Std. Error t value
#(Intercept)  5.64127    0.05426  103.97
#GroupL2      0.46425    0.06964    6.67

#Correlation of Fixed Effects:
#  (Intr)
#GroupL2 -0.689

anova(data.lmer1e,data.lmer1a)
#Data: data
#Models:
#data.lmer1a: Spillover1.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#data.lmer1e: Spillover1.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#             Df  AIC    BIC   logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer1a  4 3973.0 3998.9 -1982.5   3965.0                             
#data.lmer1e  5 3942.5 3975.0 -1966.3   3932.5  32.417      1  1.244e-08 ***
#  ---
# Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#Group: Significant

data.lmer1f <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Verb.Type, data, REML=FALSE)
summary(data.lmer1f)
anova(data.lmer1f,data.lmer1e)
#No Significant.

data.lmer1g <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Context, data, REML=FALSE)
summary(data.lmer1g)
anova(data.lmer1g,data.lmer1e)
#No significant.

data.lmer1h <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Antecedent, data, REML=FALSE)
summary(data.lmer1h)
anova(data.lmer1h,data.lmer1e)
#No significant.

#### Spillover2 ####
data.lmer2a <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer2a)

data.lmer2b <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, data, REML=FALSE)
summary(data.lmer2b)
anova(data.lmer2b, data.lmer2a)
#Verb.Type:no significant.

data.lmer2c <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, data, REML=FALSE)
summary(data.lmer2c)
anova(data.lmer2c, data.lmer2a)
#Context:no significant.

data.lmer2d<- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, data, REML=FALSE)
summary(data.lmer2d)
anova(data.lmer2d,data.lmer2a)
# No significant.

data.lmer2e<- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group, data, REML=FALSE)
summary(data.lmer2e)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: Spillover2.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#Data: data

#AIC      BIC   logLik deviance df.resid 
#2537.8   2570.2  -1263.9   2527.8     4855 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-4.7939 -0.5616 -0.0862  0.4563  9.9496 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.01949  0.1396  
#Reading.baseline (Intercept) 0.04218  0.2054  
#Residual                     0.09016  0.3003  
#Number of obs: 4860, groups:  CSTSwhole, 90; Reading.baseline, 54

#Fixed effects:
#             Estimate Std. Error t value
#(Intercept)  5.65298    0.04409  128.22
#GroupL2      0.33249    0.05671    5.86

#Correlation of Fixed Effects:
#  (Intr)
#GroupL2 -0.691

anova(data.lmer2e,data.lmer2a)
#Data: data
#Models:
#data.lmer2a: Spillover2.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#data.lmer2e: Spillover2.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#            Df   AIC    BIC   logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer2a  4 2562.4 2588.3 -1277.2   2554.4                             
#data.lmer2e  5 2537.8 2570.2 -1263.9   2527.8  26.597      1  2.506e-07 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#Group: significant.

data.lmer2f<- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Verb.Type, data, REML=FALSE)
summary(data.lmer2f)
anova(data.lmer2f,data.lmer2e)
#No significant.

data.lmer2g<- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Context, data, REML=FALSE)
summary(data.lmer2g)
anova(data.lmer2g,data.lmer2e)
#No significant.

data.lmer2h<- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Antecedent, data, REML=FALSE)
summary(data.lmer2h)
anova(data.lmer2h,data.lmer2e)
#No significant.

#### Spillover3 ####
data.lmer3a <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer3a)

data.lmer3b <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, data, REML=FALSE)
summary(data.lmer3b)
anova(data.lmer3b,data.lmer3a)
#Verb.Type: No significant.

data.lmer3c <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, data, REML=FALSE)
summary(data.lmer3c)
anova(data.lmer3c, data.lmer3a)
#Context: no significant.

data.lmer3d <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, data, REML=FALSE)
summary(data.lmer3d)
anova(data.lmer3d,data.lmer3a)
#No significant.

data.lmer3e <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group, data, REML=FALSE)
summary(data.lmer3e)
anova(data.lmer3e,data.lmer3a)
#Data: data
#Models:
#data.lmer3a: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#data.lmer3e: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#            Df   AIC   BIC  logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer3a  4 5060.1 5086 -2526.0   5052.1                             
#data.lmer3e  5 5031.5 5064 -2510.8   5021.5  30.539      1  3.273e-08 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.lmer3f <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Verb.Type, data, REML=FALSE)
summary(data.lmer3f)
anova(data.lmer3f,data.lmer3e)
#Data: data
#Models:
#data.lmer3e: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group
#data.lmer3f: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Group * Verb.Type
#            Df    AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)  
#data.lmer3e  5 5031.5 5064.0 -2510.8   5021.5                           
#data.lmer3f  9 5029.5 5087.9 -2505.7   5011.5  10.065      4    0.03935 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.lmer3g <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Verb.Type*Context, data, REML=FALSE)
summary(data.lmer3g)
anova(data.lmer3g,data.lmer3f)
#Context: no significant.

data.lmer3h <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Group*Verb.Type*Antecedent, data, REML=FALSE)
summary(data.lmer3h)
anova(data.lmer3h,data.lmer3f)
#Antecedent: no significant.

#### After spillover Regions ####
data.lmer4a <- lmer(CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), data, REML=FALSE)
summary(data.lmer4a)

data.lmer4b <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, data, REML=FALSE)
summary(data.lmer4b)
anova(data.lmer4b,data.lmer4a)
#Data: data
#Models:
#data.lmer4a: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#data.lmer4b: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type
#            Df   AIC   BIC  logLik deviance  Chisq   Chi Df Pr(>Chisq)  
#data.lmer4a  4 13307 13333 -6649.7    13299                           
#data.lmer4b  6 13305 13344 -6646.3    13293  6.7663      2    0.03394 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
 
data.lmer4c <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type + Context, data, REML=FALSE)
summary(data.lmer4c)
anova(data.lmer4c, data.lmer4b)
#Context: no significant.

data.lmer4d <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, data, REML=FALSE)
summary(data.lmer4d)
anova(data.lmer4d,data.lmer4b)
#Data: data
#Models:
#data.lmer4b: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type
#data.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#             Df  AIC   BIC  logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer4b  6 13305 13344 -6646.3    13293                             
#data.lmer4d  9 13233 13292 -6607.7    13215  77.272      3  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
anova(data.lmer4d,data.lmer4c)
#Data: data
#Models:
#data.lmer4c: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type + Context
#data.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#            Df  AIC   BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer4c  7 13307 13352 -6646.3    13293                             
#data.lmer4d  9 13233 13292 -6607.7    13215  77.265      2  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.lmer4e <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context + Group, data, REML=FALSE)
summary(data.lmer4e)
anova(data.lmer4e,data.lmer4d)
#Data: data
#Models:
#data.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#data.lmer4e: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context + Group
#            Df  AIC   BIC   logLik deviance  Chisq  Chi Df Pr(>Chisq)    
#data.lmer4d  9 13233 13292 -6607.7    13215                             
#data.lmer4e 10 13216 13280 -6597.8    13196  19.814      1  8.537e-06 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.lmer4f <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Group, data, REML=FALSE)
summary(data.lmer4f)
anova(data.lmer4f,data.lmer4e)
#Data: data
#Models:
#data.lmer4e: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context + Group
#data.lmer4f: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Group
#            Df  AIC   BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.lmer4e 10 13216 13280 -6597.8    13196                             
#data.lmer4f 15 13126 13223 -6547.9    13096  99.713      5  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.lmer4g <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Group + Antecedent, data, REML=FALSE)
summary(data.lmer4g)
anova(data.lmer4g,data.lmer4f)
#no significant.

data.lmer4h <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Group*Antecedent, data, REML=FALSE)
summary(data.lmer4h)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: CSTSwhole.LogRT ~ (1 | Reading.baseline) + (1 | CSTSwhole) +      Verb.Type * Context * Group * Antecedent
#Data: data

#AIC      BIC   logLik deviance df.resid 
#13112.7  13287.9  -6529.3  13058.7     4833 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-4.7941 -0.6130  0.0396  0.6386  3.6187 

#Random effects:
# Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.0628   0.2506  
#Reading.baseline (Intercept) 0.2474   0.4974  
#Residual                     0.8037   0.8965  
#Number of obs: 4860, groups:  CSTSwhole, 90; Reading.baseline, 54

#Fixed effects:
#                                                          Estimate Std. Error t value
#(Intercept)                                               7.67631    0.12900   59.50
#Verb.Typev1                                              -0.09259    0.11448   -0.81
#Verb.Typev2                                               1.26400    0.13835    9.14
#ContextLong.dist                                          0.12486    0.19741    0.63
#GroupL2                                                   0.76935    0.15239    5.05
#AntecedentLong.dist                                      -0.02188    0.14406   -0.15
#Verb.Typev1:ContextLong.dist                              0.81822    0.23199    3.53
#Verb.Typev2:ContextLong.dist                             -1.13848    0.57635   -1.98
#Verb.Typev1:GroupL2                                      -0.01295    0.09515   -0.14
#Verb.Typev2:GroupL2                                      -0.69496    0.12692   -5.48
#ContextLong.dist:GroupL2                                  0.14886    0.19796    0.75
#Verb.Typev1:AntecedentLong.dist                          -0.66928    0.40036   -1.67
#Verb.Typev2:AntecedentLong.dist                          -0.34514    0.18019   -1.92
#ContextLong.dist:AntecedentLong.dist                     -0.06204    0.22736   -0.27
#GroupL2:AntecedentLong.dist                               0.24233    0.17874    1.36
#Verb.Typev1:ContextLong.dist:GroupL2                     -0.63380    0.22790   -2.78
#Verb.Typev2:ContextLong.dist:GroupL2                      0.48048    0.57778    0.83
#Verb.Typev1:ContextLong.dist:AntecedentLong.dist          0.91212    0.44866    2.03
#Verb.Typev2:ContextLong.dist:AntecedentLong.dist          0.01884    0.58425    0.03
#Verb.Typev1:GroupL2:AntecedentLong.dist                   0.75827    0.43583    1.74
#Verb.Typev2:GroupL2:AntecedentLong.dist                   0.18770    0.22512    0.83
#ContextLong.dist:GroupL2:AntecedentLong.dist             -0.29878    0.26890   -1.11
#Verb.Typev1:ContextLong.dist:GroupL2:AntecedentLong.dist -0.73624    0.49728   -1.48
#Verb.Typev2:ContextLong.dist:GroupL2:AntecedentLong.dist  0.02001    0.61469    0.03

#Correlation matrix not shown by default, as p = 24 > 12.
#Use print(x, correlation=TRUE)  or
#vcov(x)	 if you need it
anova(data.lmer4h,data.lmer4f)
#Data: data
#Models:
#data.lmer4f: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Group
#data.lmer4h: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Group * Antecedent
#Df   AIC   BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)    
#data.lmer4f 15 13126 13223 -6547.9    13096                             
#data.lmer4h 27 13113 13288 -6529.3    13059 37.115     12   0.000214 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1



## Separate twp groups ##
### Native Chinese Group only ###
load('C://Users//Linda//Desktop//Rdocument//data//Exp1NCdata.rda')
str(NCdat)

## Modelling Reaction-time Data ##
##1.Reading Time at the critical word 'ziji' ##
NCdat.lmer1 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer1)

NCdat.lmer2 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, NCdat, REML=FALSE)
summary(NCdat.lmer2)
anova(NCdat.lmer2, NCdat.lmer1)
#Verb.Type: no significant.

NCdat.lmer3 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, NCdat, REML=FALSE)
summary(NCdat.lmer3)
anova(NCdat.lmer3, NCdat.lmer1)
#Context: No significant.

NCdat.lmer4 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, NCdat, REML=FALSE)
summary(NCdat.lmer4)
anova(NCdat.lmer4,NCdat.lmer1)
#No significant.

NCdat.lmer5 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer5)
anova(NCdat.lmer5,NCdat.lmer1)
#No significant.

NCdat.lmer6 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Verb.Type, NCdat, REML=FALSE)
summary(NCdat.lmer6)
anova(NCdat.lmer6,NCdat.lmer1)
#No significant.

NCdat.lmer7 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Context, NCdat, REML=FALSE)
summary(NCdat.lmer7)
anova(NCdat.lmer7,NCdat.lmer1)
#No significant.

NCdat.lmer8 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Verb.Type*Context, NCdat, REML=FALSE)
summary(NCdat.lmer8)
anova(NCdat.lmer8,NCdat.lmer1)
#No significant.

NCdat.lmer9 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Memory, NCdat, REML=FALSE)
summary(NCdat.lmer9)
anova(NCdat.lmer9,NCdat.lmer1)
#No significant.

NCdat.lmer10 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Handness, NCdat, REML=FALSE)
summary(NCdat.lmer10)
anova(NCdat.lmer10,NCdat.lmer1)
#No significant.

####2. Reading Time at Spillover Region ####
#### Spillover1 ####
NCdat.lmer1a <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer1a)

NCdat.lmer1b <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, NCdat, REML=FALSE)
summary(NCdat.lmer1b)
anova(NCdat.lmer1b, NCdat.lmer1a)
# Verb.Type:no significant.

NCdat.lmer1c <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, NCdat, REML=FALSE)
summary(NCdat.lmer1c)
anova(NCdat.lmer1c, NCdat.lmer1a)
#Context: No significant.

NCdat.lmer1d <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, NCdat, REML=FALSE)
summary(NCdat.lmer1d)
anova(NCdat.lmer1d, NCdat.lmer1a)
#No significant.

NCdat.lmer1f <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer1f)
anova(NCdat.lmer1f, NCdat.lmer1a)
#No significant.

NCdat.lmer1g <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Verb.Type, NCdat, REML=FALSE)
summary(NCdat.lmer1g)
anova(NCdat.lmer1g, NCdat.lmer1a)
#No significant.

NCdat.lmer1h <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Context, NCdat, REML=FALSE)
summary(NCdat.lmer1h)
anova(NCdat.lmer1h, NCdat.lmer1a)
#No significant.

NCdat.lmer1i <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer1i)
anova(NCdat.lmer1i, NCdat.lmer1a)
#No significant.

NCdat.lmer1j <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Memory, NCdat, REML=FALSE)
summary(NCdat.lmer1j)
anova(NCdat.lmer1j, NCdat.lmer1a)
#No significant.

NCdat.lmer1k <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Handness, NCdat, REML=FALSE)
summary(NCdat.lmer1k)
anova(NCdat.lmer1k, NCdat.lmer1a)
#No significant.

#### Spillover2 ####
NCdat.lmer2a <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer2a)

NCdat.lmer2b <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, NCdat, REML=FALSE)
summary(NCdat.lmer2b)
anova(NCdat.lmer2b, NCdat.lmer2a)
#Verb.Type: no significant.

NCdat.lmer2c <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, NCdat, REML=FALSE)
summary(NCdat.lmer2c)
anova(NCdat.lmer2c, NCdat.lmer2a)
#Context: No significant.

NCdat.lmer2d <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, NCdat, REML=FALSE)
summary(NCdat.lmer2d)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: Spillover2.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#Data: NCdat

#AIC      BIC   logLik deviance df.resid 
#637.8    689.3   -309.9    619.8     2241 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-5.3172 -0.5790 -0.0988  0.4508 11.2227 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.01502  0.1225  
#Reading.baseline (Intercept) 0.02600  0.1612  
#Residual                     0.06886  0.2624  
#Number of obs: 2250, groups:  CSTSwhole, 90; Reading.baseline, 25

#Fixed effects:
#  Estimate Std. Error t value
#(Intercept)                   5.659239   0.047167  119.98
#Verb.Typev1                  -0.054438   0.048676   -1.12
#Verb.Typev2                   0.065966   0.048676    1.36
#ContextLong.dist             -0.004817   0.048676   -0.10
#Verb.Typev1:ContextLong.dist  0.091179   0.068838    1.32
#Verb.Typev2:ContextLong.dist -0.137315   0.068838   -1.99

#Correlation of Fixed Effects:
#  (Intr) Vrb.T1 Vrb.T2 CntxL. V.T1:C
#Verb.Typev1 -0.516                            
#Verb.Typev2 -0.516  0.500                     
#CntxtLng.ds -0.516  0.500  0.500              
#Vrb.Ty1:CL.  0.365 -0.707 -0.354 -0.707       
#Vrb.Ty2:CL.  0.365 -0.354 -0.707 -0.707  0.500
anova(NCdat.lmer2d, NCdat.lmer2a)
#Data: NCdat
#Models:
#NCdat.lmer2a: Spillover2.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#NCdat.lmer2d: Spillover2.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#             Df  AIC    BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)  
#NCdat.lmer2a  4 638.82 661.70 -315.41   630.82                           
#NCdat.lmer2d  9 637.78 689.25 -309.89   619.78  11.042      5    0.05056 .
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.lmer2e <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context + Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer2e)
anova(NCdat.lmer2e, NCdat.lmer2d)
#No significant.

NCdat.lmer2f <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer2f)
anova(NCdat.lmer2f, NCdat.lmer2d)
#No significant.

NCdat.lmer2g <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context + Memory, NCdat, REML=FALSE)
summary(NCdat.lmer2g)
anova(NCdat.lmer2g, NCdat.lmer2d)
#No significant.

NCdat.lmer2h <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context + Handness, NCdat, REML=FALSE)
summary(NCdat.lmer2h)
anova(NCdat.lmer2h, NCdat.lmer2d)
#No significant.

#### Spillover3 ####
NCdat.lmer3a <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer3a)

NCdat.lmer3b <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, NCdat, REML=FALSE)
summary(NCdat.lmer3b)
anova(NCdat.lmer3b,NCdat.lmer3a)
#Verb.Type: no significant.

NCdat.lmer3c <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, NCdat, REML=FALSE)
summary(NCdat.lmer3c)
anova(NCdat.lmer3c, NCdat.lmer3a)
#Context: no significant.

NCdat.lmer3d <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, NCdat, REML=FALSE)
summary(NCdat.lmer3d)
anova(NCdat.lmer3d, NCdat.lmer3a)
#Data: NCdat
#Models:
#NCdat.lmer3a: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#NCdat.lmer3d: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#             Df   AIC    BIC   logLik deviance  Chisq   Chi Df Pr(>Chisq)  
#NCdat.lmer3a  4 1455.6 1478.4 -723.78   1447.6                           
#NCdat.lmer3d  9 1455.0 1506.4 -718.49   1437.0  10.597      5    0.05999 .
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.lmer3e <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context + Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer3e)
anova(NCdat.lmer3e, NCdat.lmer3d)
# No significant.

NCdat.lmer3f <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer3f)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent
#Data: NCdat

#AIC      BIC   logLik deviance df.resid 
#1453.7   1539.5   -711.8   1423.7     2235 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-3.6603 -0.5927 -0.0930  0.4448  6.6693 

#Random effects:
#  Groups           Name        Variance Std.Dev.
#CSTSwhole        (Intercept) 0.01622  0.1273  
#Reading.baseline (Intercept) 0.04452  0.2110  
#Residual                     0.09917  0.3149  
#Number of obs: 2250, groups:  CSTSwhole, 90; Reading.baseline, 25

#Fixed effects:
#  Estimate Std. Error t value
#(Intercept)                                       5.8658478  0.0564619  103.89
#Verb.Typev1                                      -0.0382534  0.0525033   -0.73
#Verb.Typev2                                       0.0506038  0.0598010    0.85
#ContextLong.dist                                  0.0292583  0.0803222    0.36
#AntecedentLong.dist                               0.0252808  0.0554987    0.46
#Verb.Typev1:ContextLong.dist                      0.0915632  0.0971373    0.94
#Verb.Typev2:ContextLong.dist                     -0.1349009  0.2115298   -0.64
#Verb.Typev1:AntecedentLong.dist                  -0.3519877  0.1429500   -2.46
#Verb.Typev2:AntecedentLong.dist                  -0.0005584  0.0683196   -0.01
#ContextLong.dist:AntecedentLong.dist             -0.0101250  0.0865960   -0.12
#Verb.Typev1:ContextLong.dist:AntecedentLong.dist  0.2441918  0.1618807    1.51
#Verb.Typev2:ContextLong.dist:AntecedentLong.dist -0.0359740  0.2104155   -0.17

#Correlation of Fixed Effects:
#  (Intr) Vrb.T1 Vrb.T2 CntxL. AntcL. Vr.T1:CL. Vr.T2:CL. V.T1:A V.T2:A CL.:AL V.T1:CL.:
#  Verb.Typev1 -0.475                                                                               
#Verb.Typev2 -0.417  0.448                                                                        
#CntxtLng.ds -0.310  0.334  0.292                                                                 
#AntcdntLng. -0.139  0.148  0.129  0.097                                                          
#Vrb.Ty1:CL.  0.256 -0.540 -0.244 -0.827 -0.079                                                   
#Vrb.Ty2:CL.  0.117 -0.126 -0.282 -0.379 -0.029  0.315                                            
#Vrb.Ty1:AL.  0.051 -0.092 -0.048 -0.038 -0.367  0.052     0.019                                  
#Vrb.Ty2:AL.  0.113 -0.120 -0.386 -0.078 -0.810  0.067     0.104     0.298                        
#CntxtL.:AL.  0.089 -0.095 -0.082 -0.644 -0.641  0.532     0.239     0.237  0.518                 
#V.T1:CL.:AL -0.045  0.081  0.046  0.344  0.323 -0.341    -0.137    -0.884 -0.267 -0.524          
#V.T2:CL.:AL -0.035  0.038  0.125  0.264  0.255 -0.220    -0.912    -0.102 -0.319 -0.406  0.223 
anova(NCdat.lmer3f, NCdat.lmer3d)
#Data: NCdat
#Models:
#NCdat.lmer3d: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#NCdat.lmer3f: Spillover3.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent
#             Df    AIC   BIC   logLik deviance  Chisq   Chi Df Pr(>Chisq)  
#NCdat.lmer3d  9 1455.0 1506.4 -718.49   1437.0                           
#NCdat.lmer3f 15 1453.7 1539.5 -711.84   1423.7  13.289      6    0.03868 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.lmer3g <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent + Memory, NCdat, REML=FALSE)
summary(NCdat.lmer3g)
anova(NCdat.lmer3g, NCdat.lmer3f)
# No significant.

NCdat.lmer3h <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent + Handness, NCdat, REML=FALSE)
summary(NCdat.lmer3h)
anova(NCdat.lmer3h, NCdat.lmer3f)
# No significant.


##### After Spillover Regions ##########
NCdat.lmer4a <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), NCdat, REML=FALSE)
summary(NCdat.lmer4a)

NCdat.lmer4b <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, NCdat, REML=FALSE)
summary(NCdat.lmer4b)

anova(NCdat.lmer4b,NCdat.lmer4a)
#Data: NCdat
#Models:
#NCdat.lmer4a: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#NCdat.lmer4b: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type
#Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)  
#NCdat.lmer4a  4 5903.4 5926.2 -2947.7   5895.4                           
#NCdat.lmer4b  6 5898.2 5932.5 -2943.1   5886.2 9.1507      2     0.0103 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.lmer4c <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type + Context, NCdat, REML=FALSE)
summary(NCdat.lmer4c)
anova(NCdat.lmer4c, NCdat.lmer4b)
#Context:no significant.

NCdat.lmer4d <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, NCdat, REML=FALSE)
summary(NCdat.lmer4d)
anova(NCdat.lmer4d, NCdat.lmer4b)
#Data: NCdat
#Models:
#NCdat.lmer4b: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type
#NCdat.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#             Df  AIC    BIC    logLik deviance  Chisq  Chi Df Pr(>Chisq)    
#NCdat.lmer4b  6 5898.2 5932.5 -2943.1   5886.2                            
#NCdat.lmer4d  9 5816.6 5868.1 -2899.3   5798.6  87.59      3  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.lmer4e <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context + Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer4e)
anova(NCdat.lmer4e, NCdat.lmer4d)
#Antecedent: no significant.

NCdat.lmer4f <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, NCdat, REML=FALSE)
summary(NCdat.lmer4f)
anova(NCdat.lmer4f, NCdat.lmer4d)
#Data: NCdat
#Models:
#NCdat.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#NCdat.lmer4f: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent
#             Df  AIC    BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)  
#NCdat.lmer4d  9 5816.6 5868.1 -2899.3   5798.6                           
#NCdat.lmer4f 15 5812.9 5898.7 -2891.5   5782.9  15.694      6    0.01549 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.lmer4g <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent + Memory, NCdat, REML=FALSE)
summary(NCdat.lmer4g)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent + Memory
#Data: NCdat

#AIC      BIC   logLik deviance df.resid 
#5809.9   5901.4  -2888.9   5777.9     2234 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-4.5469 -0.6211  0.0116  0.5819  3.8688 

#Random effects:
#  Groups                 Name        Variance Std.Dev.
#CSTSwhole              (Intercept) 0.09137  0.3023  
#Reading.baseline.LogRT (Intercept) 0.17428  0.4175  
#Residual                           0.69584  0.8342  
#Number of obs: 2250, groups:  CSTSwhole, 90; Reading.baseline.LogRT, 25

#Fixed effects:
#  Estimate Std. Error t value
#(Intercept)                                      10.745241   1.300421   8.263
#Verb.Typev1                                      -0.089323   0.127846  -0.699
#Verb.Typev2                                       1.226090   0.148460   8.259
#ContextLong.dist                                 -0.049450   0.204741  -0.242
#AntecedentLong.dist                              -0.006761   0.145677  -0.046
#Memory                                           -0.023465   0.009891  -2.372
#Verb.Typev1:ContextLong.dist                      1.010750   0.244643   4.132
#Verb.Typev2:ContextLong.dist                     -0.974126   0.554029  -1.758
#Verb.Typev1:AntecedentLong.dist                  -0.755130   0.378013  -1.998
#Verb.Typev2:AntecedentLong.dist                  -0.304442   0.179607  -1.695
#ContextLong.dist:AntecedentLong.dist              0.115754   0.227610   0.509
#Verb.Typev1:ContextLong.dist:AntecedentLong.dist  0.764286   0.427637   1.787
#Verb.Typev2:ContextLong.dist:AntecedentLong.dist -0.164374   0.556025  -0.296

#Correlation matrix not shown by default, as p = 13 > 12.
#Use print(x, correlation=TRUE)  or
#vcov(x)	 if you need it
anova(NCdat.lmer4g, NCdat.lmer4f)
#Data: NCdat
#Models:
#NCdat.lmer4f: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent
#NCdat.lmer4g: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent + Memory
#             Df    AIC    BIC  logLik deviance  Chisq  Chi Df Pr(>Chisq)  
#NCdat.lmer4f 15 5812.9 5898.7 -2891.5   5782.9                            
#NCdat.lmer4g 16 5809.9 5901.4 -2888.9   5777.9 5.0743      1    0.02428 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.lmer4h <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent + Memory + Handness, NCdat, REML=FALSE)
summary(NCdat.lmer4h)
anova(NCdat.lmer4h, NCdat.lmer4g)
#Handness:no significant

NCdat.lmer4i <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent*Memory, NCdat, REML=FALSE)
summary(NCdat.lmer4i)
anova(NCdat.lmer4i, NCdat.lmer4g)
#no significant


### L2 learners Group ###
load('C://Users//Linda//Desktop//Rdocument//data//Exp1L2dat1.rda')
str(L2dat1)

##1.Reading Time at the critical word 'ziji' ##
L2dat1.lmer1 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), L2dat1, REML=FALSE)
summary(L2dat1.lmer1)

L2dat1.lmer2 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer1)
anova(L2dat1.lmer2,L2dat1.lmer1)
#verb type:no significant.

L2dat1.lmer3 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer3)
anova(L2dat1.lmer3,L2dat1.lmer1)
#context:no significant.

L2dat1.lmer4 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) +Verb.Type*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer4)
anova(L2dat1.lmer4,L2dat1.lmer1)
#No significant.

L2dat1.lmer5 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer5)
anova(L2dat1.lmer5,L2dat1.lmer1)
#Antecedent: no significant.

L2dat1.lmer6 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer6)
anova(L2dat1.lmer6,L2dat1.lmer1)
#No significant.

L2dat1.lmer7 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context*Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer7)
anova(L2dat1.lmer7,L2dat1.lmer1)
#No significant.

L2dat1.lmer8 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer8)
anova(L2dat1.lmer8,L2dat1.lmer1)
#No significant.

L2dat1.lmer9 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent*Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer9)
anova(L2dat1.lmer9,L2dat1.lmer1)
#No significant.

L2dat1.lmer10 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer10)
anova(L2dat1.lmer10,L2dat1.lmer1)
#No significant.

L2dat1.lmer11 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Memory, L2dat1, REML=FALSE)
summary(L2dat1.lmer11)
anova(L2dat1.lmer11,L2dat1.lmer1)
#No significant.

L2dat1.lmer12 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Age.Chinese, L2dat1, REML=FALSE)
summary(L2dat1.lmer12)
anova(L2dat1.lmer12,L2dat1.lmer1)
#No significant.

L2dat1.lmer13 <- lmer( Pronoun.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Handness, L2dat1, REML=FALSE)
summary(L2dat1.lmer13)
anova(L2dat1.lmer13,L2dat1.lmer1)
#No significant.

####2. Reading Time at Spillover Region ####
#### Spillover1 ####
L2dat1.lmer1a <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), L2dat1, REML=FALSE)
summary(L2dat1.lmer1a)

L2dat1.lmer1b <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer1b)
anova(L2dat1.lmer1b, L2dat1.lmer1a)
#Verb type: no significant.

L2dat1.lmer1c <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer1c)
anova(L2dat1.lmer1c, L2dat1.lmer1a)
#Context:no significant.

L2dat1.lmer1d <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer1d)
anova(L2dat1.lmer1d, L2dat1.lmer1a)
#No Significant.

L2dat1.lmer1e <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer1e)
anova(L2dat1.lmer1e, L2dat1.lmer1a)
#Antecedent:no Significant effect.

L2dat1.lmer1f <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer1f)
anova(L2dat1.lmer1f, L2dat1.lmer1a)
#No Significant

L2dat1.lmer1g <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer1g)
anova(L2dat1.lmer1g, L2dat1.lmer1a)
#No significant.

L2dat1.lmer1h <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer1h)
anova(L2dat1.lmer1h, L2dat1.lmer1a)
#No signficant.

L2dat1.lmer1i <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent*Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer1i)
anova(L2dat1.lmer1i,L2dat1.lmer1a)
#No significant.

L2dat1.lmer1j <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer1j)
anova(L2dat1.lmer1j,L2dat1.lmer1a)
#No significant.

L2dat1.lmer1k <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Memory, L2dat1, REML=FALSE)
summary(L2dat1.lmer1k)
anova(L2dat1.lmer1k,L2dat1.lmer1a)
#No significant.

L2dat1.lmer1l <- lmer( Spillover1.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Age.Chinese, L2dat1, REML=FALSE)
summary(L2dat1.lmer1l)
anova(L2dat1.lmer1l,L2dat1.lmer1a)
#No significant.

#### Spillover2 ####
L2dat1.lmer2a <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), L2dat1, REML=FALSE)
summary(L2dat1.lmer2a)

L2dat1.lmer2b <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer2b)
anova(L2dat1.lmer2b, L2dat1.lmer2a)
#verb.Type:no significant.

L2dat1.lmer2c <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer2c)
anova(L2dat1.lmer2c, L2dat1.lmer2a)
#Context:no significant. 

L2dat1.lmer2d <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer2d)
anova(L2dat1.lmer2d, L2dat1.lmer2a)
#No significant.

L2dat1.lmer2e <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer2e)
anova(L2dat1.lmer2e, L2dat1.lmer2a)
#Antecedent: No significant.

L2dat1.lmer2f <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer2f)
anova(L2dat1.lmer2f, L2dat1.lmer2a)
#No significant

L2dat1.lmer2g <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer2g)
anova(L2dat1.lmer2g, L2dat1.lmer2a)
#No significant

L2dat1.lmer2h <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer2h)
anova(L2dat1.lmer2h, L2dat1.lmer2a)
#No significant


L2dat1.lmer2i <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer2i)
anova(L2dat1.lmer2i, L2dat1.lmer2a)
#No significant

L2dat1.lmer2j <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Memory, L2dat1, REML=FALSE)
summary(L2dat1.lmer2j)
anova(L2dat1.lmer2j, L2dat1.lmer2a)
#No significant

L2dat1.lmer2k <- lmer( Spillover2.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Age.Chinese, L2dat1, REML=FALSE)
summary(L2dat1.lmer2k)
anova(L2dat1.lmer2k, L2dat1.lmer2a)
#No significant

#### Spillover3 ####
L2dat1.lmer3a <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), L2dat1, REML=FALSE)
summary(L2dat1.lmer3a)

L2dat1.lmer3b <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer3b)
anova(L2dat1.lmer3b,L2dat1.lmer3a)
#Verb.Type: No significant

L2dat1.lmer3c <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer3c)
anova(L2dat1.lmer3c, L2dat1.lmer3a)
#Context: no significant

L2dat1.lmer3d <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer3d)
anova(L2dat1.lmer3d, L2dat1.lmer3a)
#No significant

L2dat1.lmer3e <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer3e)
anova(L2dat1.lmer3e, L2dat1.lmer3a)
#Antecedent:No significant

L2dat1.lmer3f <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer3f)
anova(L2dat1.lmer3f, L2dat1.lmer3a)
#No significant

L2dat1.lmer3g <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Antecedent*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer3g)
anova(L2dat1.lmer3g, L2dat1.lmer3a)
#No significant

L2dat1.lmer3h <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer3h)
anova(L2dat1.lmer3h, L2dat1.lmer3a)
#No significant 

L2dat1.lmer3i <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer3i)
anova(L2dat1.lmer3i, L2dat1.lmer3a)
#No significant

L2dat1.lmer3j <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Memory, L2dat1, REML=FALSE)
summary(L2dat1.lmer3j)
anova(L2dat1.lmer3j, L2dat1.lmer3a)
#No significant

L2dat1.lmer3k <- lmer( Spillover3.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Age.Chinese, L2dat1, REML=FALSE)
summary(L2dat1.lmer3k)
anova(L2dat1.lmer3k, L2dat1.lmer3a)
#No significant

######## After Spillover Regions#####################
L2dat1.lmer4a <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole), L2dat1, REML=FALSE)
summary(L2dat1.lmer4a)

L2dat1.lmer4b <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type, L2dat1, REML=FALSE)
summary(L2dat1.lmer4b)
anova(L2dat1.lmer4b,L2dat1.lmer4a)
#Verb.Type:no significant

L2dat1.lmer4c <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer4c)
anova(L2dat1.lmer4c, L2dat1.lmer4a)
#Context:no significant

L2dat1.lmer4d <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context, L2dat1, REML=FALSE)
summary(L2dat1.lmer4d)
anova(L2dat1.lmer4d, L2dat1.lmer4a)
#Data: L2dat1
#Models:
#L2dat1.lmer4a: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole)
#L2dat1.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#              Df    AIC    BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat1.lmer4a  4 7331.6 7355.0 -3661.8   7323.6                             
#L2dat1.lmer4d  9 7296.8 7349.6 -3639.4   7278.8  44.747      5  1.633e-08 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.lmer4e <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context + Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer4e)
anova(L2dat1.lmer4e, L2dat1.lmer4d)
#Antecedent:No significant

L2dat1.lmer4f <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent, L2dat1, REML=FALSE)
summary(L2dat1.lmer4f)
anova(L2dat1.lmer4f, L2dat1.lmer4d)
#Data: L2dat1
#Models:
#L2dat1.lmer4d: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context
#L2dat1.lmer4f: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent
#               Df   AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)   
#L2dat1.lmer4d  9 7296.8 7349.6 -3639.4   7278.8                            
#L2dat1.lmer4f 15 7291.6 7379.6 -3630.8   7261.6  17.227      6   0.008486 **
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.lmer4g <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent + Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer4g)
anova(L2dat1.lmer4g, L2dat1.lmer4f)
#Data: L2dat1
#Models:
#L2dat1.lmer4f: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent
#L2dat1.lmer4g: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent + Proficiency
#              Df    AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)  
#L2dat1.lmer4f 15 7291.6 7379.6 -3630.8   7261.6                           
#L2dat1.lmer4g 16 7290.7 7384.5 -3629.3   7258.7  2.9332      1    0.08677 .
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.lmer4h <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent*Proficiency, L2dat1, REML=FALSE)
summary(L2dat1.lmer4h)
#Linear mixed model fit by maximum likelihood  ['lmerMod']
#Formula: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) +  
#  Verb.Type * Context * Antecedent * Proficiency
#Data: L2dat1

#AIC      BIC   logLik deviance df.resid 
#7269.6   7428.0  -3607.8   7215.6     2583 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-4.3250 -0.6198  0.0676  0.6831  3.4695 

#Random effects:
#  Groups                 Name        Variance Std.Dev.
#CSTSwhole              (Intercept) 0.05751  0.2398  
#Reading.baseline.LogRT (Intercept) 0.24559  0.4956  
#Residual                           0.86379  0.9294  
#Number of obs: 2610, groups:  CSTSwhole, 90; Reading.baseline.LogRT, 29

#Fixed effects:
#                                                              Estimate  Std. Error t value
#(Intercept)                                                  10.2110043  0.8302927  12.298
#Verb.Typev1                                                   0.2052796  0.5517927   0.372
#Verb.Typev2                                                  -0.8505455  0.6264918  -1.358
#ContextLong.dist                                              0.0101883  0.7628112   0.013
#AntecedentLong.dist                                           0.0200333  0.9597365   0.021
#Proficiency                                                  -0.0213650  0.0099508  -2.147
#Verb.Typev1:ContextLong.dist                                 -2.4695014  1.0350818  -2.386
#Verb.Typev2:ContextLong.dist                                 -0.1674604  1.1501286  -0.146
#Verb.Typev1:AntecedentLong.dist                              -1.9386977  1.5036285  -1.289
#Verb.Typev2:AntecedentLong.dist                               0.4090748  1.1989259   0.341
#ContextLong.dist:AntecedentLong.dist                          0.8223160  1.2478003   0.659
#Verb.Typev1:Proficiency                                      -0.0037459  0.0065185  -0.575
#Verb.Typev2:Proficiency                                       0.0173019  0.0074726   2.315
#ContextLong.dist:Proficiency                                  0.0030651  0.0094611   0.324
#AntecedentLong.dist:Proficiency                               0.0022542  0.0116864   0.193
#Verb.Typev1:ContextLong.dist:AntecedentLong.dist              2.3657022  1.8493502   1.279
#Verb.Typev2:ContextLong.dist:AntecedentLong.dist              0.0891478  1.6568970   0.054
#Verb.Typev1:ContextLong.dist:Proficiency                      0.0320397  0.0125835   2.546
#Verb.Typev2:ContextLong.dist:Proficiency                     -0.0057374  0.0141880  -0.404
#Verb.Typev1:AntecedentLong.dist:Proficiency                   0.0257304  0.0186978   1.376
#Verb.Typev2:AntecedentLong.dist:Proficiency                  -0.0069590  0.0145296  -0.479
#ContextLong.dist:AntecedentLong.dist:Proficiency             -0.0137936  0.0152993  -0.902
#Verb.Typev1:ContextLong.dist:AntecedentLong.dist:Proficiency -0.0277765  0.0228539  -1.215
#Verb.Typev2:ContextLong.dist:AntecedentLong.dist:Proficiency -0.0009308  0.0202574  -0.046

#Correlation matrix not shown by default, as p = 24 > 12.
#Use print(x, correlation=TRUE)  or
#vcov(x)	 if you need it

anova(L2dat1.lmer4h, L2dat1.lmer4f)
#Data: L2dat1
#Models:
#L2dat1.lmer4f: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent
#L2dat1.lmer4h: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent * Proficiency
#              Df    AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#L2dat1.lmer4f 15 7291.6 7379.6 -3630.8   7261.6                             
#L2dat1.lmer4h 27 7269.6 7428.0 -3607.8   7215.6  46.001     12  6.935e-06 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
anova(L2dat1.lmer4h, L2dat1.lmer4g)
#Data: L2dat1
#Models:
#L2dat1.lmer4g: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent + Proficiency
#L2dat1.lmer4h: CSTSwhole.LogRT ~ (1 | Reading.baseline.LogRT) + (1 | CSTSwhole) + Verb.Type * Context * Antecedent * Proficiency
#              Df    AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#L2dat1.lmer4g 16 7290.7 7384.5 -3629.3   7258.7                             
#L2dat1.lmer4h 27 7269.6 7428.0 -3607.8   7215.6  43.068     11  1.057e-05 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.lmer4i <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent*Proficiency + Memory, L2dat1, REML=FALSE)
summary(L2dat1.lmer4i)
anova(L2dat1.lmer4i,L2dat1.lmer4h)
#Memory: no significant

L2dat1.lmer4j <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent*Proficiency + Age.Chinese, L2dat1, REML=FALSE)
summary(L2dat1.lmer4j)
anova(L2dat1.lmer4j,L2dat1.lmer4h)
#Age.Chinese: no significant

L2dat1.lmer4k <- lmer( CSTSwhole.LogRT ~ (1|Reading.baseline.LogRT) + (1|CSTSwhole) + Verb.Type*Context*Antecedent*Proficiency + Handness, L2dat1, REML=FALSE)
summary(L2dat1.lmer4k)
anova(L2dat1.lmer4k,L2dat1.lmer4h)
#Handness:no significant
