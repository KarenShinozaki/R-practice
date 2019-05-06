sweden <- read.csv("sweden.csv")
keny <- read.csv("kenya.csv")
world <- read.csv("world.csv")

#sweden
sweden$period == "1950-1955"
sweden.first <- sweden[c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE),]
sweden.first$py.men
sweden.first$py.women
swe.py.first <- sum(sweden.first$py.women + sweden.first$py.men)*1000
swe.py.first
swe.first.births <- sweden.first$births*1000
swe.first.cbr <- sum(swe.first.births / swe.py.first)
swe.first.cbr
sweden$period == "2005-2010"
sweden.last.data  <- sweden[c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE),]
sweden.last.data$py.men
sweden.last.data$py.women
swe.py.last <- sum(sweden.last.data$py.men+sweden.last.data$py.women)*1000
swe.births.last <- sweden.last.data$births*1000
swe.last.cbr <- sum(swe.births.last / swe.py.last)
swe.last.cbr

#kenya
keny$period == "1950-1955"
keny.first.data <- keny[c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE),]
keny.first.data$py.men
keny.first.data$py.women
keny.py.first <- sum(keny.first.data$py.men+keny.first.data$py.women)*1000
keny.py.first
keny.births.first <- keny.first.data$births*1000
keny.first.cbr <- sum(keny.births.first / keny.py.first)
keny.first.cbr
keny$period == "2005-2010"
keny.last.data  <- keny[c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE),]
keny.last.data$py.men
keny.last.data$py.women
keny.py.last <- sum(keny.last.data$py.men + keny.last.data$py.women)*1000
keny.births.last <- keny.last.data$births*1000
keny.last.cbr <- sum(keny.births.last / keny.py.last)
keny.last.cbr


#world
world$period == "1950-1955"
world.first.data <- world[c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE),]
world.first.data$py.men
world.first.data$py.women
world.py.first <- sum(world.first.data$py.men+world.first.data$py.women)*1000
world.py.first
world.births.first <- world.first.data$births*1000
world.first.cbr <- sum(world.births.first / world.py.first)
world.first.cbr
world$period == "2005-2010"
world.data.last  <- world[c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE),]
world.data.last$py.men
world.data.last$py.women
world.py.last <- sum(world.data.last$py.men+world.data.last$py.women)*1000
world.py.last
world.births.last <- world.data.last$births
world.last.cbr <- sum(world.births.last / world.py.last)
world.last.cbr

#問題２

#kenya
keny = read.csv("kenya.csv")
keny$age
keny$age[c(1,2,3,4,5,6,7,8,9,10)]
keny.data.first <- keny[c(1,2,3,4,5,6,7,8,9,10),]
keny.data.first$births
keny.first.births <- (keny.data.first$births)*1000
keny.first.births

keny.first.py.women <- (keny.data.first$py.women)*1000
keny.first.py.women

ASFR.keny <- keny.first.births / keny.first.py.women
column1 <- keny$age[c(1,2,3,4,5,6,7,8,9,10)]
names(ASFR.keny) <- column1
ASFR.keny


#sweden
sweden = read.csv("sweden.csv")
sweden$age
sweden$age[c(1,2,3,4,5,6,7,8,9,10)]
sweden.data.first <- sweden[c(1,2,3,4,5,6,7,8,9,10),]
sweden.data.first$births
sweden.first.births <- (sweden.data.first$births)*1000
sweden.first.births

sweden.first.py.women <- (sweden.data.first$py.women)*1000
sweden.first.py.women


ASFR.sweden <- sweden.first.births / sweden.first.py.women
column2 <- sweden$age[c(1,2,3,4,5,6,7,8,9,10)]
names(ASFR.sweden) <- column2
ASFR.sweden


#world
world = read.csv("world.csv")
world$age
world$age[c(1,2,3,4,5,6,7,8,9,10)]
world.data.first <- world[c(1,2,3,4,5,6,7,8,9,10),]
world.data.first$births
world.first.births <- (world.data.first$births)*1000
world.first.births

world.first.py.women <- (world.data.first$py.women)*1000
world.first.py.women


ASFR.world <- world.first.births / world.first.py.women
column3 <- world$age[c(1,2,3,4,5,6,7,8,9,10)]
names(ASFR.world) <- column3
ASFR.world


#問題3
#kenya
keny.tfr <- ASFR.keny*5
keny.tfr
sweden.tfr <-ASFR.sweden*5
sweden.tfr
world.tfr <- ASFR.world*5
world.tfr

#問題4


#ケニア
keny$period
keny$period == "1950-1955"
keny.first2.data <- keny[c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE),]
keny.deaths.first <- keny.first2.data$deaths
k.d.f<- sum(keny.deaths.first)*1000

#スウェーデン
sweden$period == "1950-1955"
sweden.first2.data <- sweden[c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE),]

sweden.first2.data$deaths
sweden.first2.data$deaths
sweden.deaths.first <- sweden.first2.data$deaths
s.d.f<- sum(sweden.deaths.first)*1000

#世界
world$period == "1950-1955"
world.first2.data <- world[c(TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE),]
world.first2.data$deaths
world.deaths.first <- world.first2.data$deaths
w.d.f<- sum(world.deaths.first)*1000


#ケニア
keny$period == "2005-2010"
keny.last.data <- keny[c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE),]

keny.last.data$deaths
keny.deaths.last <- keny.last.data$deaths
k.d.l<- sum(keny.deaths.last)*1000

#スウェーデン
sweden$period == "2005-2010"
sweden.data.last  <- sweden[c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE),]
sweden.data.last
sweden.deaths.last<- sweden.data.last$deaths
s.d.l<- sum(sweden.deaths.last)*1000

#世界全体
world$period =="2005-2010"
world.data.last <- world[c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE),]
world.deaths.last <- world.data.last$deaths
w.d.l<- sum(world.deaths.last)*1000


#続いて、２つのベクトルにする作業を行う

#ケニア

first.deaths.keny <- sum(keny.deaths.first)*1000
last.deaths.keny <- sum(keny.deaths.last)*1000
keny.deaths <- c(first.deaths.keny,last.deaths.keny)
keny.deaths


#スウェーデン
sum(sweden.deaths.first)*1000
sum(sweden.deaths.last)*1000
first.deaths.sweden <- sum(sweden.deaths.first)*1000
last.deaths.sweden <- sum(sweden.deaths.last)*1000
sweden.deaths <- c(first.deaths.sweden,last.deaths.sweden)
sweden.deaths

#世界
first.deaths.world <- sum(world.deaths.first)*1000
last.deaths.world <- sum(world.deaths.last)*1000
world.deaths <- c(first.deaths.world,last.deaths.world)
world.deaths

#ケニア
keny.women.first<- sum(keny.data.first$py.women)*1000
keny.men.first <- sum(keny.data.first$py.men)*1000
keny.py.first.w <- sum(keny.women.first,keny.men.first)

#[1] 27984774     #1950-55年の男女の観察人年数
keny.data.last<- keny.last.data
keny.women.last<- sum(keny.data.last$py.women)*1000
keny.men.last <- sum(keny.data.last$py.men)*1000
keny.py.last.w <- sum(keny.women.last,keny.men.last)
#[1] 188893531   #2005-2010年の男女の観察人年数

#スウェーデン
sweden.women.first<- sum(sweden.data.first$py.women)*1000
sweden.men.first <- sum(sweden.data.first$py.men)*1000
sweden.py.first.w <- sum(sweden.women.first,sweden.men.first)
#[1] 25981066     #1950-55年の男女の観察人年数

sweden.women.last<- sum(sweden.data.last$py.women)*1000
sweden.men.last <- sum(sweden.data.last$py.men)*1000
sweden.py.last.w <- sum(sweden.women.last,sweden.men.last)
#[1] 45823851         #2005-2010年の男女の観察人年数


#世界全体
world.women.first<- sum(world.data.first$py.women)*1000
world.men.first <- sum(world.data.first$py.men)*1000
world.py.first.w <- sum(world.women.first,world.men.first)
#[1] 11039629381      #1950-55年の男女の観察人年数


world.women.last<- sum(world.data.last$py.women)*1000
world.men.last <- sum(world.data.last$py.men)*1000
world.men.last <- sum(world.data.last$py.men)*1000
world.py.last.w <- sum(world.women.last,world.men.last)
#[1] 33368799680         #2005-2010年の男女の観察人年数

#CDR = 死亡者数 / 観察人年数

#ケニアの1950-55年のCDR

k.d.f / keny.py.first.w

#スウェーデンの1950-55年のCDR
s.d.f / sweden.py.first.w

#世界全体の1950-55年のCDR
w.d.f / world.py.first.w

#ケニアの2005-10年のCDR

k.d.l / keny.py.last.w

#スウェーデンの2005-10年のCDR
s.d.l / sweden.py.last.w

#世界全体の2005-10年のCDR
w.d.l / world.py.last.w

sw1 <-  (sweden.data.last$py.women)*1000
sw2 <-  (sweden.data.last$py.men)*1000
sw3 <- sw1+sw2


kn1<-  (keny.data.last$py.men)*1000
kn2 <- (keny.data.last$py.women)*1000
kn3 <- kn1+kn2

sw4 <- sweden.deaths.last*1000
kn4 <-keny.last.data$deaths*1000

#ケニアのASDR
kn4 / kn3

#スウェーデンのASDR
sw4 / sw3

#問題6　スウェーデンの人口分布から、反事実的なケニアのCDRを計算する

##半事実的なCDR = ASDR(x) * P(y)

kn.asdr <- kn4/kn3
sw.pop <- sum(sw3)
sw.pop
sw.per <- sw3 / sw.pop
sum(sw.per * kn.asdr)
