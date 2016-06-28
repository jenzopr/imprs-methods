library(tidyr)
set.seed(20160629)

condition = c("wt","mut")
wheel = c("treadmill","wheel")
base.wheel = 10000
base.mill = 30
N = 30

data.gen <- function(n, B) {
  fact.1 = rbinom(n, 1, 12/30)
  mouse = seq(1, 30, 1)
  
  run.wheel = rnorm(n, base.wheel, 1000)
  error.wheel = rnorm(n, 0, 500)
  run.mill = rnorm(n, base.mill, 3)
  error.mill = rnorm(n, 0, 1)
  
  effect.wheel = rnorm(n, -2000, 50)
  effect.mill = rnorm(n, -6, 0.1)
  
  rounds = run.wheel + error.wheel + fact.1*effect.wheel
  mins = run.mill + error.mill + fact.1*effect.mill
  
  return(data.frame(condition = fact.1, mouse = mouse, wheel = rounds, mill = mins))
  
}

data = data.gen(N,1)

data$condition = ifelse(data$condition, "mut","wt")
messy = spread(unite(data, col=result, wheel, mill, sep="|"), key=condition, value=result, fill=0)

write.table(messy, file="D:/Projects/imprs-methods/mouse-running.csv", row.names = F, col.names = T, quote=F, sep=",")

