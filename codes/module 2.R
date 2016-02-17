acs$age_husband
acs[1,3]
a<-subset(acs, age_husband > age_wife)
mean(acs$age_husband)
median(acs$age_husband)
quantile(acs$age_wife)
var(acs$age_wife)
sd(acs$age_wife)
summary(acs)
s<-acs[1:100,]
plot(x=s$age_husband, y = s$age_wife, type='p')
hist(acs$number_children)
counts<-table(acs$bedrooms)
barplot(counts, main="Bedrooms Distribution", xlab="Number of Bedrooms")
