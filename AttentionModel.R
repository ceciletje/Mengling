getwd()
#[1] "C:/Users/Linda/Desktop/Rdocument"

## for Cecile
setwd("~/Dropbox/cecile/Work/SupervisionETC/Linda_Mengling_Xu/Experiment1_RT/src/")

############### Native Attention data ##############
dat1 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//25nativeChineseAttention.csv', header=T, sep=',')
str(dat1)
#'data.frame':	7200 obs. of  11 variables:
#$ Subject        : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Group          : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Trial          : int  1 2 3 4 5 6 7 8 9 10 ...
#$ TrialNumber    : int  13 36 43 41 43 9 46 6 4 23 ...
#$ WarningType    : Factor w/ 5 levels "center","double",..: 1 2 3 5 3 4 3 4 4 1 ...
#$ FlankerType    : Factor w/ 3 levels "congruent","incongruent",..: 1 3 1 3 1 2 2 3 2 3 ...
#$ TargetType     : Factor w/ 2 levels "down","up": 2 1 1 2 1 1 1 2 2 1 ...
#$ TargetDirection: Factor w/ 2 levels "left","right": 1 2 1 1 1 1 2 2 2 1 ...
#$ CorrectAnswer  : int  1 2 1 1 1 1 2 2 2 1 ...
#$ SlideTarget.ACC: int  1 1 1 1 1 1 1 1 1 1 ...
#$ SlideTarget.RT : int  530 740 443 502 541 540 598 627 715 497 ...
dat1$Subject <- as.factor(dat1$Subject)
levels(dat1$Subject)
[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22"
[23] "23" "24" "25"

levels(dat1$Subject) <- c('NS1','NS2','NS3','NS4','NS5','NS6','NS7','NS8','NS9','NS10','NS11','NS12','NS13','NS14','NS15','NS16','NS17','NS18','NS19','NS20','NS21','NS22','NS23','NS24','NS25')

#################### L2 learners data ########################
dat2 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//29L2Attention.csv', header=T, sep=',')
str(dat2)
#'data.frame':	8352 obs. of  11 variables:
#$ Subject        : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Group          : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Trial          : int  1 2 3 4 5 6 7 8 9 10 ...
#$ TrialNumber    : int  32 46 45 6 22 37 10 27 8 12 ...
#$ WarningType    : Factor w/ 5 levels "center","double",..: 2 3 3 4 1 5 4 2 4 4 ...
#$ FlankerType    : Factor w/ 3 levels "congruent","incongruent",..: 1 2 2 3 2 1 2 2 1 3 ...
#$ TargetType     : Factor w/ 2 levels "down","up": 1 1 1 2 1 2 1 2 1 1 ...
#$ TargetDirection: Factor w/ 2 levels "left","right": 2 2 1 2 2 1 2 1 2 2 ...
#$ CorrectAnswer  : int  2 2 1 2 2 1 2 1 2 2 ...
#$ SlideTarget.ACC: int  1 1 1 1 1 1 1 1 1 1 ...
#$ SlideTarget.RT : int  642 732 577 719 779 653 973 724 785 610 ...
dat2$Subject <- as.factor(dat2$Subject)
> levels(dat2$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22"
#[23] "23" "24" "25" "26" "27" "28" "29"
levels(dat2$Subject) <- c('L2.1','L2.2','L2.3','L2.4','L2.5','L2.6','L2.7','L2.8','L2.9','L2.10','L2.11','L2.12','L2.13','L2.14', 'L2.15','L2.16','L2.17','L2.18','L2.19','L2.20','L2.21','L2.22','L2.23','L2.24','L2.25','L2.26','L2.27','L2.28','L2.29')
## bind two groups' data together ##
total <- rbind(dat1, dat2)
attention <- total
dim(attention)
#[1] 15552    11
str(attention)
#'data.frame':	15552 obs. of  11 variables:
#$ Subject        : Factor w/ 54 levels "NS1","NS2","NS3",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Group          : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Trial          : int  1 2 3 4 5 6 7 8 9 10 ...
#$ TrialNumber    : int  13 36 43 41 43 9 46 6 4 23 ...
#$ WarningType    : Factor w/ 5 levels "center","double",..: 1 2 3 5 3 4 3 4 4 1 ...
#$ FlankerType    : Factor w/ 3 levels "congruent","incongruent",..: 1 3 1 3 1 2 2 3 2 3 ...
#$ TargetType     : Factor w/ 2 levels "down","up": 2 1 1 2 1 1 1 2 2 1 ...
#$ TargetDirection: Factor w/ 2 levels "left","right": 1 2 1 1 1 1 2 2 2 1 ...
#$ CorrectAnswer  : int  1 2 1 1 1 1 2 2 2 1 ...
#$ SlideTarget.ACC: int  1 1 1 1 1 1 1 1 1 1 ...
#$ SlideTarget.RT : int  530 740 443 502 541 540 598 627 715 497 ...

attention$Group <- as.factor(attention$Group)
levels(attention$Group)
#[1] "1" "2"
levels(attention$Group) <- c('L2','Native')
levels(attention$Group)
#[1] "L2"     "Native"
attention$Group <- relevel(attention$Group,'Native')
levels(attention$Group)
#[1] "Native" "L2" 

attention$WarningType <- as.factor(attention$WarningType)
attention$WarningType <- relevel(attention$WarningType,'no')
levels(attention$WarningType)
#[1] "no"     "center" "double" "down"   "up"

attention$FlankerType <- as.factor(attention$FlankerType)
levels(attention$FlankerType)
#[1] "congruent"   "incongruent" "neutral"

attention$TargetType <- as.factor(attention$TargetType)
levels(attention$TargetType)
#[1] "down" "up"

attention$TargetDirection <- as.factor(attention$TargetDirection)
levels(attention$TargetDirection)
#[1] "left"  "right"

attention$Trial <- as.factor(attention$Trial)
levels(attention$Trial)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22"
#[23] "23" "24" "25" "26" "27" "28" "29" "30" "31" "32" "33" "34" "35" "36" "37" "38" "39" "40" "41" "42" "43" "44"
#[45] "45" "46" "47" "48" "49" "50" "51" "52" "53" "54" "55" "56" "57" "58" "59" "60" "61" "62" "63" "64" "65" "66"
#[67] "67" "68" "69" "70" "71" "72" "73" "74" "75" "76" "77" "78" "79" "80" "81" "82" "83" "84" "85" "86" "87" "88"
#[89] "89" "90" "91" "92" "93" "94" "95" "96"

## CDC: add line here to save the attention.rda file
save(attention, file='C://Users//Linda//Desktop//Rdocument//data//AttentionData.rda')
## CDC: add line here to load the attention.rda file
load('C://Users//Linda//Desktop//Rdocument//data//AttentionData.rda')

load("../data/AttentionData.rda")

require(survival)

# defining the DV (time to correct response)
yy <- Surv(attention$SlideTarget.RT, event=attention$SlideTarget.ACC==1)

dat.surv <- coxph(yy ~ WarningType + FlankerType + TargetType + frailty.gaussian(Trial, sparse=F),attention)
summary(dat.surv)

#coef(dat.surv) ## CDC: this command is just for you to see which terms
               ## you need to extract for "resp" below (i.e. starting
               ## from the first "Gauss" term

## plot for item random effect:
# for model: dat.surv <- coxph(yy ~ WarningType + FlankerType + TargetType + frailty.gaussian(Trial, sparse=F),attention)
#items <- 1:96
#resp <- coef(dat.surv)[-c(1:7)] ## CDC: you will need to amend this if
                                ## a different number of predictors is
                                ## used

#item.effect <- lm(resp ~ items)
#plot(items, resp, main="Random effect estimates", xlab="Item", ylab="Estimates", axes=F)
#axis(2)
#axis(1, at=1:96)
#abline(item.effect,col=2, lty=3)

#summary(item.effect) ## CDC: check here whether there was a
                     ## significant effect of item, and report it.

dat.surv1 <- coxph(yy ~ WarningType+ FlankerType + TargetType + Group + frailty.gaussian(Trial, sparse=F),
                   attention)
summary(dat.surv1)
anova(dat.surv, dat.surv1)
#Analysis of Deviance Table
#Cox model: response is  yy
#Model 1: ~ WarningType + FlankerType + TargetType + frailty.gaussian(Trial, sparse = F)
#Model 2: ~ WarningType + FlankerType + TargetType + Group + frailty.gaussian(Trial, sparse = F)
#   loglik  Chisq     Df P(>|Chi|)
#1 -130966
#2 -130953 25.461 0.99779 4.492e-07 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
##### So, model 2 is better than model 1, Group has a siginificant effect #########

## coef(dat.surv1)

## plot for item random effect:
# for model: dat.surv1 <- coxph(yy ~ WarningType + FlankerType + TargetType + Group + frailty.gaussian(Trial, sparse=F),attention)
#items <- 1:96
#resp <- coef(dat.surv1)[-c(1:8)]
#item.effect <- lm(resp ~ items)
#plot(items, resp, main="Random effect estimates", xlab="Item", ylab="Estimates", axes=F)
#axis(2)
#axis(1, at=1:96)
#abline(item.effect,col=2, lty=3)
#dev.off()

dat.surv2 <- coxph(yy ~ WarningType+ FlankerType + TargetType + Group  + TargetDirection + frailty.gaussian(Trial, sparse=F), attention)
summary(dat.surv2)
anova(dat.surv2, dat.surv1)
#Analysis of Deviance Table
#Cox model: response is  yy
#Model 1: ~ WarningType + FlankerType + TargetType + Group + TargetDirection + frailty.gaussian(Trial, sparse = F)
#Model 2: ~ WarningType + FlankerType + TargetType + Group + frailty.gaussian(Trial, sparse = F)
#   loglik  Chisq     Df   P(>|Chi|)
#1 -130948
#2 -130953 9.8531 0.99639  0.001684 **
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
##### So, model 2 is better than model 1, TargetDirection(i.e. Left or Right) has no significant effect #######

dat.surv3 <- coxph(yy ~ WarningType + FlankerType + TargetType + Group*TargetDirection + frailty.gaussian(Trial, sparse=F), attention)
summary(dat.surv3)
anova(dat.surv1, dat.surv3)
#Analysis of Deviance Table
#Cox model: response is  yy
#Model 1: ~ WarningType + FlankerType + TargetType + Group + frailty.gaussian(Trial, sparse = F)
#Model 2: ~ WarningType + FlankerType + TargetType + Group * TargetDirection + frailty.gaussian(Trial, sparse = F)
#   loglik  Chisq    Df    P(>|Chi|)
#1 -130953
#2 -130945 16.556 1.9918 0.0002512 ***
#  ---
#  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1
##### So, model 2 is better than model 1, #####
##### there is an interaction significant effect between Group (i.e. native and L2) and TargetDirection (i.e. Left or Right) #####

##### So, the best model for attention data is model(dat.surv3) #####
#Call:
#  coxph(formula = yy ~ WarningType + FlankerType + TargetType +
#          Group * TargetDirection + frailty.gaussian(Trial, sparse = F),
#        data = attention)

#n= 15552, number of events= 15219

#                            coef   se(coef)   se2    Chisq   DF    p
#WarningTypecenter          0.17353 0.02300  0.02298  56.91  1.00 4.6e-14
#WarningTypedouble          0.30702 0.02301  0.02299 178.06  1.00 0.0e+00
#WarningTypedown            0.40121 0.02965  0.02963 183.06  1.00 0.0e+00
#WarningTypeup              0.29785 0.02966  0.02964 100.82  1.00 0.0e+00
#FlankerTypeincongruent    -0.36573 0.01997  0.01996 335.31  1.00 0.0e+00
#FlankerTypeneutral         0.11332 0.01980  0.01978  32.77  1.00 1.0e-08
#TargetTypeup               0.06552 0.01876  0.01874  12.20  1.00 4.8e-04
#Group2                    -0.12505 0.02301  0.02299  29.55  1.00 5.5e-08
#TargetDirectionright      -0.09082 0.02223  0.02220  16.70  1.00 4.4e-05
#frailty.gaussian(Trial, s                            16.48 16.22 4.4e-01
#Group2:TargetDirectionrig  0.08476 0.03256  0.03252   6.78  1.00 9.2e-03

#exp(coef) exp(-coef) lower .95 upper .95
#WarningTypecenter            1.1895     0.8407    1.1371    1.2443
#WarningTypedouble            1.3594     0.7356    1.2994    1.4221
#WarningTypedown              1.4936     0.6695    1.4093    1.5830
#WarningTypeup                1.3470     0.7424    1.2709    1.4276
#FlankerTypeincongruent       0.6937     1.4416    0.6671    0.7214
#FlankerTypeneutral           1.1200     0.8929    1.0774    1.1643
#TargetTypeup                 1.0677     0.9366    1.0292    1.1077
#Group2                       0.8825     1.1332    0.8435    0.9232
#TargetDirectionright         0.9132     1.0951    0.8743    0.9538
#gauss:1                      0.9694     1.0315    0.9096    1.0332
#gauss:2                      1.0085     0.9916    0.9453    1.0759
#gauss:3                      1.0324     0.9687    0.9671    1.1020
#gauss:4                      1.0114     0.9888    0.9481    1.0789
#gauss:5                      0.9985     1.0015    0.9363    1.0649
#gauss:6                      1.0302     0.9707    0.9651    1.0998
#gauss:7                      1.0070     0.9930    0.9440    1.0742
#gauss:8                      1.0037     0.9963    0.9409    1.0706
#gauss:9                      1.0101     0.9900    0.9469    1.0775
#gauss:10                     1.0111     0.9890    0.9477    1.0787
#gauss:11                     0.9999     1.0001    0.9374    1.0666
#gauss:12                     0.9998     1.0002    0.9374    1.0664
#gauss:13                     1.0016     0.9984    0.9390    1.0684
#gauss:14                     1.0091     0.9910    0.9458    1.0765
#gauss:15                     0.9982     1.0018    0.9360    1.0645
#gauss:16                     1.0237     0.9769    0.9593    1.0924
#gauss:17                     0.9864     1.0138    0.9252    1.0516
#gauss:18                     0.9833     1.0170    0.9222    1.0484
#gauss:19                     0.9996     1.0004    0.9373    1.0662
#gauss:20                     1.0155     0.9848    0.9516    1.0836
#gauss:21                     0.9675     1.0336    0.9079    1.0311
#gauss:22                     1.0037     0.9963    0.9410    1.0705
#gauss:23                     0.9906     1.0095    0.9289    1.0564
#gauss:24                     0.9762     1.0244    0.9158    1.0406
#gauss:25                     0.9969     1.0031    0.9347    1.0632
#gauss:26                     0.9961     1.0039    0.9340    1.0623
#gauss:27                     0.9959     1.0041    0.9338    1.0621
#gauss:28                     0.9888     1.0113    0.9274    1.0543
#gauss:29                     1.0016     0.9984    0.9390    1.0683
#gauss:30                     0.9789     1.0216    0.9184    1.0434
#gauss:31                     1.0056     0.9944    0.9427    1.0727
#gauss:32                     1.0326     0.9685    0.9673    1.1022
#gauss:33                     1.0044     0.9957    0.9416    1.0713
#gauss:34                     0.9846     1.0156    0.9235    1.0498
#gauss:35                     0.9949     1.0051    0.9330    1.0610
#gauss:36                     0.9999     1.0001    0.9375    1.0664
#gauss:37                     0.9994     1.0006    0.9370    1.0660
#gauss:38                     1.0056     0.9944    0.9427    1.0727
#gauss:39                     1.0091     0.9910    0.9458    1.0765
#gauss:40                     0.9898     1.0103    0.9283    1.0555
#gauss:41                     0.9882     1.0120    0.9266    1.0538
#gauss:42                     1.0080     0.9921    0.9449    1.0753
#gauss:43                     1.0036     0.9964    0.9409    1.0705
#gauss:44                     0.9930     1.0070    0.9312    1.0589
#gauss:45                     1.0206     0.9798    0.9565    1.0891
#gauss:46                     0.9979     1.0021    0.9357    1.0643
#gauss:47                     0.9933     1.0067    0.9315    1.0593
#gauss:48                     0.9854     1.0148    0.9243    1.0507
#gauss:49                     1.0170     0.9833    0.9531    1.0852
#gauss:50                     0.9924     1.0077    0.9306    1.0583
#gauss:51                     0.9928     1.0072    0.9310    1.0587
#gauss:52                     1.0013     0.9987    0.9388    1.0681
#gauss:53                     1.0009     0.9991    0.9384    1.0675
#gauss:54                     1.0128     0.9873    0.9492    1.0807
#gauss:55                     1.0174     0.9829    0.9534    1.0856
#gauss:56                     1.0062     0.9939    0.9432    1.0733
#gauss:57                     0.9732     1.0275    0.9131    1.0374
#gauss:58                     1.0138     0.9864    0.9500    1.0818
#gauss:59                     0.9934     1.0067    0.9315    1.0593
#gauss:60                     0.9822     1.0182    0.9211    1.0472
#gauss:61                     0.9810     1.0194    0.9202    1.0457
#gauss:62                     1.0047     0.9953    0.9419    1.0717
#gauss:63                     1.0020     0.9980    0.9394    1.0688
#gauss:64                     1.0139     0.9863    0.9503    1.0818
#gauss:65                     1.0066     0.9934    0.9437    1.0738
#gauss:66                     1.0136     0.9866    0.9501    1.0814
#gauss:67                     1.0021     0.9979    0.9394    1.0689
#gauss:68                     1.0204     0.9800    0.9562    1.0889
#gauss:69                     0.9870     1.0132    0.9257    1.0524
#gauss:70                     1.0279     0.9728    0.9630    1.0972
#gauss:71                     1.0026     0.9974    0.9400    1.0695
#gauss:72                     1.0065     0.9936    0.9434    1.0737
#gauss:73                     1.0049     0.9951    0.9420    1.0720
#gauss:74                     1.0059     0.9941    0.9429    1.0731
#gauss:75                     1.0177     0.9826    0.9537    1.0859
#gauss:76                     0.9994     1.0006    0.9370    1.0660
#gauss:77                     1.0033     0.9968    0.9405    1.0702
#gauss:78                     0.9887     1.0114    0.9272    1.0543
#gauss:79                     0.9883     1.0118    0.9269    1.0538
#gauss:80                     0.9835     1.0167    0.9225    1.0486
#gauss:81                     0.9749     1.0257    0.9146    1.0392
#gauss:82                     0.9807     1.0196    0.9199    1.0456
#gauss:83                     0.9838     1.0165    0.9227    1.0490
#gauss:84                     0.9994     1.0006    0.9370    1.0660
#gauss:85                     0.9832     1.0171    0.9222    1.0483
#gauss:86                     0.9963     1.0037    0.9342    1.0625
#gauss:87                     1.0179     0.9825    0.9539    1.0861
#gauss:88                     0.9872     1.0130    0.9258    1.0526
#gauss:89                     1.0169     0.9833    0.9530    1.0852
#gauss:90                     0.9933     1.0068    0.9315    1.0591
#gauss:91                     0.9870     1.0132    0.9257    1.0524
#gauss:92                     1.0035     0.9965    0.9407    1.0705
#gauss:93                     1.0171     0.9832    0.9530    1.0854
#gauss:94                     1.0028     0.9972    0.9402    1.0695
#gauss:95                     0.9928     1.0073    0.9310    1.0587
#gauss:96                     0.9974     1.0026    0.9352    1.0637
#Group2:TargetDirectionrig    1.0885     0.9187    1.0212    1.1602

#Iterations: 10 outer, 21 Newton-Raphson
#Variance of random effect= 0.001302083
#Degrees of freedom for terms=  4.0  2.0  1.0  1.0  1.0 16.2  1.0
#Concordance= 0.618  (se = 0.003 )
#Likelihood ratio test= 1181  on 26.2 df,   p=0

coef(dat.surv3)
#WarningTypecenter           WarningTypedouble             WarningTypedown               WarningTypeup
#1.735267e-01                3.070223e-01                4.012093e-01                2.978485e-01
#FlankerTypeincongruent          FlankerTypeneutral                TargetTypeup                      Group2
#-3.657301e-01                1.133203e-01                6.552417e-02               -1.250515e-01
#TargetDirectionright                     gauss:1                     gauss:2                     gauss:3
#-9.081771e-02               -3.103726e-02                8.457340e-03                3.184372e-02
#gauss:4                     gauss:5                     gauss:6                     gauss:7
#1.131212e-02               -1.457725e-03                2.978902e-02                7.020580e-03
#gauss:8                     gauss:9                    gauss:10                    gauss:11
#3.671485e-03                1.003361e-02                1.104308e-02               -8.371775e-05
#gauss:12                    gauss:13                    gauss:14                    gauss:15
#-1.833410e-04                1.615185e-03                9.028235e-03               -1.835371e-03
#gauss:16                    gauss:17                    gauss:18                    gauss:19
#2.341374e-02               -1.371377e-02               -1.686513e-02               -3.540576e-04
#gauss:20                    gauss:21                    gauss:22                    gauss:23
#1.533795e-02               -3.300091e-02                3.670668e-03               -9.417276e-03
#gauss:24                    gauss:25                    gauss:26                    gauss:27
#-2.408171e-02               -3.129791e-03               -3.902155e-03               -4.109821e-03
#gauss:28                    gauss:29                    gauss:30                    gauss:31
#-1.125712e-02                1.585512e-03               -2.132900e-02                5.585260e-03
#gauss:32                    gauss:33                    gauss:34                    gauss:35
#3.203261e-02                4.358139e-03               -1.548403e-02               -5.080368e-03
#gauss:36                    gauss:37                    gauss:38                    gauss:39
#-1.269320e-04               -5.742766e-04                5.598221e-03                9.010033e-03
#gauss:40                    gauss:41                    gauss:42                    gauss:43
#-1.022098e-02               -1.191140e-02                7.948046e-03                3.584191e-03
#gauss:44                    gauss:45                    gauss:46                    gauss:47
#-7.013263e-03                2.043176e-02               -2.059717e-03               -6.702456e-03
#gauss:48                    gauss:49                    gauss:50                    gauss:51
#-1.465944e-02                1.681878e-02               -7.649943e-03               -7.219527e-03
#gauss:52                    gauss:53                    gauss:54                    gauss:55
#1.347133e-03                8.570606e-04                1.274481e-02                1.723416e-02
#gauss:56                    gauss:57                    gauss:58                    gauss:59
#6.148062e-03               -2.713134e-02                1.367252e-02               -6.665302e-03
#gauss:60                    gauss:61                    gauss:62                    gauss:63
#-1.800093e-02               -1.919146e-02                4.695443e-03                2.002978e-03
#gauss:64                    gauss:65                    gauss:66                    gauss:67
#1.379736e-02                6.596813e-03                1.349939e-02                2.066533e-03
#gauss:68                    gauss:69                    gauss:70                    gauss:71
#2.015590e-02               -1.310198e-02                2.752654e-02                2.645736e-03
#gauss:72                    gauss:73                    gauss:74                    gauss:75
#6.436515e-03                4.906648e-03                5.874949e-03                1.752330e-02
#gauss:76                    gauss:77                    gauss:78                    gauss:79
#-5.846130e-04                3.255004e-03               -1.133218e-02               -1.176170e-02
#gauss:80                    gauss:81                    gauss:82                    gauss:83
#-1.660638e-02               -2.542187e-02               -1.945329e-02               -1.633145e-02
#gauss:84                    gauss:85                    gauss:86                    gauss:87
#-5.501535e-04               -1.691814e-02               -3.742000e-03                1.770269e-02
#gauss:88                    gauss:89                    gauss:90                    gauss:91
#-1.292827e-02                1.679528e-02               -6.750463e-03               -1.310343e-02
#gauss:92                    gauss:93                    gauss:94                    gauss:95
#3.511569e-03                1.692033e-02                2.783776e-03               -7.234551e-03
#gauss:96                    Group2:TargetDirectionright
#-2.619775e-03                8.476219e-02

## plot for item random effect:
# for model: dat.surv3 <- coxph(yy ~ WarningType + FlankerType + TargetType + Group*TargetDirection + frailty.gaussian(Trial, sparse=F),attention)
items <- 1:96
resp <- coef(dat.surv3)[-c(1:9),106]
item.effect <- lm(resp ~ items)
plot(items, resp, main="Random effect estimates", xlab="Item", ylab="Estimates", axes=F)
axis(2)
axis(1, at=1:96)
abline(item.effect,col=2, lty=3)
summary(item.effect)
#Call:
#  lm(formula = resp ~ items)

#Residuals:
#  Min        1Q    Median        3Q       Max 
#-0.033578 -0.010016 -0.000059  0.008082  0.083380 

#Coefficients:
#             Estimate  Std. Error  t value Pr(>|t|)
#(Intercept) 3.545e-04  3.316e-03   0.107    0.915
#items       1.060e-05  5.876e-05   0.180    0.857

#Residual standard error: 0.0162 on 95 degrees of freedom
#Multiple R-squared:  0.0003424,	Adjusted R-squared:  -0.01018 
#F-statistic: 0.03254 on 1 and 95 DF,  p-value: 0.8572
#No significant effect of Items.


## (CDC)
## Code to extract the modelled score for each participant (to be
## used as predictor in the other analyses)

pred.dat.surv3 <- predict(dat.surv3)
## fitted score for each data point in terms of linear
## predictor. Note that in one individual there are several scores
## because within each individual there are several estimates for
## each items. It is safe to average them, because each individual
## has the same estimates of items.

pa <- attention$Subject[!is.na(attention$SlideTarget.RT)]
mean.score.dat.surv3 <- c(by(pred.dat.surv3, pa, mean))
## median.score.dat.surv3 <- c(by(pred.dat.surv3, pa, median))

## Adding participant characteristics to the dataframe
library(reshape2)
tmp <- as.data.frame(mean.score.dat.surv3)
tmp$Factor = rownames(tmp)
melt(tmp)
#Using Factor as id variables
#   Factor          variable       value
#1     NS1 mean.score.dat.surv3 -0.04439709
#2     NS2 mean.score.dat.surv3 -0.04439709
#3     NS3 mean.score.dat.surv3 -0.04439709
#4     NS4 mean.score.dat.surv3 -0.04439709
#5     NS5 mean.score.dat.surv3 -0.04439709
#6     NS6 mean.score.dat.surv3 -0.04439709
#7     NS7 mean.score.dat.surv3 -0.04439709
#8     NS8 mean.score.dat.surv3 -0.04439709
#9     NS9 mean.score.dat.surv3 -0.04439709
#10   NS10 mean.score.dat.surv3 -0.04439709
#11   NS11 mean.score.dat.surv3 -0.04439709
#12   NS12 mean.score.dat.surv3 -0.04439709
#13   NS13 mean.score.dat.surv3 -0.04439709
#14   NS14 mean.score.dat.surv3 -0.04439709
#15   NS15 mean.score.dat.surv3 -0.04439709
#16   NS16 mean.score.dat.surv3 -0.04439709
#17   NS17 mean.score.dat.surv3 -0.04439709
#18   NS18 mean.score.dat.surv3 -0.04439709
#19   NS19 mean.score.dat.surv3 -0.04439709
#20   NS20 mean.score.dat.surv3 -0.04439709
#21   NS21 mean.score.dat.surv3 -0.04439709
#22   NS22 mean.score.dat.surv3 -0.04439709
#23   NS23 mean.score.dat.surv3 -0.04439709
#24   NS24 mean.score.dat.surv3 -0.04439709
#25   NS25 mean.score.dat.surv3 -0.04439709
#26   L2.1 mean.score.dat.surv3  0.03827335
#27   L2.2 mean.score.dat.surv3  0.03827335
#28   L2.3 mean.score.dat.surv3  0.03827335
#29   L2.4 mean.score.dat.surv3  0.03827335
#30   L2.5 mean.score.dat.surv3  0.03827335
#31   L2.6 mean.score.dat.surv3  0.03827335
#32   L2.7 mean.score.dat.surv3  0.03827335
#33   L2.8 mean.score.dat.surv3  0.03827335
#34   L2.9 mean.score.dat.surv3  0.03827335
#35  L2.10 mean.score.dat.surv3  0.03827335
#36  L2.11 mean.score.dat.surv3  0.03827335
#37  L2.12 mean.score.dat.surv3  0.03827335
#38  L2.13 mean.score.dat.surv3  0.03827335
#39  L2.14 mean.score.dat.surv3  0.03827335
#40  L2.15 mean.score.dat.surv3  0.03827335
#41  L2.16 mean.score.dat.surv3  0.03827335
#42  L2.17 mean.score.dat.surv3  0.03827335
#43  L2.18 mean.score.dat.surv3  0.03827335
#44  L2.19 mean.score.dat.surv3  0.03827335
#45  L2.20 mean.score.dat.surv3  0.03827335
#46  L2.21 mean.score.dat.surv3  0.03827335
#47  L2.22 mean.score.dat.surv3  0.03827335
#48  L2.23 mean.score.dat.surv3  0.03827335
#49  L2.24 mean.score.dat.surv3  0.03827335
#50  L2.25 mean.score.dat.surv3  0.03827335
#51  L2.26 mean.score.dat.surv3  0.03827335
#52  L2.27 mean.score.dat.surv3  0.03827335
#53  L2.28 mean.score.dat.surv3  0.03827335
#54  L2.29 mean.score.dat.surv3  0.03827335
str(tmp)
#'data.frame':	54 obs. of  2 variables:
#$ mean.score.dat.surv3: num  -0.0444 -0.0444 -0.0444 -0.0444 -0.0444 ...
#$ Factor              : chr  "NS1" "NS2" "NS3" "NS4" ...
tmp$Subject <- as.factor(tmp$Factor)
tmp1 <- tmp[!duplicated(tmp$Subject), ]
str(tmp1)
#'data.frame':	54 obs. of  3 variables:
#$ mean.score.dat.surv3: num  -0.0444 -0.0444 -0.0444 -0.0444 -0.0444 ...
#$ Factor              : chr  "NS1" "NS2" "NS3" "NS4" ...
#$ Subject             : Factor w/ 54 levels "L2.1","L2.10",..: 30 41 48 49 50 51 52 53 54 31 ...
scores <- tmp1
str(scores)
save(scores, file='C://Users//Linda//Desktop//Rdocument//data//AttentionScores.rda')

## CDC: you will need to check that participants are identified in
## exactly the same way in the scores dataframe and in the dataframe
## you want to merge them into.  Then use the following commands to
## perform the merge (where TargetDataFrame is the data to which you want to add the ANT scores, and NewDataFrame is the result of the merge, giving it temporarily a new name to check everything is ok before over-writing the original file):

load('C://Users//Linda//Desktop//Rdocument//data//AttentionScores.rda')
load('C://Users//Linda//Desktop//Rdocument//data//Exp1dat.rda')

NewDataFrame <- merge(scores, dat, by = "Subject")

nrow(NewDataFrame) == nrow(dat)
#[1] TRUE
## to check you have the same number of rows (otherwise something's
## gone wrong)
