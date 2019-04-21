# Title     : TODO
# Objective : TODO
# Created by: karen
# Created on: 2019-04-21

#表作り

data1 <- c(1980,159635,164445,86515,71,802,5756,1803,NA)
data2 <- c(1982,160467,166028,67616,60,960,6641,1982,NA)
data3 <- c(1984,167702,173995,92653,74,1165,7482,2361,NA)
data4 <- c(1986,170396,177922,64991,53,1367,8362,2216,NA)
data5 <- c(1988,173579,181955,91595,70,1594,9280,2257,NA)
data6 <- c(1990,176629,186159,67859,47,1901,10239,2659,NA)
data7 <- c(1992,179656,190778,104405,75,2183,11447,2418,NA)
data8 <- c(1994,182623,195258,75106,56,2441,12497,2229,NA)
data9 <- c(1996,186347,200016,96263,73,2586,13601,2499,NA)
data10 <- c(1998,190420,205313,72537,52,2920,14988,2937,NA)
data11 <- c(2000,194331,210623,105375,73,3083,16218,2937,NA)
data12 <- c(2002,198382,215462,78382,62,3168,17237,3308,NA)
data13 <- c(2004,203483,220336,122295,77,3158,18068,3862,NA)
data14 <- c(2008,213314,230872,131304,78,3145,19392,4972,263)

combination <- rbind(data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14)
combination
variable <- c("year","VEP","VAP","total","ANES","felons","noncit","overseas","osvoters")
names(data1) <- variable

#選挙年齢人口＋在外有権者合計と投票号合計数の比較
VAP <- c(164445,166028,173995,177922,181955,186159,190778,195258,200016,205313,210623,215462,220336,230872)
overseas <- c(1803,1982,2361,2216,2257,2659,2418,2229,2499,2937,2937,3308,3862,4972)
american <- (VAP + overseas)
total <- c(86515,67616,92653,64991,91595,67859,104405,75106,96263,72537,105375,78382,122295,131304)
poll.rate1 <- (total / american)*100
poll.rate1

#有権者人口と投票合計数の比較　VEP投票率
VEP <- c(159635,160467,167702,170396,173579,176629,179656,182623,186347,190420,194331,198382,203483,213314)
poll.rate2 <- (total / VEP)*100
poll.rate2

#VAPと投票数合計
poll.rate3 <- (total / VAP)*100
poll.rate3

#VAPとANESの比較
ANES <- c(71,60,74,53,70,47,75,56,73,52,73,62,77,78)
ANES
fake <- (ANES - poll.rate3)
fake  ## VAPとANESの差の範囲は17-24%ほど変わってくる。

#VEPとANESの比較
fake2 <- (ANES - poll.rate2)
fake2 ## 8%から18%まで変わってくる

#大統領選挙の有権者人口における投票率
VEP.president <- VEP[c(1,3,5,7,9,11,13,14)]
total.president <- total[c(1,3,5,7,9,11,13,14)]
poll.president <- (total.president / VEP.president)*100
poll.president # 54.19551 55.24860 52.76848 58.11384 51.65793 54.22449 60.10084 61.55433

#予備選挙の有権者人口における投票率
VEP.primary <- VEP[c(2,4,6,8,10,12)]
total.primary <- total[c(2,4,6,8,10,12)]
poll.primary <- (total.primary / VEP.primary)*100
poll.primary #42.13701 38.14115 38.41895 41.12625 38.09316 39.51064

#大統領選挙においてANESとの比較
ANES.president <- ANES[c(1,3,5,7,9,11,13,14)]
compare.ANES.president <- (ANES.president - poll.president)
compare.ANES.president # 16.80449 18.75140 17.23152 16.88616 21.34207 18.77551 16.89916 16.44567

#予備選挙においてANESとの比較
ANES.primary <- ANES[c(2,4,6,8,10,12)]
compare.ANES.primary <- (ANES.primary - poll.primary)
compare.ANES.primary #17.862987 14.858846  8.581054 14.873745 13.906838 22.489359


