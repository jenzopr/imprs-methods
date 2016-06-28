library(reshape2)
library(dplyr)

messy = read.table("common-mice-strains.txt", skip = 2, header=F, sep="\t")
colnames(messy) = c("strain","sex","avg-21","range-21","avg-42","range-42","avg-56","range-56","avg-84","range-84")

messy$strain[seq(from = 2, to = nrow(messy), by=2)] = messy$strain[seq(from = 1, to = nrow(messy), by=2)]

messy %>%
  melt(id.vars = c("strain","sex")) %>%
  bind_cols(colsplit(.$variable, "\\-", c("variable2","age"))) %>%
  select(-variable) %>%
  dcast(strain + sex + age ~ variable2) %>%
  bind_cols(colsplit(.$range, "\\-", c("min","max"))) %>%
  select(-range) -> tidy

write.table(tidy, file="common-mice-strains-tidy.txt", quote = F, sep = "\t", row.names = F, col.names = T)
  

