getwd()
#[1] "C:/Users/Linda/Documents"
setwd('C:/Users/Linda/Desktop/Rdocument')


#### 1. Bind two groups�� proficiency data ####
### Native Chinese speakers' proficiency data ###
proficiency1 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//nativeChineseProficiency.csv', header=T, sep=',')
str(proficiency1)
#'data.frame':	25 obs. of  3 variables:
#$ Subject                     : int  1 2 3 4 5 6 7 8 9 10 ...
#$ Group                       : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Percentile.Proficiency.Score: int  100 100 100 100 100 100 100 100 100 100 ...
proficiency1$Subject <- as.factor(proficiency1$Subject)
levels(proficiency1$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24"
#[25] "25"
levels(proficiency1$Subject) <- c('NS1','NS2','NS3','NS4','NS5','NS6','NS7','NS8','NS9','NS10',
                                  'NS11','NS12','NS13','NS14','NS15','NS16','NS17','NS18','NS19','NS20',
                                  'NS21','NS22','NS23','NS24','NS25')
### L2 learners' proficiency data ###
proficiency2 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//L2Proficiency.csv', header=T, sep=',')
str(proficiency2)
#'data.frame':	29 obs. of  3 variables:
#$ Subject                     : int  1 2 3 4 5 6 7 8 9 10 ...
#$ Group                       : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Percentile.Proficiency.Score: int  92 92 76 100 92 84 72 60 76 88 ...
proficiency2$Subject <- as.factor(proficiency2$Subject)
levels(proficiency2$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24"
#[25] "25" "26" "27" "28" "29"
levels(proficiency2$Subject) <- c('L2.1','L2.2','L2.3','L2.4','L2.5','L2.6','L2.7','L2.8','L2.9','L2.10',
                                  'L2.11','L2.12','L2.13','L2.14','L2.15','L2.16','L2.17','L2.18','L2.19',
                                  'L2.20','L2.21','L2.22','L2.23','L2.24','L2.25','L2.26','L2.27','L2.28','L2.29')
#Bind#
total <- rbind(proficiency1, proficiency2)
proficiency <- total
dim(proficiency)
#[1] 54  3
str(proficiency)
#'data.frame':	54 obs. of  3 variables:
#$ Subject                     : Factor w/ 54 levels "NS1","NS2","NS3",..: 1 2 3 4 5 6 7 8 9 10 ...
#$ Group                       : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Percentile.Proficiency.Score: int  100 100 100 100 100 100 100 100 100 100 ...


#### 2. Bind two groups�� memroy data ####
### Native Chinese speakers'memory data ###
memory1 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//nativeChineseMemory.csv', header=T, sep=',')
str(memory1)
#'data.frame':	25 obs. of  4 variables:
#$ Subject                     : int  1 2 3 4 5 6 7 8 9 10 ...
#$ Group                       : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Handness                    : Factor w/ 2 levels "mixed","right": 2 2 2 2 1 2 2 2 2 2 ...
#$ Stand.Score                 : int  121 132 139 136 143 136 139 121 139 129 ...
memory1$Subject <- as.factor(memory1$Subject)
levels(memory1$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24"
#[25] "25"
levels(memory1$Subject) <- c('NS1','NS2','NS3','NS4','NS5','NS6','NS7','NS8','NS9','NS10',
                             'NS11','NS12','NS13','NS14','NS15','NS16','NS17','NS18','NS19','NS20',
                             'NS21','NS22','NS23','NS24','NS25')
### L2 learners' memory data ###
memory2 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//L2Memory.csv', header=T, sep=',')
str(memory2)
#'data.frame':	29 obs. of  4 variables:
#$ Subject                     : int  1 2 3 4 5 6 7 8 9 10 ...
#$ Group                       : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Handness                    : Factor w/ 2 levels "mixed","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Stand.Score                 : int  111 107 107 125 104 104 104 104 100 104 ...
memory2$Subject <- as.factor(memory2$Subject)
levels(memory2$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24"
#[25] "25" "26" "27" "28" "29"
levels(memory2$Subject) <- c('L2.1','L2.2','L2.3','L2.4','L2.5','L2.6','L2.7','L2.8','L2.9','L2.10',
                             'L2.11','L2.12','L2.13','L2.14','L2.15','L2.16','L2.17','L2.18','L2.19',
                             'L2.20','L2.21','L2.22','L2.23','L2.24','L2.25','L2.26','L2.27','L2.28','L2.29')
#Bind#
total <- rbind(memory1, memory2)
memory <- total
dim(memory)
#[1] 54  4
str(memory)
#'data.frame':	54 obs. of  4 variables:
#$ Subject                     : Factor w/ 54 levels "NS1","NS2","NS3",..: 1 2 3 4 5 6 7 8 9 10 ...
#$ Group                       : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Handness                    : Factor w/ 2 levels "mixed","right": 2 2 2 2 1 2 2 2 2 2 ...
#$ Stand.Score                 : int  121 132 139 136 143 136 139 121 139 129 ...

#### 3. Bind two groups' self-paced data ####
### Native Chinese speakers' self-paced data ###
selfpaced1 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//nativeChineseSelfpaced.csv', header=T, sep=',')
str(selfpaced1)
#'data.frame':	4500 obs. of  35 variables:
#$ Subject            : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Session            : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group              : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Handedness         : Factor w/ 1 level "right": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                : Factor w/ 2 levels "female","male": 1 1 1 1 1 1 1 1 1 1 ...
#$ Context            : Factor w/ 3 levels "LDcontext","localcontext",..: 2 3 1 3 2 3 1 3 2 3 ...
#$ Verb.Type          : Factor w/ 3 levels "v1","v2","v3": 3 3 1 3 2 2 3 3 1 3 ...
#$ Distance           : Factor w/ 3 levels "3rd","LD","local": 3 1 3 2 2 1 2 2 3 1 ...
#$ Context.Sentence   : Factor w/ 180 levels "filler3rdbangzhu.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CS.RT              : int  4304 3466 3271 2223 2723 2002 2477 2136 3640 2294 ...
#$ CSTSwhole          : Factor w/ 180 levels "filler3rdbangzhuwhole.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CSTSwhole.RT       : int  2914 3761 7725 6603 2715 5285 4850 4249 2119 2029 ...
#$ Question           : Factor w/ 93 levels "bangzhuquestion.bmp",..: 92 52 90 59 73 25 75 60 8 50 ...
#$ CorrectAnswer      : int  2 2 2 1 1 2 1 1 2 2 ...
#$ Question.ACC       : int  1 1 1 1 0 1 0 1 1 1 ...
#$ Question.RT        : int  4533 3738 3071 3251 6382 3377 2255 1446 1378 644 ...
#$ Embedded.Verb      : Factor w/ 74 levels "bangzhu.bmp",..: 71 59 68 73 34 22 36 74 12 57 ...
#$ Embedded.Verb.RT   : int  514 576 370 215 257 212 294 217 222 222 ...
#$ Pronoun            : Factor w/ 4 levels "ta.bmp","ta9.bmp",..: 3 1 3 1 3 1 3 1 3 1 ...
#$ Pronoun.RT         : int  430 489 395 1174 327 283 1650 512 453 277 ...
#$ Spillover1         : Factor w/ 11 levels "dajia.bmp","dajia9.bmp",..: 1 9 1 1 1 9 1 1 1 1 ...
#$ Spillover1.RT      : int  436 421 291 447 313 615 295 331 274 290 ...
#$ Spillover2         : Factor w/ 17 levels "bu.bmp","dou.bmp",..: 2 2 5 2 5 16 5 15 2 2 ...
#$ Spillover2.RT      : int  818 475 319 301 357 318 339 318 231 302 ...
#$ Spillover3         : Factor w/ 33 levels "chongchuqu.bmp",..: 21 27 15 21 11 2 8 24 21 32 ...
#$ Spillover3.RT      : int  577 568 505 512 454 505 469 376 350 297 ...
#$ Matrix.Subject     : Factor w/ 1 level "zhangsan.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT  : int  651 279 420 422 366 441 577 378 414 442 ...
#$ Matrix.Verb        : Factor w/ 1 level "rang.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT     : int  312 227 315 253 279 247 266 242 277 216 ...
#$ Embedded.Subject   : Factor w/ 1 level "lisi.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT: int  628 442 286 274 235 221 206 176 274 182 ...
#$ NOT                : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT             : int  0 0 0 0 0 0 0 0 0 0 ...
selfpaced1$Subject <- as.factor(selfpaced1$Subject)
levels(selfpaced1$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24"
#[25] "25"
levels(selfpaced1$Subject) <- c('NS1','NS2','NS3','NS4','NS5','NS6','NS7','NS8','NS9','NS10',
                                'NS11','NS12','NS13','NS14','NS15','NS16','NS17','NS18','NS19','NS20',
                                'NS21','NS22','NS23','NS24','NS25')
### L2 learners' self-paced data ###
selfpaced2 <- read.csv('C://Users//Linda//Desktop//Rdocument//data//L2Selfpaced.csv', header=T, sep=',')
str(selfpaced2)
#'data.frame':	5220 obs. of  35 variables:
#$ Subject            : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Session            : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group              : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Handedness         : Factor w/ 2 levels "left","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Sex                : Factor w/ 3 levels "","female","male": 2 2 2 2 2 2 2 2 2 2 ...
#$ Context            : Factor w/ 3 levels "LDcontext","localcontext",..: 2 3 1 3 2 3 1 3 2 3 ...
#$ Verb.Type          : Factor w/ 3 levels "v1","v2","v3": 3 3 1 3 2 2 3 3 1 3 ...
#$ Distance           : Factor w/ 3 levels "3rd","LD","local": 3 1 3 2 2 1 2 2 3 1 ...
#$ Context.Sentence   : Factor w/ 180 levels "filler3rdbangzhu.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CS.RT              : int  7777 6964 8024 3567 7499 12230 6049 26617 5402 176 ...
#$ CSTSwhole          : Factor w/ 180 levels "filler3rdbangzhuwhole.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CSTSwhole.RT       : int  9976 9964 8302 9337 9242 16474 17572 8828 14064 19125 ...
#$ Question           : Factor w/ 93 levels "bangzhuquestion.bmp",..: 92 52 90 59 73 25 75 60 8 50 ...
#$ CorrectAnswer      : int  2 2 2 1 1 2 1 1 2 2 ...
#$ Question.ACC       : int  1 1 1 1 1 1 1 1 1 0 ...
#$ Question.RT        : int  4830 6505 9636 5277 6170 4413 6171 2647 2800 1385 ...
#$ Embedded.Verb      : Factor w/ 75 levels "bangzhu.bmp",..: 72 59 69 74 34 22 36 75 12 57 ...
#$ Embedded.Verb.RT   : int  1069 984 1182 893 2026 169 162 147 190 156 ...
#$ Pronoun            : Factor w/ 5 levels "rang.bmp","ta.bmp",..: 4 2 4 2 4 2 4 2 4 2 ...
#$ Pronoun.RT         : int  679 574 1311 521 772 162 596 164 231 166 ...
#$ Spillover1         : Factor w/ 12 levels "dajia.bmp","dajia9.bmp",..: 1 10 1 1 1 10 1 1 1 1 ...
#$ Spillover1.RT      : int  760 1351 1619 1224 1334 354 183 208 180 191 ...
#$ Spillover2         : Factor w/ 91 levels "bangzhu.bmp",..: 12 12 24 12 24 82 24 79 12 12 ...
#$ Spillover2.RT      : int  641 484 407 416 680 241 301 299 196 349 ...
#$ Spillover3         : Factor w/ 37 levels "chongchuqu.bmp",..: 23 29 15 23 11 2 8 26 23 34 ...
#$ Spillover3.RT      : int  704 536 2049 296 1221 378 399 348 459 451 ...
#$ Matrix.Subject     : Factor w/ 12 levels "dajia.bmp","dajia9.bmp",..: 12 12 12 12 12 12 12 12 12 12 ...
#$ Matrix.Subject.RT  : int  1304 888 589 611 839 412 481 658 603 1113 ...
#$ Matrix.Verb        : Factor w/ 18 levels "bu.bmp","dou.bmp",..: 10 10 10 10 10 10 10 10 10 10 ...
#$ Matrix.Verb.RT     : int  927 466 425 415 491 505 158 203 292 161 ...
#$ Embedded.Subject   : Factor w/ 34 levels "chongchuqu.bmp",..: 12 12 12 12 12 12 12 12 12 12 ...
#$ Embedded.Subject.RT: int  862 580 485 982 641 283 278 153 188 157 ...
#$ NOT                : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT             : int  0 0 0 0 0 0 0 0 0 0 ...
selfpaced2$Subject <- as.factor(selfpaced2$Subject)
levels(selfpaced2$Subject)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24"
#[25] "25" "26" "27" "28" "29"
levels(selfpaced2$Subject) <- c('L2.1','L2.2','L2.3','L2.4','L2.5','L2.6','L2.7','L2.8','L2.9','L2.10',
                                'L2.11','L2.12','L2.13','L2.14','L2.15','L2.16','L2.17','L2.18','L2.19',
                                'L2.20','L2.21','L2.22','L2.23','L2.24','L2.25','L2.26','L2.27','L2.28','L2.29')
#Bind#
total <- rbind(selfpaced1, selfpaced2)
selfpaced <- total
dim(selfpaced)
#[1] 9720   35
str(selfpaced)
#'data.frame':	9720 obs. of  35 variables:
#$ Subject            : Factor w/ 54 levels "NS1","NS2","NS3",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Session            : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group              : int  2 2 2 2 2 2 2 2 2 2 ...
#$ Handedness         : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                : Factor w/ 3 levels "female","male",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Context            : Factor w/ 3 levels "LDcontext","localcontext",..: 2 3 1 3 2 3 1 3 2 3 ...
#$ Verb.Type          : Factor w/ 3 levels "v1","v2","v3": 3 3 1 3 2 2 3 3 1 3 ...
#$ Distance           : Factor w/ 3 levels "3rd","LD","local": 3 1 3 2 2 1 2 2 3 1 ...
#$ Context.Sentence   : Factor w/ 180 levels "filler3rdbangzhu.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CS.RT              : int  4304 3466 3271 2223 2723 2002 2477 2136 3640 2294 ...
#$ CSTSwhole          : Factor w/ 180 levels "filler3rdbangzhuwhole.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CSTSwhole.RT       : int  2914 3761 7725 6603 2715 5285 4850 4249 2119 2029 ...
#$ Question           : Factor w/ 93 levels "bangzhuquestion.bmp",..: 92 52 90 59 73 25 75 60 8 50 ...
#$ CorrectAnswer      : int  2 2 2 1 1 2 1 1 2 2 ...
#$ Question.ACC       : int  1 1 1 1 0 1 0 1 1 1 ...
#$ Question.RT        : int  4533 3738 3071 3251 6382 3377 2255 1446 1378 644 ...
#$ Embedded.Verb      : Factor w/ 75 levels "bangzhu.bmp",..: 71 59 68 73 34 22 36 74 12 57 ...
#$ Embedded.Verb.RT   : int  514 576 370 215 257 212 294 217 222 222 ...
#$ Pronoun            : Factor w/ 5 levels "ta.bmp","ta9.bmp",..: 3 1 3 1 3 1 3 1 3 1 ...
#$ Pronoun.RT         : int  430 489 395 1174 327 283 1650 512 453 277 ...
#$ Spillover1         : Factor w/ 12 levels "dajia.bmp","dajia9.bmp",..: 1 9 1 1 1 9 1 1 1 1 ...
#$ Spillover1.RT      : int  436 421 291 447 313 615 295 331 274 290 ...
#$ Spillover2         : Factor w/ 91 levels "bu.bmp","dou.bmp",..: 2 2 5 2 5 16 5 15 2 2 ...
#$ Spillover2.RT      : int  818 475 319 301 357 318 339 318 231 302 ...
#$ Spillover3         : Factor w/ 37 levels "chongchuqu.bmp",..: 21 27 15 21 11 2 8 24 21 32 ...
#$ Spillover3.RT      : int  577 568 505 512 454 505 469 376 350 297 ...
#$ Matrix.Subject     : Factor w/ 12 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT  : int  651 279 420 422 366 441 577 378 414 442 ...
#$ Matrix.Verb        : Factor w/ 18 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT     : int  312 227 315 253 279 247 266 242 277 216 ...
#$ Embedded.Subject   : Factor w/ 34 levels "lisi.bmp","chongchuqu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT: int  628 442 286 274 235 221 206 176 274 182 ...
#$ NOT                : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT             : int  0 0 0 0 0 0 0 0 0 0 ...


####4.Merge Proficiency, Memory, Self-paced Data ####
proficiency <- proficiency[ ,-2]
proficiency$Subject <- as.factor(proficiency$Subject)
levels(proficiency$Subject)
#[1] "NS1"   "NS2"   "NS3"   "NS4"   "NS5"   "NS6"   "NS7"   "NS8"   "NS9"   "NS10"  "NS11"  "NS12"  "NS13"  "NS14"  "NS15" 
#[16] "NS16"  "NS17"  "NS18"  "NS19"  "NS20"  "NS21"  "NS22"  "NS23"  "NS24"  "NS25"  "L2.1"  "L2.2"  "L2.3"  "L2.4"  "L2.5" 
#[31] "L2.6"  "L2.7"  "L2.8"  "L2.9"  "L2.10" "L2.11" "L2.12" "L2.13" "L2.14" "L2.15" "L2.16" "L2.17" "L2.18" "L2.19" "L2.20"
#[46] "L2.21" "L2.22" "L2.23" "L2.24" "L2.25" "L2.26" "L2.27" "L2.28" "L2.29"
dat1 <- merge(proficiency, selfpaced, all=TRUE, by='Subject')
str(dat1)
#'data.frame':	9720 obs. of  36 variables:
#$ Subject                     : Factor w/ 54 levels "NS1","NS2","NS3",..: 26 26 26 26 26 26 26 26 26 26 ...
#$ Percentile.Proficiency.Score: int  92 92 92 92 92 92 92 92 92 92 ...
#$ Session                     : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                         : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group                       : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Handedness                  : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                         : Factor w/ 3 levels "female","male",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Context                     : Factor w/ 3 levels "LDcontext","localcontext",..: 2 3 1 3 2 3 1 3 2 3 ...
#$ Verb.Type                   : Factor w/ 3 levels "v1","v2","v3": 3 3 1 3 2 2 3 3 1 3 ...
#$ Distance                    : Factor w/ 3 levels "3rd","LD","local": 3 1 3 2 2 1 2 2 3 1 ...
#$ Context.Sentence            : Factor w/ 180 levels "filler3rdbangzhu.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CS.RT                       : int  7777 6964 8024 3567 7499 12230 6049 26617 5402 176 ...
#$ CSTSwhole                   : Factor w/ 180 levels "filler3rdbangzhuwhole.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CSTSwhole.RT                : int  9976 9964 8302 9337 9242 16474 17572 8828 14064 19125 ...
#$ Question                    : Factor w/ 93 levels "bangzhuquestion.bmp",..: 92 52 90 59 73 25 75 60 8 50 ...
#$ CorrectAnswer               : int  2 2 2 1 1 2 1 1 2 2 ...
#$ Question.ACC                : int  1 1 1 1 1 1 1 1 1 0 ...
#$ Question.RT                 : int  4830 6505 9636 5277 6170 4413 6171 2647 2800 1385 ...
#$ Embedded.Verb               : Factor w/ 75 levels "bangzhu.bmp",..: 71 59 68 73 34 22 36 74 12 57 ...
#$ Embedded.Verb.RT            : int  1069 984 1182 893 2026 169 162 147 190 156 ...
#$ Pronoun                     : Factor w/ 5 levels "ta.bmp","ta9.bmp",..: 3 1 3 1 3 1 3 1 3 1 ...
#$ Pronoun.RT                  : int  679 574 1311 521 772 162 596 164 231 166 ...
#$ Spillover1                  : Factor w/ 12 levels "dajia.bmp","dajia9.bmp",..: 1 9 1 1 1 9 1 1 1 1 ...
#$ Spillover1.RT               : int  760 1351 1619 1224 1334 354 183 208 180 191 ...
#$ Spillover2                  : Factor w/ 91 levels "bu.bmp","dou.bmp",..: 2 2 5 2 5 16 5 15 2 2 ...
#$ Spillover2.RT               : int  641 484 407 416 680 241 301 299 196 349 ...
#$ Spillover3                  : Factor w/ 37 levels "chongchuqu.bmp",..: 21 27 15 21 11 2 8 24 21 32 ...
#$ Spillover3.RT               : int  704 536 2049 296 1221 378 399 348 459 451 ...
#$ Matrix.Subject              : Factor w/ 12 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT           : int  1304 888 589 611 839 412 481 658 603 1113 ...
#$ Matrix.Verb                 : Factor w/ 18 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT              : int  927 466 425 415 491 505 158 203 292 161 ...
#$ Embedded.Subject            : Factor w/ 34 levels "lisi.bmp","chongchuqu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT         : int  862 580 485 982 641 283 278 153 188 157 ...
#$ NOT                         : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT                      : int  0 0 0 0 0 0 0 0 0 0 ...

memory <- memory[ ,-2]
memory$Subject <- as.factor(memory$Subject)
levels(memory$Subject)
#[1] "NS1"   "NS2"   "NS3"   "NS4"   "NS5"   "NS6"   "NS7"   "NS8"   "NS9"   "NS10"  "NS11"  "NS12"  "NS13"  "NS14"  "NS15" 
#[16] "NS16"  "NS17"  "NS18"  "NS19"  "NS20"  "NS21"  "NS22"  "NS23"  "NS24"  "NS25"  "L2.1"  "L2.2"  "L2.3"  "L2.4"  "L2.5" 
#[31] "L2.6"  "L2.7"  "L2.8"  "L2.9"  "L2.10" "L2.11" "L2.12" "L2.13" "L2.14" "L2.15" "L2.16" "L2.17" "L2.18" "L2.19" "L2.20"
#[46] "L2.21" "L2.22" "L2.23" "L2.24" "L2.25" "L2.26" "L2.27" "L2.28" "L2.29"
dat2 <- merge(dat1,memory,all=TRUE, by='Subject')
str(dat2)
#'data.frame':	9720 obs. of  38 variables:
#$ Subject                     : Factor w/ 54 levels "NS1","NS2","NS3",..: 26 26 26 26 26 26 26 26 26 26 ...
#$ Percentile.Proficiency.Score: int  92 92 92 92 92 92 92 92 92 92 ...
#$ Session                     : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                         : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group                       : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Handedness                  : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                         : Factor w/ 3 levels "female","male",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Context                     : Factor w/ 3 levels "LDcontext","localcontext",..: 2 3 1 3 2 3 1 3 2 3 ...
#$ Verb.Type                   : Factor w/ 3 levels "v1","v2","v3": 3 3 1 3 2 2 3 3 1 3 ...
#$ Distance                    : Factor w/ 3 levels "3rd","LD","local": 3 1 3 2 2 1 2 2 3 1 ...
#$ Context.Sentence            : Factor w/ 180 levels "filler3rdbangzhu.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CS.RT                       : int  7777 6964 8024 3567 7499 12230 6049 26617 5402 176 ...
#$ CSTSwhole                   : Factor w/ 180 levels "filler3rdbangzhuwhole.bmp",..: 179 38 132 89 160 12 117 90 143 36 ...
#$ CSTSwhole.RT                : int  9976 9964 8302 9337 9242 16474 17572 8828 14064 19125 ...
#$ Question                    : Factor w/ 93 levels "bangzhuquestion.bmp",..: 92 52 90 59 73 25 75 60 8 50 ...
#$ CorrectAnswer               : int  2 2 2 1 1 2 1 1 2 2 ...
#$ Question.ACC                : int  1 1 1 1 1 1 1 1 1 0 ...
#$ Question.RT                 : int  4830 6505 9636 5277 6170 4413 6171 2647 2800 1385 ...
#$ Embedded.Verb               : Factor w/ 75 levels "bangzhu.bmp",..: 71 59 68 73 34 22 36 74 12 57 ...
#$ Embedded.Verb.RT            : int  1069 984 1182 893 2026 169 162 147 190 156 ...
#$ Pronoun                     : Factor w/ 5 levels "ta.bmp","ta9.bmp",..: 3 1 3 1 3 1 3 1 3 1 ...
#$ Pronoun.RT                  : int  679 574 1311 521 772 162 596 164 231 166 ...
#$ Spillover1                  : Factor w/ 12 levels "dajia.bmp","dajia9.bmp",..: 1 9 1 1 1 9 1 1 1 1 ...
#$ Spillover1.RT               : int  760 1351 1619 1224 1334 354 183 208 180 191 ...
#$ Spillover2                  : Factor w/ 91 levels "bu.bmp","dou.bmp",..: 2 2 5 2 5 16 5 15 2 2 ...
#$ Spillover2.RT               : int  641 484 407 416 680 241 301 299 196 349 ...
#$ Spillover3                  : Factor w/ 37 levels "chongchuqu.bmp",..: 21 27 15 21 11 2 8 24 21 32 ...
#$ Spillover3.RT               : int  704 536 2049 296 1221 378 399 348 459 451 ...
#$ Matrix.Subject              : Factor w/ 12 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT           : int  1304 888 589 611 839 412 481 658 603 1113 ...
#$ Matrix.Verb                 : Factor w/ 18 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT              : int  927 466 425 415 491 505 158 203 292 161 ...
#$ Embedded.Subject            : Factor w/ 34 levels "lisi.bmp","chongchuqu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT         : int  862 580 485 982 641 283 278 153 188 157 ...
#$ NOT                         : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT                      : int  0 0 0 0 0 0 0 0 0 0 ...
#$ Handness                    : Factor w/ 2 levels "mixed","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Stand.Score                 : int  111 111 111 111 111 111 111 111 111 111 ...
dat <- dat2
save(dat, file='C://Users//Linda//Desktop//Rdocument//data//Exp1dat.rda')

load('C://Users//Linda//Desktop//Rdocument//data//Exp1dat.rda')

load('C://Users//Linda//Desktop//Rdocument//src//AttentionScores.rda')

##5. Merge all the data (i.e. AttentionScores, Proficiency, Memory and Selfpaced) together ##
scores <- scores[ ,-2]
scores$Subject <- as.factor(scores$Subject)
data <- merge(scores, dat, all=TRUE, by='Subject')
dim(data)
#[1] 9720   39
str(data)
#'data.frame':	9720 obs. of  39 variables:
#$ Subject                     : Factor w/ 54 levels "L2.1","L2.10",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ mean.score.dat.surv3        : num  0.0383 0.0383 0.0383 0.0383 0.0383 ...
#$ Percentile.Proficiency.Score: int  92 92 92 92 92 92 92 92 92 92 ...
#$ Session                     : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                         : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group                       : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Handedness                  : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                         : Factor w/ 3 levels "female","male",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Context                     : Factor w/ 3 levels "LDcontext","localcontext",..: 3 2 3 1 3 1 3 1 3 2 ...
#$ Verb.Type                   : Factor w/ 3 levels "v1","v2","v3": 3 1 3 3 2 3 3 2 3 2 ...
#$ Distance                    : Factor w/ 3 levels "3rd","LD","local": 2 3 1 2 2 2 1 2 2 2 ...
#$ Context.Sentence            : Factor w/ 180 levels "filler3rdbangzhu.bmp",..: 90 143 36 117 60 109 2 93 56 150 ...
#$ CS.RT                       : int  26617 5402 176 6049 10878 13877 7201 5259 5537 5148 ...
#$ CSTSwhole                   : Factor w/ 180 levels "filler3rdbangzhuwhole.bmp",..: 90 143 36 117 60 109 2 93 56 150 ...
#$ CSTSwhole.RT                : int  8828 14064 19125 17572 10267 21645 5349 19276 5810 51187 ...
#$ Question                    : Factor w/ 93 levels "bangzhuquestion.bmp",..: 60 8 50 75 26 67 14 3 22 63 ...
#$ CorrectAnswer               : int  1 2 2 1 1 1 2 1 1 1 ...
#$ Question.ACC                : int  1 1 0 1 1 0 0 1 1 0 ...
#$ Question.RT                 : int  2647 2800 1385 6171 2144 5480 3125 7112 1227 2658 ...
#$ Embedded.Verb               : Factor w/ 75 levels "bangzhu.bmp",..: 74 12 57 36 25 27 2 4 19 22 ...
#$ Embedded.Verb.RT            : int  147 190 156 162 485 778 976 487 671 722 ...
#$ Pronoun                     : Factor w/ 5 levels "ta.bmp","ta9.bmp",..: 1 3 1 3 1 3 1 3 1 3 ...
#$ Pronoun.RT                  : int  164 231 166 596 639 1257 523 991 486 416 ...
#$ Spillover1                  : Factor w/ 12 levels "dajia.bmp","dajia9.bmp",..: 1 1 1 1 1 1 1 1 7 1 ...
#$ Spillover1.RT               : int  208 180 191 183 553 1041 763 710 2289 540 ...
#$ Spillover2                  : Factor w/ 91 levels "bu.bmp","dou.bmp",..: 15 2 2 5 13 5 13 5 2 16 ...
#$ Spillover2.RT               : int  299 196 349 301 364 396 1051 305 430 428 ...
#$ Spillover3                  : Factor w/ 37 levels "chongchuqu.bmp",..: 24 21 32 8 7 4 1 15 32 2 ...
#$ Spillover3.RT               : int  348 459 451 399 235 1754 2064 364 374 536 ...
#$ Matrix.Subject              : Factor w/ 12 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT           : int  658 603 1113 481 475 581 554 468 599 527 ...
#$ Matrix.Verb                 : Factor w/ 18 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT              : int  203 292 161 158 450 283 561 277 348 345 ...
#$ Embedded.Subject            : Factor w/ 34 levels "lisi.bmp","chongchuqu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT         : int  153 188 157 278 301 191 637 454 510 322 ...
#$ NOT                         : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT                      : int  0 0 0 0 0 0 0 0 0 0 ...
#$ Handness                    : Factor w/ 2 levels "mixed","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Stand.Score                 : int  111 111 111 111 111 111 111 111 111 111 ...
save(data, file='C://Users//Linda//Desktop//Rdocument//data//data.rda')

load('C://Users//Linda//Desktop//Rdocument//data//data.rda')

names(data)[2] <- 'Attention'
names(data)[3] <- 'Proficiency'
names(data)[39] <-'Memory'

data$Attention <- as.numeric(as.character(data$Attention))

data$Proficiency <- as.integer(as.character(data$Proficiency))

data$Memory <- as.integer(as.character(data$Memory))

data$Group <- as.factor(data$Group)
levels(data$Group)
#[1] "1" "2"
levels(data$Group) <- c('L2','Native')
levels(data$Group)
#[1] "L2"     "Native"
data$Group <- relevel(data$Group,ref='Native')

data$Verb.Type <- as.factor(data$Verb.Type)
levels(data$Verb.Type)
#[1] "v1" "v2" "v3"
data$Verb.Type <- relevel(data$Verb.Type, ref='v3')

data$Context <- as.factor(data$Context)
levels(data$Context)
#[1] "LDcontext"    "localcontext" "ta"          
levels(data$Context) <- c('Long.dist','Local','Filler')
data$Context <- relevel(data$Context, ref='Local')

#dummy-coded#
data$Condition <- interaction(data$Context, data$Verb.Type)

data$CSTSwhole <- as.factor(data$CSTSwhole)

data$Handness <- as.factor(data$Handness)

## Log-transforming the reaction times
data$Embedded.Verb.LogRT <- log(data$Embedded.Verb.RT)
data$Pronoun.LogRT <- log(data$Pronoun.RT)
data$Spillover1.LogRT <- log(data$Spillover1.RT)
data$Spillover2.LogRT <- log(data$Spillover2.RT)
data$Spillover3.LogRT <- log(data$Spillover3.RT)
data$CSTSwhole.LogRT <- log(data$CSTSwhole.RT)

## calculate average reading time for filler items (reading time for whole test sentence) per participant, (to use as baseline reading time) ##
## Generating baseline RT for each participant ##
summation.variable <- data$Matrix.Subject.RT + data$Matrix.Verb.RT + data$Embedded.Subject.RT + data$Embedded.Verb.RT + data$NOT.RT + data$Pronoun.RT + data$Spillover1.RT + data$Spillover2.RT + data$Spillover3.RT
data$TestSentence.RT <- summation.variable
baselineRT <- aggregate(data [data$Context == 'Filler', 'TestSentence.RT'], by=list(data[data$Context == 'Filler',]$Subject),mean)
names(baselineRT)[1] <- 'Subject'
names(baselineRT)[2] <- 'Reading.baseline'

all <- merge(data, baselineRT, all=TRUE, by='Subject')
dim(all)
#[1] 9720   48

##6. Create a datsub of Exp1 critical data excluding filler items ##
subdat <- droplevels(all[all$Context != 'Filler',])
dim(subdat)
#[1] 4860   48
str(subdat)
#$ Subject            : Factor w/ 54 levels "L2.1","L2.10",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Attention          : num  0.0383 0.0383 0.0383 0.0383 0.0383 ...
#$ Proficiency        : int  92 92 92 92 92 92 92 92 92 92 ...
#$ Session            : int  1 1 1 1 1 1 1 1 1 1 ...
#$ Age                : int  23 23 23 23 23 23 23 23 23 23 ...
#$ Group              : Factor w/ 2 levels "Native","L2": 2 2 2 2 2 2 2 2 2 2 ...
#$ Handedness         : Factor w/ 2 levels "right","left": 1 1 1 1 1 1 1 1 1 1 ...
#$ Sex                : Factor w/ 2 levels "female","male": 1 1 1 1 1 1 1 1 1 1 ...
#$ Context            : Factor w/ 2 levels "Local","Long.dist": 1 2 2 2 1 1 1 1 1 2 ...
#$ Verb.Type          : Factor w/ 3 levels "v3","v1","v2": 2 1 1 3 3 1 2 3 1 2 ...
#$ Distance           : Factor w/ 2 levels "LD","local": 2 1 1 1 1 2 2 1 2 2 ...
#$ Context.Sentence   : Factor w/ 90 levels "LDbangzhu.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CS.RT              : int  5402 6049 13877 5259 5148 6591 5653 3593 3336 5798 ...
#$ CSTSwhole          : Factor w/ 90 levels "LDbangzhuwhole.bmp",..: 53 27 19 3 60 59 76 51 80 17 ...
#$ CSTSwhole.RT       : int  14064 17572 21645 19276 51187 4969 17937 18585 10845 24745 ...
#$ Question           : Factor w/ 45 levels "bangzhuquestion.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ CorrectAnswer      : int  2 1 1 1 1 2 2 1 2 2 ...
#$ Question.ACC       : int  1 1 0 1 0 1 0 0 0 0 ...
#$ Question.RT        : int  2800 6171 5480 7112 2658 1239 4601 2492 4807 3557 ...
#$ Embedded.Verb      : Factor w/ 46 levels "bangzhu.bmp",..: 8 27 19 3 15 14 31 6 35 17 ...
#$ Embedded.Verb.RT   : int  190 162 778 487 722 982 443 198 149 458 ...
#$ Pronoun            : Factor w/ 3 levels "ziji.bmp","ziji9.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Pronoun.RT         : int  231 596 1257 991 416 514 683 216 399 1007 ...
#$ Spillover1         : Factor w/ 4 levels "dajia.bmp","dajia9.bmp",..: 1 1 1 1 1 1 1 1 3 1 ...
#$ Spillover1.RT      : int  180 183 1041 710 540 1116 555 315 202 207 ...
#$ Spillover2         : Factor w/ 53 levels "bu.bmp","dou.bmp",..: 2 5 5 5 8 5 2 2 2 2 ...
#$ Spillover2.RT      : int  196 301 396 305 428 756 316 284 298 391 ...
#$ Spillover3         : Factor w/ 18 levels "dengdai.bmp",..: 11 4 2 8 1 3 11 11 14 11 ...
#$ Spillover3.RT      : int  459 399 1754 364 536 685 559 374 410 218 ...
#$ Matrix.Subject     : Factor w/ 4 levels "zhangsan.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Subject.RT  : int  603 481 581 468 527 560 341 227 390 626 ...
#$ Matrix.Verb        : Factor w/ 9 levels "rang.bmp","bu.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Matrix.Verb.RT     : int  292 158 283 277 345 341 220 249 199 370 ...
#$ Embedded.Subject   : Factor w/ 17 levels "lisi.bmp","dengdai.bmp",..: 1 1 1 1 1 1 1 1 1 1 ...
#$ Embedded.Subject.RT: int  188 278 191 454 322 308 516 170 143 292 ...
#$ NOT                : Factor w/ 1 level "buyao.bmp": 1 1 1 1 1 1 1 1 1 1 ...
#$ NOT.RT             : int  0 0 0 0 0 0 0 0 0 0 ...
#$ Handness           : Factor w/ 2 levels "mixed","right": 2 2 2 2 2 2 2 2 2 2 ...
#$ Memory             : int  111 111 111 111 111 111 111 111 111 111 ...
#$ Condition          : Factor w/ 6 levels "Local.v3","Long.dist.v3",..: 3 2 2 6 5 1 3 5 1 4 ...
#$ Embedded.Verb.LogRT: num  5.25 5.09 6.66 6.19 6.58 ...
#$ Pronoun.LogRT      : num  5.44 6.39 7.14 6.9 6.03 ...
#$ Spillover1.LogRT   : num  5.19 5.21 6.95 6.57 6.29 ...
#$ Spillover2.LogRT   : num  5.28 5.71 5.98 5.72 6.06 ...
#$ Spillover3.LogRT   : num  6.13 5.99 7.47 5.9 6.28 ...
#$ CSTSwhole.LogRT    : num  9.55 9.77 9.98 9.87 10.84 ...
#$ TestSentence.RT    : int  2339 2558 6281 4056 3836 5262 3633 2033 2190 3569 ...
#$ Reading.baseline   : num  4618 4618 4618 4618 4618 ...

subdat$Reading.baseline.LogRT <- log(subdat$Reading.baseline)

save(subdat, file='C://Users//Linda//Desktop//Rdocument//data//Exp1subdata.rda')

