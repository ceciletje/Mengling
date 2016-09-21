getwd()
#[1] "C:/Users/Linda/Documents"
setwd('C:/Users/Linda/Desktop/Rdocument')

load('C://Users//Linda//Desktop//Rdocument//data//Exp1subdata.rda')
str(subdat)
#'data.frame':	4860 obs. of  49 variables:
#$ Subject               : Factor w/ 54 levels "L2.1","L2.10",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Attention             : num  0.0383 0.0383 0.0383 0.0383 0.0383 ...
#$ Proficiency           : int  92 92 92 92 92 92 92 92 92 92 ...
#$ Session               : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                   : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group                 : Factor w/ 2 levels "Native","L2": 2 2 2 2 2 2 2 2 2 2 ...
#$ Handedness            : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                   : Factor w/ 2 levels "female","male": 1 1 1 1 1 1 1 1 1 1 ...
#$ Context               : Factor w/ 2 levels "Local","Long.dist": 1 2 2 2 1 1 1 1 1 2 ...
#$ Verb.Type             : Factor w/ 3 levels "v3","v1","v2": 2 1 1 3 3 1 2 3 1 2 ...
#$ Distance              : Factor w/ 2 levels "LD","local": 2 1 1 1 1 2 2 1 2 2 ...
#$ Context.Sentence      : Factor w/ 90 levels "LDbangzhu.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CS.RT                 : int  5402 6049 13877 5259 5148 6591 5653 3593 3336 5798 ...
#$ CSTSwhole             : Factor w/ 90 levels "LDbangzhuwhole.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CSTSwhole.RT          : int  14064 17572 21645 19276 51187 4969 17937 18585 10845 24745 ...
#$ Question              : Factor w/ 45 levels "bangzhuquestion.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ CorrectAnswer         : int  2 1 1 1 1 2 2 1 2 2 ...
#$ Question.ACC          : int  1 1 0 1 0 1 0 0 0 0 ...
#$ Question.RT           : int  2800 6171 5480 7112 2658 1239 4601 2492 4807 3557 ...
#$ Embedded.Verb         : Factor w/ 46 levels "bangzhu.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ Embedded.Verb.RT      : int  190 162 778 487 722 982 443 198 149 458 ...
#$ Pronoun               : Factor w/ 3 levels "ziji.bmp","ziji9.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Pronoun.RT            : int  231 596 1257 991 416 514 683 216 399 1007 ...
#$ Spillover1            : Factor w/ 4 levels "dajia.bmp","dajia9.bmp",..: 1 1 1 1 1 1 1 1 3 1 ...
#$ Spillover1.RT         : int  180 183 1041 710 540 1116 555 315 202 207 ...
#$ Spillover2            : Factor w/ 53 levels "bu.bmp","dou.bmp",..: 2 5 5 5 8 5 2 2 2 2 ...
#$ Spillover2.RT         : int  196 301 396 305 428 756 316 284 298 391 ...
#$ Spillover3            : Factor w/ 18 levels "dengdai.bmp",..: 11 4 2 8 1 3 11 11 14 11 ...
#$ Spillover3.RT         : int  459 399 1754 364 536 685 559 374 410 218 ...
#$ Matrix.Subject        : Factor w/ 4 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT     : int  603 481 581 468 527 560 341 227 390 626 ...
#$ Matrix.Verb           : Factor w/ 9 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT        : int  292 158 283 277 345 341 220 249 199 370 ...
#$ Embedded.Subject      : Factor w/ 17 levels "lisi.bmp","dengdai.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT   : int  188 278 191 454 322 308 516 170 143 292 ...
#$ NOT                   : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT                : int  0 0 0 0 0 0 0 0 0 0 ...
#$ Handness              : Factor w/ 2 levels "mixed","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Memory                : int  111 111 111 111 111 111 111 111 111 111 ...
#$ Condition             : Factor w/ 6 levels "Local.v3","Long.dist.v3",..: 3 2 2 6 5 1 3 5 1 4 ...
#$ Embedded.Verb.LogRT   : num  5.25 5.09 6.66 6.19 6.58 ...
#$ Pronoun.LogRT         : num  5.44 6.39 7.14 6.9 6.03 ...
#$ Spillover1.LogRT      : num  5.19 5.21 6.95 6.57 6.29 ...
#$ Spillover2.LogRT      : num  5.28 5.71 5.98 5.72 6.06 ...
#$ Spillover3.LogRT      : num  6.13 5.99 7.47 5.9 6.28 ...
#$ CSTSwhole.LogRT       : num  9.55 9.77 9.98 9.87 10.84 ...
#$ TestSentence.RT       : int  2339 2558 6281 4056 3836 5262 3633 2033 2190 3569 ...
#$ Reading.baseline      : num  4618 4618 4618 4618 4618 ...
#$ Reading.baseline.LogRT: num  8.44 8.44 8.44 8.44 8.44 ...                    : num  8.44 8.44 8.44 8.44 8.44 ...

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
#, ,  = Native
#             Local.v3 Long.dist.v3 Local.v1 Long.dist.v1 Local.v2 Long.dist.v2
#Local          322           32      369          197      106            3
#Long.dist       53          343        6          178      269          372

#, ,  = L2
#             Local.v3 Long.dist.v3 Local.v1 Long.dist.v1 Local.v2 Long.dist.v2
#Local          356          133      385          186      243          109
#Long.dist       79          302       50          249      192          326

save(data, file='C://Users//Linda//Desktop//Rdocument//data//Exp1criticaldata.rda')

load('C://Users//Linda//Desktop//Rdocument//data//Exp1criticaldata.rda')
## Modelling Judgement Data_Antecedent Choices ##
## Logistic mixed-effects regression model ##
library(lme4)
library(nlme)
library(stats)
library(multcomp)


data.glmer0 <- glmer( Antecedent ~ (1|Subject)+(1|CSTSwhole), data, family='binomial')
summary(data.glmer0)

data.glmer1 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type, data, family='binomial')
summary(data.glmer1)

anova(data.glmer0,data.glmer1)
#Data: data
#Models:
#data.glmer0: Antecedent ~ (1 | Subject) + (1 | CSTSwhole)
#data.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type
#             Df  AIC   BIC    logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#data.glmer0  3 4657.2 4676.7 -2325.6   4651.2                             
#data.glmer1  5 4629.3 4661.7 -2309.7   4619.3  31.939      2   1.16e-07 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.glmer2 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type + Context, data, family='binomial')
summary(data.glmer2)

anova(data.glmer2,data.glmer1)
#Data: data
#Models:
#data.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type
#data.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#            Df    AIC    BIC  logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#data.glmer1  5 4629.3 4661.7 -2309.7   4619.3                             
#data.glmer2  6 4513.6 4552.6 -2250.8   4501.6  117.67      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.glmer3 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context, data, family='binomial')
summary(data.glmer3)

anova(data.glmer3,data.glmer2)
#Data: data
#Models:
#data.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#data.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#            Df   AIC    BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.glmer2  6 4513.6 4552.6 -2250.8   4501.6                             
#data.glmer3  8 4498.7 4550.6 -2241.3   4482.7  18.966      2  7.612e-05 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.glmer4 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Group, data, family='binomial')
summary(data.glmer4)

anova(data.glmer4,data.glmer3)
#Data: data
#Models:
#data.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#data.glmer4: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group
#             Df  AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)   
#data.glmer3  8 4498.7 4550.6 -2241.3   4482.7                           
#data.glmer4  9 4490.1 4548.5 -2236.1   4472.1  10.54      1   0.001168 **
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.glmer5 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Group*Verb.Type, data, family='binomial')
summary(data.glmer5)

anova(data.glmer5,data.glmer4)
#Data: data
#Models:
#data.glmer4: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group
#data.glmer5: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group * Verb.Type
#            Df  AIC    BIC   logLik   deviance  Chisq   Chi Df Pr(>Chisq)    
#data.glmer4  9 4490.1 4548.5 -2236.1   4472.1                             
#data.glmer5 11 4329.1 4400.4 -2153.5   4307.1   165.07      2  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.glmer6 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Group*Context, data, family='binomial')
summary(data.glmer6)

anova(data.glmer6,data.glmer4)
#Data: data
#Models:
#data.glmer4: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group
#data.glmer6: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group * Context
#            Df    AIC    BIC  logLik deviance  Chisq   Chi Df Pr(>Chisq)  
#data.glmer4  9 4490.1 4548.5 -2236.1   4472.1                           
#data.glmer6 10 4487.6 4552.5 -2233.8   4467.6  4.5212      1    0.03348 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

anova(data.glmer6,data.glmer5)
#Data: data
#Models:
#data.glmer6: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group * Context
#data.glmer5: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group * Verb.Type
#            Df   AIC    BIC  logLik   deviance  Chisq  Chi Df Pr(>Chisq)    
#data.glmer6 10 4487.6 4552.5 -2233.8   4467.6                             
#data.glmer5 11 4329.1 4400.4 -2153.5   4307.1  160.55      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

data.glmer7 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Group, data, family='binomial')
summary(data.glmer7)

anova(data.glmer7,data.glmer5)
#Data: data
#Models:
#data.glmer5: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Group * Verb.Type
#data.glmer7: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Group
#            Df  AIC    BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#data.glmer5 11 4329.1 4400.4 -2153.5   4307.1                             
#data.glmer7 14 4250.5 4341.4 -2111.3   4222.5  84.511      3  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

anova(data.glmer7,data.glmer6)
#Data: data
#Models:
#data.glmer6: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context +  Group * Context
#data.glmer7: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Group
#            Df   AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)    
#data.glmer6 10 4487.6 4552.5 -2233.8   4467.6                             
#data.glmer7 14 4250.5 4341.4 -2111.3   4222.5  245.06      4  < 2.2e-16 ***
# ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

#Generalized linear mixed model fit by maximum likelihood (Laplace Approximation) ['glmerMod']
#Family: binomial  ( logit )
#Formula: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Group
#Data: data

#AIC      BIC   logLik deviance df.resid 
#4250.5   4341.4  -2111.3   4222.5     4846 

#Scaled residuals: 
#  Min       1Q   Median       3Q      Max 
#-15.0080  -0.4339  -0.0760   0.5024   7.2407 

#Random effects:
#  Groups    Name     Variance Std.Dev.
#CSTSwhole (Intercept) 0.4835   0.6953  
#Subject   (Intercept) 0.2709   0.5205  
#Number of obs: 4860, groups:  CSTSwhole, 90; Subject, 54

#Fixed effects:
#                                     Estimate  Std.Error z value Pr(>|z|)    
#(Intercept)                           -2.0623     0.2639  -7.813 5.57e-15 ***
#Verb.Typev1                           -2.2748     0.5064  -4.492 7.05e-06 ***
#Verb.Typev2                            3.1697     0.3278   9.669  < 2e-16 ***
#ContextLong.dist                       4.6552     0.3586  12.980  < 2e-16 ***
#GroupL2                                0.2891     0.2520   1.147 0.251425    
#Verb.Typev1:ContextLong.dist          -0.4335     0.6080  -0.713 0.475836    
#Verb.Typev2:ContextLong.dist          -0.6602     0.7343  -0.899 0.368552    
#Verb.Typev1:GroupL2                    1.7577     0.4793   3.667 0.000245 ***
#Verb.Typev2:GroupL2                   -1.6810     0.2663  -6.312 2.76e-10 ***
#ContextLong.dist:GroupL2              -1.9270     0.3031  -6.358 2.05e-10 ***
#Verb.Typev1:ContextLong.dist:GroupL2   0.3262     0.5482   0.595 0.551784    
#Verb.Typev2:ContextLong.dist:GroupL2  -0.5153     0.6795  -0.758 0.448261    
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

#Correlation of Fixed Effects:
#  (Intr) Vrb.T1 Vrb.T2 CntxL. GropL2 Vr.T1:CL. Vr.T2:CL. V.T1:G V.T2:G CL.:GL V.T1:CL.:
#  Verb.Typev1 -0.437                                                                               
#Verb.Typev2 -0.683  0.351                                                                        
#CntxtLng.ds -0.626  0.321  0.508                                                                 
#GroupL2     -0.545  0.198  0.309  0.283                                                          
#Vrb.Ty1:CL.  0.367 -0.833 -0.296 -0.586 -0.166                                                   
#Vrb.Ty2:CL.  0.304 -0.157 -0.446 -0.487 -0.138  0.286                                            
#Vrb.Ty1:GL2  0.200 -0.780 -0.161 -0.147 -0.356  0.650     0.072                                  
#Vrb.Ty2:GL2  0.366 -0.187 -0.478 -0.274 -0.646  0.159     0.213     0.337                        
#CntxtL.:GL2  0.321 -0.165 -0.261 -0.569 -0.571  0.333     0.277     0.296  0.543                 
#V.T1:CL.:GL -0.177  0.682  0.144  0.313  0.313 -0.712    -0.153    -0.874 -0.297 -0.549          
#V.T2:CL.:GL -0.143  0.074  0.187  0.254  0.253 -0.149    -0.816    -0.132 -0.392 -0.444  0.245   
#convergence code: 0
#Model failed to converge with max|grad| = 0.00690174 (tol = 0.001, component 1)

data.glmer8 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition*Group, data, family='binomial')
#summary(data.glmer8)
comparisons <- glht(data.glmer8, linfct=mcp(Condition="Tukey"))
summary(comparisons,test=adjusted(type='bonferroni'))
#Simultaneous Tests for General Linear Hypotheses
#Multiple Comparisons of Means: Tukey Contrasts
#Fit: glmer(formula = Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition * Group, data = data, family = "binomial")
#Linear Hypotheses:
#                                    Estimate Std. Error z value  Pr(>|z|)    
#  Long.dist.v3 - Local.v3 == 0       4.6476     0.3578  12.988  < 2e-16 ***
#  Local.v1 - Local.v3 == 0          -2.2789     0.5049  -4.514 9.56e-05 ***
#  Long.dist.v1 - Local.v3 == 0       1.9382     0.3202   6.054 2.12e-08 ***
#  Local.v2 - Local.v3 == 0           3.1608     0.3271   9.664  < 2e-16 ***
#  Long.dist.v2 - Local.v3 == 0       7.1474     0.6480  11.030  < 2e-16 ***
#  Local.v1 - Long.dist.v3 == 0      -6.9265     0.5168 -13.403  < 2e-16 ***
#  Long.dist.v1 - Long.dist.v3 == 0  -2.7094     0.3358  -8.069 9.99e-15 ***
#  Local.v2 - Long.dist.v3 == 0      -1.4867     0.3408  -4.362 0.000193 ***
#  Long.dist.v2 - Long.dist.v3 == 0   2.4998     0.6541   3.822 0.001988 ** 
#  Long.dist.v1 - Local.v1 == 0       4.2171     0.4911   8.586  < 2e-16 ***
#  Local.v2 - Local.v1 == 0           5.4398     0.4959  10.970  < 2e-16 ***
#  Long.dist.v2 - Local.v1 == 0       9.4263     0.7477  12.607  < 2e-16 ***
#  Local.v2 - Long.dist.v1 == 0       1.2227     0.3032   4.033 0.000827 ***
#  Long.dist.v2 - Long.dist.v1 == 0   5.2092     0.6358   8.193 3.33e-15 ***
#  Long.dist.v2 - Local.v2 == 0       3.9865     0.6384   6.245 6.37e-09 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#(Adjusted p values reported -- bonferroni method)
op <- par(mar = c(4,14,4,2) + 0.1)
plot(comparisons)
ranef(data.glmer8)$CSTSwhole # only one outlier: localhushiwhole.bmp  2.37502576
ranef(data.glmer8)$Subject # no obvious outliers



### Native Chinese Group ###
NCdat <- droplevels(data[data$Group != 'L2',])
dim(NCdat)
#[1] 2250   50
levels(NCdat$Group)
#[1] "Native"
save (NCdat,file='C://Users//Linda//Desktop//Rdocument//data//Exp1NCdata.rda')
load('C://Users//Linda//Desktop//Rdocument//data//Exp1NCdata.rda')

NCdat.glmer0 <- glmer( Antecedent ~ (1|Subject)+(1|CSTSwhole), NCdat, family='binomial')
summary(NCdat.glmer0)

NCdat.glmer1 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type, NCdat,  family='binomial')
summary(NCdat.glmer1)

anova(NCdat.glmer1,NCdat.glmer0)
#Data: NCdat
#Models:
#NCdat.glmer0: Antecedent ~ (1 | Subject) + (1 | CSTSwhole)
#NCdat.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type
#             Df    AIC    BIC  logLik deviance  Chisq  Chi Df Pr(>Chisq)    
#NCdat.glmer0  3 1582.2 1599.4 -788.10   1576.2                             
#NCdat.glmer1  5 1540.7 1569.3 -765.35   1530.7  45.504      2  1.315e-10 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.glmer2 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type + Context, NCdat,  family='binomial')
summary(NCdat.glmer2)
              
anova(NCdat.glmer2,NCdat.glmer1)
#Data: NCdat
#Models:
#NCdat.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type
#NCdat.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#             Df   AIC    BIC   logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#NCdat.glmer1  5 1540.7 1569.3 -765.35   1530.7                             
#NCdat.glmer2  6 1428.1 1462.4 -708.04   1416.1  114.62      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

NCdat.glmer3 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context, NCdat,  family='binomial')
summary(NCdat.glmer3)

anova(NCdat.glmer3,NCdat.glmer2)
#Data: NCdat
#Models:
#NCdat.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#NCdat.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#             Df  AIC    BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)
#NCdat.glmer2  6 1428.1 1462.4 -708.04   1416.1                         
#NCdat.glmer3  8 1430.0 1475.8 -707.01   1414.0  2.0619      2     0.3567

#Generalized linear mixed model fit by maximum likelihood (Laplace Approximation) ['glmerMod']
#Family: binomial  ( logit )
#Formula: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#Data: NCdat

#AIC      BIC   logLik deviance df.resid 
#1428.1   1462.4   -708.0   1416.1     2244 

#Scaled residuals: 
#  Min       1Q   Median       3Q      Max 
#-12.9244  -0.2934   0.0445   0.2291   7.5556 

#Random effects:
#  Groups    Name        Variance Std.Dev.
#CSTSwhole (Intercept) 1.56925  1.2527  
#Subject   (Intercept) 0.03946  0.1987  
#Number of obs: 2250, groups:  CSTSwhole, 90; Subject, 25

#Fixed effects:
#                    Estimate Std. Error z value Pr(>|z|)    
#  (Intercept)       -2.0117     0.3327  -6.047 1.47e-09 ***
#  Verb.Typev1       -2.9803     0.4355  -6.843 7.76e-12 ***
#  Verb.Typev2        3.1405     0.4470   7.026 2.13e-12 ***
#  ContextLong.dist   4.9798     0.4111  12.112  < 2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

#Correlation of Fixed Effects:
#  (Intr) Vrb.T1 Vrb.T2
#Verb.Typev1 -0.391              
#Verb.Typev2 -0.667  0.315       
#CntxtLng.ds -0.513 -0.325  0.270

NCdat.glmer4 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type + Context + Attention, NCdat,  family='binomial')
summary(NCdat.glmer4)
#fixed-effect model matrix is rank deficient so dropping 1 column / coefficient
anova(NCdat.glmer4,NCdat.glmer2)
#Data: NCdat
#Models:
#NCdat.glmer4: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context + Attention
#NCdat.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#             Df    AIC    BIC  logLik deviance Chisq Chi Df Pr(>Chisq)
#NCdat.glmer4  6 1428.1 1462.4 -708.04   1416.1                        
#NCdat.glmer2  6 1428.1 1462.4 -708.04   1416.1     0      0          1

NCdat.glmer5 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type + Context + Handness, NCdat,  family='binomial')
summary(NCdat.glmer5)

anova(NCdat.glmer5,NCdat.glmer2)
#Data: NCdat
#Models:
#NCdat.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#NCdat.glmer5: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context + Handness
#             Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)
#NCdat.glmer2  6 1428.1 1462.4 -708.04   1416.1                         
#NCdat.glmer5  7 1430.0 1470.0 -707.98   1416.0  0.1286      1     0.7199

NCdat.glmer6 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type + Context + Memory, NCdat,  family='binomial')
summary(NCdat.glmer6)

anova(NCdat.glmer6,NCdat.glmer2)
#Data: NCdat
#Models:
#NCdat.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#NCdat.glmer6: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context + Memory
#             Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)
#NCdat.glmer2  6 1428.1 1462.4 -708.04   1416.1                         
#NCdat.glmer6  7 1429.9 1469.9 -707.93   1415.9 0.2127      1     0.6446

NCdat.glmer7 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition, NCdat,  family='binomial')
#summary(NCdat.glmer7)
#anova(NCdat.glmer7,NCdat.glmer2)
comparisons <- glht(NCdat.glmer7, linfct=mcp(Condition="Tukey"))
summary(comparisons,test=adjusted(type='bonferroni'))
#Simultaneous Tests for General Linear Hypotheses
#Multiple Comparisons of Means: Tukey Contrasts
#Fit: glmer(formula = Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition, data = NCdat, family = "binomial")
#Linear Hypotheses:
#                                    Estimate Std. Error z value Pr(>|z|)    
#  Long.dist.v3 - Local.v3 == 0       5.5561     0.5955   9.330  < 2e-16 ***
#  Local.v1 - Local.v3 == 0          -2.4292     0.6719  -3.616 0.004495 ** 
#  Long.dist.v1 - Local.v3 == 0       2.1499     0.5089   4.224 0.000359 ***
#  Local.v2 - Local.v3 == 0           3.5104     0.5206   6.742 2.34e-10 ***
#  Long.dist.v2 - Local.v3 == 0       7.8189     0.8284   9.439  < 2e-16 ***
#  Local.v1 - Long.dist.v3 == 0      -7.9853     0.7412 -10.774  < 2e-16 ***
#  Long.dist.v1 - Long.dist.v3 == 0  -3.4062     0.5635  -6.045 2.25e-08 ***
#  Local.v2 - Long.dist.v3 == 0      -2.0457     0.5628  -3.635 0.004175 ** 
#  Long.dist.v2 - Long.dist.v3 == 0   2.2628     0.8294   2.728 0.095532 .  
#  Long.dist.v1 - Local.v1 == 0       4.5791     0.6591   6.948 5.57e-11 ***
#  Local.v2 - Local.v1 == 0           5.9396     0.6721   8.838  < 2e-16 ***
#  Long.dist.v2 - Local.v1 == 0      10.2482     0.9409  10.892  < 2e-16 ***
#  Local.v2 - Long.dist.v1 == 0       1.3605     0.4918   2.767 0.084974 .  
#  Long.dist.v2 - Long.dist.v1 == 0   5.6691     0.8043   7.048 2.72e-11 ***
#  Long.dist.v2 - Local.v2 == 0       4.3085     0.8026   5.369 1.19e-06 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#(Adjusted p values reported -- bonferroni method)
op <- par(mar = c(4,14,4,2) + 0.1)
plot(comparisons)
ranef(NCdat.glmer7)$CSTSwhole 
# Outliers: 
#localhushiwhole.bmp  3.57759422
#LDtiaozhanwhole.bmp -2.74881497
#LDqianlianwhole.bmp -2.00033441
#LDjieshaowhole.bmp  -2.74881497
#LDfengfuwhole.bmp    2.00407605
ranef(NCdat.glmer7)$Subject # no obvious outliers



## L2 learners Group ##
L2dat <- droplevels(data[data$Group != 'Native',])
dim(L2dat)
#[1] 2610   50
levels(L2dat$Group)
#[1] "L2"
save(L2dat,file='C://Users//Linda//Desktop//Rdocument//data//Exp1L2data.rda')

load('C://Users//Linda//Desktop//Rdocument//data//Exp1L2data.rda')

experience <- read.csv('C://Users//Linda//Desktop//Rdocument//data//L2Experience.csv', header=T, sep=',')
str(experience)
#'data.frame':	29 obs. of  10 variables:
#$ Subject         : int  1 2 3 4 5 6 7 8 9 10 ...
#$ Group           : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age.Chinese     : int  18 19 19 24 18 14 17 20 18 17 ...
#$ Years.Learning  : num  4 3 3 3 4 8 4 3 7 6 ...
#$ Weekly.Other    : num  4.5 2 4 10 3 3 15 7.5 1 7 ...
#$ Weekly.Listening: num  2 0.5 1 2 1 0 2 0 0 0 ...
#$ Weekly.Speaking : num  6.5 1 1 8 1 5 3 1 0.5 1 ...
#$ Weekly.Reading  : num  1.5 2 4 12 1 5 5 4 4 4 ...
#$ Weekly.Writing  : num  3.5 0.5 2 4 1 3 3 2 0 3 ...
#$ Months.China    : num  15 3 12 12 12 14 12 13 18 10 ...
experience$Subject <- as.factor(experience$Subject)
levels(experience$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19"
#[20] "20" "21" "22" "23" "24" "25" "26" "27" "28" "29"
levels(experience$Subject) <- c('L2.1','L2.2','L2.3','L2.4','L2.5','L2.6','L2.7','L2.8','L2.9','L2.10',
                                  'L2.11','L2.12','L2.13','L2.14','L2.15','L2.16','L2.17','L2.18','L2.19',
                                  'L2.20','L2.21','L2.22','L2.23','L2.24','L2.25','L2.26','L2.27','L2.28','L2.29')

experience <- experience[ ,-2]
L2dat1 <- merge(experience, L2dat, all=TRUE, by='Subject')
str(L2dat1)
#'data.frame':	2610 obs. of  58 variables:
#$ Subject               : Factor w/ 29 levels "L2.1","L2.2",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Age.Chinese           : int  18 18 18 18 18 18 18 18 18 18 ...
#$ Years.Learning        : num  4 4 4 4 4 4 4 4 4 4 ...
#$ Weekly.Other          : num  4.5 4.5 4.5 4.5 4.5 4.5 4.5 4.5 4.5 4.5 ...
#$ Weekly.Listening      : num  2 2 2 2 2 2 2 2 2 2 ...
#$ Weekly.Speaking       : num  6.5 6.5 6.5 6.5 6.5 6.5 6.5 6.5 6.5 6.5 ...
#$ Weekly.Reading        : num  1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 1.5 ...
#$ Weekly.Writing        : num  3.5 3.5 3.5 3.5 3.5 3.5 3.5 3.5 3.5 3.5 ...
#$ Months.China          : num  15 15 15 15 15 15 15 15 15 15 ...
#$ Attention             : num  0.0383 0.0383 0.0383 0.0383 0.0383 ...
#$ Proficiency           : int  92 92 92 92 92 92 92 92 92 92 ...
#$ Session               : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                   : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group                 : Factor w/ 1 level "L2": 1 1 1 1 1 1 1 1 1 1 ...
#$ Handedness            : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                   : Factor w/ 2 levels "female","male": 1 1 1 1 1 1 1 1 1 1 ...
#$ Context               : Factor w/ 2 levels "Local","Long.dist": 1 2 2 2 1 1 1 1 1 2 ...
#$ Verb.Type             : Factor w/ 3 levels "v3","v1","v2": 2 1 1 3 3 1 2 3 1 2 ...
#$ Distance              : Factor w/ 2 levels "LD","local": 2 1 1 1 1 2 2 1 2 2 ...
#$ Context.Sentence      : Factor w/ 90 levels "LDbangzhu.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CS.RT                 : int  5402 6049 13877 5259 5148 6591 5653 3593 3336 5798 ...
#$ CSTSwhole             : Factor w/ 90 levels "LDbangzhuwhole.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CSTSwhole.RT          : int  14064 17572 21645 19276 51187 4969 17937 18585 10845 24745 ...
#$ Question              : Factor w/ 45 levels "bangzhuquestion.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ CorrectAnswer         : int  2 1 1 1 1 2 2 1 2 2 ...
#$ Question.ACC          : int  1 1 0 1 0 1 0 0 0 0 ...
#$ Question.RT           : int  2800 6171 5480 7112 2658 1239 4601 2492 4807 3557 ...
#$ Embedded.Verb         : Factor w/ 46 levels "bangzhu.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ Embedded.Verb.RT      : int  190 162 778 487 722 982 443 198 149 458 ...
#$ Pronoun               : Factor w/ 3 levels "ziji.bmp","ziji9.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Pronoun.RT            : int  231 596 1257 991 416 514 683 216 399 1007 ...
#$ Spillover1            : Factor w/ 4 levels "dajia.bmp","dajia9.bmp",..: 1 1 1 1 1 1 1 1 3 1 ...
#$ Spillover1.RT         : int  180 183 1041 710 540 1116 555 315 202 207 ...
#$ Spillover2            : Factor w/ 53 levels "bu.bmp","dou.bmp",..: 2 5 5 5 8 5 2 2 2 2 ...
#$ Spillover2.RT         : int  196 301 396 305 428 756 316 284 298 391 ...
#$ Spillover3            : Factor w/ 18 levels "dengdai.bmp",..: 11 4 2 8 1 3 11 11 14 11 ...
#$ Spillover3.RT         : int  459 399 1754 364 536 685 559 374 410 218 ...
#$ Matrix.Subject        : Factor w/ 4 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT     : int  603 481 581 468 527 560 341 227 390 626 ...
#$ Matrix.Verb           : Factor w/ 9 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT        : int  292 158 283 277 345 341 220 249 199 370 ...
#$ Embedded.Subject      : Factor w/ 17 levels "lisi.bmp","dengdai.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT   : int  188 278 191 454 322 308 516 170 143 292 ...
#$ NOT                   : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT                : int  0 0 0 0 0 0 0 0 0 0 ...
#$ Handness              : Factor w/ 2 levels "mixed","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Memory                : int  111 111 111 111 111 111 111 111 111 111 ...
#$ Condition             : Factor w/ 6 levels "Local.v3","Long.dist.v3",..: 3 2 2 6 5 1 3 5 1 4 ...
#$ Embedded.Verb.LogRT   : num  5.25 5.09 6.66 6.19 6.58 ...
#$ Pronoun.LogRT         : num  5.44 6.39 7.14 6.9 6.03 ...
#$ Spillover1.LogRT      : num  5.19 5.21 6.95 6.57 6.29 ...
#$ Spillover2.LogRT      : num  5.28 5.71 5.98 5.72 6.06 ...
#$ Spillover3.LogRT      : num  6.13 5.99 7.47 5.9 6.28 ...
#$ CSTSwhole.LogRT       : num  9.55 9.77 9.98 9.87 10.84 ...
#$ TestSentence.RT       : int  2339 2558 6281 4056 3836 5262 3633 2033 2190 3569 ...
#$ Reading.baseline      : num  4618 4618 4618 4618 4618 ...
#$ Reading.baseline.LogRT: num  8.44 8.44 8.44 8.44 8.44 ...
#$ Antecedent            : Factor w/ 2 levels "Local","Long.dist": 1 2 1 2 1 1 2 1 2 2 ...

L2dat1$Age.Chinese <- as.integer(as.character(L2dat1$Age.Chinese))

L2dat1$Years.Learning <- as.numeric(as.character(L2dat1$Years.Learning))

L2dat1$Weekly.Other <- as.numeric(as.character(L2dat1$Weekly.Other))

L2dat1$Weekly.Listening <- as.numeric(as.character(L2dat1$Weekly.Listening))

L2dat1$Weekly.Speaking <- as.numeric(as.character(L2dat1$Weekly.Speaking))

L2dat1$Weekly.Reading <- as.numeric(as.character(L2dat1$Weekly.Reading))

L2dat1$Weekly.Writing <- as.numeric(as.character(L2dat1$Weekly.Writing))

L2dat1$Months.China <- as.numeric(as.character(L2dat1$Months.China))

save(L2dat1,file='C://Users//Linda//Desktop//Rdocument//data//Exp1L2dat1.rda')

load('C://Users//Linda//Desktop//Rdocument//data//Exp1L2dat1.rda')

## models ##
L2dat1.glmer0 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole), L2dat1,  family='binomial')
summary(L2dat1.glmer0)

L2dat1.glmer1 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type, L2dat1,  family='binomial')
summary(L2dat1.glmer1) 

anova(L2dat1.glmer1,L2dat1.glmer0)
#Data: L2dat1
#Models:
#L2dat1.glmer0: Antecedent ~ (1 | Subject) + (1 | CSTSwhole)
#L2dat1.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type
#              Df    AIC    BIC  logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat1.glmer0  3 2903.3 2920.9 -1448.7   2897.3                             
#L2dat1.glmer1  5 2892.3 2921.6 -1441.1   2882.3  15.023      2  0.0005467 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.glmer2 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type + Context, L2dat1,  family='binomial')
summary(L2dat1.glmer2)

anova(L2dat1.glmer2, L2dat1.glmer1)
#Data: L2dat1
#Models:
#L2dat1.glmer1: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type
#L2dat1.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#              Df   AIC    BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat1.glmer1  5 2892.3 2921.6 -1441.1   2882.3                             
#L2dat1.glmer2  6 2790.5 2825.7 -1389.3   2778.5  103.76      1  < 2.2e-16 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.glmer3 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context, L2dat1,  family='binomial')
summary(L2dat1.glmer3)

anova(L2dat1.glmer3, L2dat1.glmer2)
#Data: L2dat1
#Models:
#L2dat1.glmer2: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type + Context
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#              Df    AIC    BIC  logLik deviance  Chisq Chi Df Pr(>Chisq)   
#L2dat1.glmer2  6 2790.5 2825.7 -1389.3   2778.5                            
#L2dat1.glmer3  8 2784.1 2831.1 -1384.1   2768.1 10.392      2   0.005538 **
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.glmer4 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Attention, L2dat1,  family='binomial')
summary(L2dat1.glmer4)
#fixed-effect model matrix is rank deficient so dropping 1 column / coefficient
anova(L2dat1.glmer4, L2dat1.glmer3)
#Data: L2dat1
#Models:
#L2dat1.glmer4: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Attention
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#              Df    AIC    BIC  logLik deviance Chisq  Chi Df Pr(>Chisq)
#L2dat1.glmer4  8 2784.1 2831.1 -1384.1   2768.1                        
#L2dat1.glmer3  8 2784.1 2831.1 -1384.1   2768.1     0      0          1

L2dat1.glmer5 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Handness, L2dat1,  family='binomial')
summary(L2dat1.glmer5)

anova(L2dat1.glmer5, L2dat1.glmer3)
#Data: L2dat1
#Models:
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#L2dat1.glmer5: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Handness
#              Df    AIC    BIC  logLik deviance Chisq  Chi Df  Pr(>Chisq)
#L2dat1.glmer3  8 2784.1 2831.1 -1384.1   2768.1                        
#L2dat1.glmer5  9 2785.9 2838.7 -1384.0   2767.9 0.207      1     0.6491


L2dat1.glmer6 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Memory, L2dat1,  family='binomial')
summary(L2dat1.glmer6)

anova(L2dat1.glmer6, L2dat1.glmer3)
#Data: L2dat1
#Models:
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#L2dat1.glmer6: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Memory
#              Df    AIC    BIC  logLik deviance  Chisq  Chi Df Pr(>Chisq)
#L2dat1.glmer3  8 2784.1 2831.1 -1384.1   2768.1                         
#L2dat1.glmer6  9 2783.5 2836.3 -1382.8   2765.5 2.6249      1     0.1052

L2dat1.glmer7 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Proficiency, L2dat1,  family='binomial')
summary(L2dat1.glmer7)

anova(L2dat1.glmer7, L2dat1.glmer3)
#Data: L2dat1
#Models:
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#L2dat1.glmer7: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Proficiency
#               Df  AIC   BIC    logLik deviance  Chisq   Chi Df Pr(>Chisq)
#L2dat1.glmer3  8 2784.1 2831.1 -1384.1   2768.1                         
#L2dat1.glmer7  9 2785.3 2838.1 -1383.7   2767.3  0.8062      1     0.3692


L2dat1.glmer8 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Proficiency*Verb.Type, L2dat1,  family='binomial')
summary(L2dat1.glmer8)

anova(L2dat1.glmer8, L2dat1.glmer3)
#Data: L2dat1
#Models:
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#L2dat1.glmer8: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Proficiency * Verb.Type
#              Df    AIC   BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat1.glmer3  8 2784.1 2831.1 -1384.1   2768.1                             
#L2dat1.glmer8 11 2766.1 2830.6 -1372.0   2744.1  24.069      3  2.417e-05 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.glmer9 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context + Proficiency*Context, L2dat1,  family='binomial')
summary(L2dat1.glmer9)

anova(L2dat1.glmer9, L2dat1.glmer8)
#Data: L2dat1
#Models:
#L2dat1.glmer9: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Proficiency * Context
#L2dat1.glmer8: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Proficiency * Verb.Type
#              Df   AIC    BIC  logLik  deviance  Chisq   Chi Df Pr(>Chisq)  
#L2dat1.glmer9 10 2768.6 2827.3 -1374.3   2748.6                           
#L2dat1.glmer8 11 2766.1 2830.6 -1372.0   2744.1  4.5196      1    0.03351 *
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

anova(L2dat1.glmer9, L2dat1.glmer3)
#Data: L2dat1
#Models:
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#L2dat1.glmer9: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Proficiency * Context
#              Df   AIC    BIC  logLik   deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat1.glmer3  8 2784.1 2831.1 -1384.1   2768.1                             
#L2dat1.glmer9 10 2768.6 2827.3 -1374.3   2748.6   19.549      2  5.688e-05 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.glmer10 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency, L2dat1,  family='binomial')
summary(L2dat1.glmer10)

anova(L2dat1.glmer10, L2dat1.glmer3)
#Data: L2dat1
#Models:
#L2dat1.glmer3: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#               Df    AIC    BIC  logLik deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat1.glmer3   8 2784.1 2831.1 -1384.1   2768.1                             
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6  55.522      6  3.636e-10 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

anova(L2dat1.glmer10, L2dat1.glmer9)
#Data: L2dat1
#Models:
#L2dat1.glmer9: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Proficiency * Context
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#               Df  AIC    BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)    
#L2dat1.glmer9  10 2768.6 2827.3 -1374.3   2748.6                             
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6  35.973      4  2.931e-07 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

anova(L2dat1.glmer10, L2dat1.glmer8)
#Data: L2dat1
#Models:
#L2dat1.glmer8: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context + Proficiency * Verb.Type
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#               Df    AIC    BIC  logLik deviance  Chisq    Chi Df Pr(>Chisq)    
#L2dat1.glmer8  11 2766.1 2830.6 -1372.0   2744.1                             
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6  31.453      3  6.823e-07 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

L2dat1.glmer11 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Age.Chinese, L2dat1,  family='binomial')
summary(L2dat1.glmer11)

anova(L2dat1.glmer11, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer11: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Age.Chinese
#               Df  AIC    BIC    logLik deviance  Chisq   Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                         
#L2dat1.glmer11 15 2741.6 2829.6 -1355.8   2711.6  1.0678      1     0.3015

L2dat1.glmer12 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Years.Learning, L2dat1,  family='binomial')
summary(L2dat1.glmer12)

anova(L2dat1.glmer12, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer12: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Years.Learning
#               Df  AIC    BIC   logLik  deviance  Chisq   Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                         
#L2dat1.glmer12 15 2742.2 2830.2 -1356.1   2712.2  0.4106      1     0.5217

L2dat1.glmer13 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Weekly.Other, L2dat1,  family='binomial')
summary(L2dat1.glmer13)

anova(L2dat1.glmer13, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer13: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Weekly.Other
#               Df    AIC    BIC  logLik deviance Chisq  Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                        
#L2dat1.glmer13 15 2742.4 2830.4 -1356.2   2712.4 0.211      1      0.646

L2dat1.glmer14 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Weekly.Listening, L2dat1,  family='binomial')
summary(L2dat1.glmer14)

anova(L2dat1.glmer14, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer14: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Weekly.Listening
#               Df   AIC    BIC  logLik  deviance  Chisq  Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                         
#L2dat1.glmer14 15 2742.3 2830.3 -1356.2   2712.3 0.2952      1     0.5869

L2dat1.glmer15 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Weekly.Speaking, L2dat1,  family='binomial')
summary(L2dat1.glmer15)

anova(L2dat1.glmer15, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer15: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Weekly.Speaking
#               Df    AIC    BIC  logLik deviance  Chisq  Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                         
#L2dat1.glmer15 15 2740.2 2828.2 -1355.1   2710.2  2.4337      1     0.1188

L2dat1.glmer16 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Weekly.Reading, L2dat1,  family='binomial')
summary(L2dat1.glmer16)

anova(L2dat1.glmer16, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer16: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Weekly.Reading
#               Df   AIC  BIC    logLik  deviance Chisq  Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                        
#L2dat1.glmer16 15 2742.3 2830.3 -1356.2   2712.3 0.297      1     0.5858

L2dat1.glmer17 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Weekly.Writing, L2dat1,  family='binomial')
summary(L2dat1.glmer17)

anova(L2dat1.glmer17, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer17: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Weekly.Writing
#               Df    AIC    BIC  logLik deviance  Chisq  Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                        
#L2dat1.glmer17 15 2741.9 2829.9 -1355.9   2711.9  0.757      1     0.3843

L2dat1.glmer18 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Verb.Type*Context*Proficiency + Months.China, L2dat1,  family='binomial')
summary(L2dat1.glmer18)

anova(L2dat1.glmer18, L2dat1.glmer10)
#Data: L2dat1
#Models:
#L2dat1.glmer10: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency
#L2dat1.glmer18: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context * Proficiency + Months.China
#               Df    AIC    BIC  logLik deviance  Chisq    Chi Df Pr(>Chisq)
#L2dat1.glmer10 14 2740.6 2822.8 -1356.3   2712.6                         
#L2dat1.glmer18 15 2740.4 2828.4 -1355.2   2710.4  2.1908      1     0.1388

#Generalized linear mixed model fit by maximum likelihood (Laplace Approximation) ['glmerMod']
#Family: binomial  ( logit )
#Formula: Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Verb.Type * Context *      Proficiency
#Data: L2dat1

#AIC      BIC   logLik deviance df.resid 
#2740.6   2822.8  -1356.3   2712.6     2596 

#Scaled residuals: 
#  Min      1Q  Median      3Q     Max 
#-2.7392 -0.5862 -0.2249  0.6058  6.4755 

#Random effects:
#  Groups    Name        Variance Std.Dev.
#CSTSwhole (Intercept) 0.3569   0.5974  
#Subject   (Intercept) 0.4418   0.6647  
#Number of obs: 2610, groups:  CSTSwhole, 90; Subject, 29

#Fixed effects:
#                                         Estimate Std. Error z value Pr(>|z|)    
#(Intercept)                              -0.46981    1.41155  -0.333  0.73926    
#Verb.Typev1                               1.98913    1.52734   1.302  0.19280    
#Verb.Typev2                              -0.47989    1.32255  -0.363  0.71672    
#ContextLong.dist                         -3.57282    1.37675  -2.595  0.00946 ** 
#Proficiency                              -0.01548    0.01696  -0.913  0.36149    
#Verb.Typev1:ContextLong.dist              3.16763    1.98271   1.598  0.11013    
#Verb.Typev2:ContextLong.dist              2.09621    1.86726   1.123  0.26160    
#Verb.Typev1:Proficiency                  -0.03176    0.01870  -1.699  0.08939 .  
#Verb.Typev2:Proficiency                   0.02349    0.01578   1.488  0.13672    
#ContextLong.dist:Proficiency              0.07683    0.01667   4.608 4.06e-06 ***
#Verb.Typev1:ContextLong.dist:Proficiency -0.03915    0.02410  -1.624  0.10433    
#Verb.Typev2:ContextLong.dist:Proficiency -0.03941    0.02250  -1.751  0.07987 .  
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

#Correlation of Fixed Effects:
#  (Intr) Vrb.T1 Vrb.T2 CntxL. Prfcnc Vr.T1:CL. Vr.T2:CL. V.T1:P V.T2:P CnL.:P V.T1:CL.:
#  Verb.Typev1 -0.472                                                                               
#Verb.Typev2 -0.551  0.504                                                                        
#CntxtLng.ds -0.534  0.489  0.569                                                                 
#Proficiency -0.985  0.461  0.539  0.524                                                          
#Vrb.Ty1:CL.  0.367 -0.776 -0.392 -0.692 -0.359                                                   
#Vrb.Ty2:CL.  0.392 -0.360 -0.711 -0.731 -0.384  0.506                                            
#Vrb.Typv1:P  0.453 -0.980 -0.484 -0.469 -0.461  0.760     0.345                                  
#Vrb.Typv2:P  0.543 -0.496 -0.978 -0.561 -0.554  0.387     0.696     0.497                        
#CntxtLng.:P  0.519 -0.474 -0.553 -0.979 -0.531  0.677     0.714     0.474  0.569                 
#Vr.T1:CL.:P -0.355  0.766  0.379  0.673  0.362 -0.979    -0.492    -0.781 -0.390 -0.688          
#Vr.T2:CL.:P -0.382  0.351  0.689  0.717  0.390 -0.497    -0.978    -0.351 -0.705 -0.731  0.504   
#convergence code: 0
#Model failed to converge with max|grad| = 0.22354 (tol = 0.001, component 1)
#Model is nearly unidentifiable: very large eigenvalue
#- Rescale variables?
#Model is nearly unidentifiable: large eigenvalue ratio
#- Rescale variables?

L2dat1.glmer19 <- glmer( Antecedent ~ (1|Subject) + (1|CSTSwhole) + Condition*Proficiency, L2dat1,  family='binomial')
#summary(L2dat1.glmer19)
#anova(L2dat1.glmer19, L2dat1.glmer10)
comparisons <- glht(L2dat1.glmer19, linfct=mcp(Condition="Tukey"))
summary(comparisons,test=adjusted(type='bonferroni'))
#Simultaneous Tests for General Linear Hypotheses
#Multiple Comparisons of Means: Tukey Contrasts
#Fit: glmer(formula = Antecedent ~ (1 | Subject) + (1 | CSTSwhole) + Condition * Proficiency, data = L2dat1, family = "binomial")
#Linear Hypotheses:
#                                 Estimate  Std. Error z value Pr(>|z|)    
#Long.dist.v3 - Local.v3 == 0      -3.6276     1.3683  -2.651  0.12032    
#Local.v1 - Local.v3 == 0           1.9493     1.5185   1.284  1.00000    
#Long.dist.v1 - Local.v3 == 0       1.5951     1.3152   1.213  1.00000    
#Local.v2 - Local.v3 == 0          -0.4806     1.3151  -0.365  1.00000    
#Long.dist.v2 - Local.v3 == 0      -1.9254     1.3856  -1.390  1.00000    
#Local.v1 - Long.dist.v3 == 0       5.5769     1.4724   3.788  0.00228 ** 
#Long.dist.v1 - Long.dist.v3 == 0   5.2227     1.2499   4.179  0.00044 ***
#Local.v2 - Long.dist.v3 == 0       3.1470     1.2535   2.510  0.18086    
#Long.dist.v2 - Long.dist.v3 == 0   1.7022     1.3095   1.300  1.00000    
#Long.dist.v1 - Local.v1 == 0      -0.3542     1.4280  -0.248  1.00000    
#Local.v2 - Local.v1 == 0          -2.4299     1.4272  -1.703  1.00000    
#Long.dist.v2 - Local.v1 == 0      -3.8746     1.4891  -2.602  0.13903    
#Local.v2 - Long.dist.v1 == 0      -2.0758     1.1971  -1.734  1.00000    
#Long.dist.v2 - Long.dist.v1 == 0  -3.5205     1.2677  -2.777  0.08228 .  
#Long.dist.v2 - Local.v2 == 0      -1.4447     1.2722  -1.136  1.00000    
#---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
#(Adjusted p values reported -- bonferroni method)
op <- par(mar = c(4,14,4,2) + 0.1)
plot(comparisons)
ranef(L2dat1.glmer19)$CSTSwhole # no obvious outliers
ranef(L2dat1.glmer19)$Subject # no obvious outliers

### Questions:
### ??? if adding the variable 'Attention', the fixed-effect model matrix is rank deficient so dropping 1 column/coeffeicient, and there are warning messages:
### 1: In checkConv(attr(opt, "derivs"), opt$par, ctrl = control$checkConv,  :
###  Model failed to converge with max|grad| = 0.00119794 (tol = 0.001, component 1)
### 2: In checkConv(attr(opt, "derivs"), opt$par, ctrl = control$checkConv,  :
###  Model is nearly unidentifiable: large eigenvalue ratio
###  - Rescale variables?
### ??? And there is no values for 'Attention' Variable in the summary
