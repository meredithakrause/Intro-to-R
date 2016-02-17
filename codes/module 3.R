Name<-c("Bob","Bill","Betty")
Test1<-c(80,95,92)
Test2<-c(40,87,90)
grades<-cbind(Name,Test1,Test2)
grades
grades.df<-data.frame(Name,Test1,Test2)
grades.df
apply(grades.df[,2:3],2,mean)
C.df<-data.frame(a,b,c,d)
a<-c(1,2,3)
b<-c(10,20,30)
c<-c(100,200,300)
d<-c(1000,2000,3000)
C.df<-data.frame(a,b,c,d)
C.df
B<-matrix(1:12,nrow=4)
as.matrix(C.df)%*%B
C<-as.matrix(C.df)
C
mean(C)
apply(as.data.frame(C),2,mean)
Name<-c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie")
ABC_poll<-c(4,62,51,21,2,14,15)
NBC_poll<-c(12,75,43,19,1,21,19)
Political_Poll_Results<-cbind(Name, ABC_poll, NBC_poll)
Political_Poll_Results.df<-data.frame(Name, ABC_poll, NBC_poll)
apply(Political_Poll_Results.df[,2:3],2,mean)
Political_Poll_Results.m<-as.matrix(Political_Poll_Results.df)
Political_Poll_Results.m2<-Political_Poll_Results.m[,2:3]
Political_Poll_Results.df2<- Political_Poll_Results.df[,2:3]
rowMeans(Political_Poll_Results.df2)
mean_poll <- rowMeans(Political_Poll_Results.df2)
mean_poll.m<-as.matrix(mean_poll, ncol=1)
average_poll<-mean_poll.m
Average_Poll_Results<-cbind(Name, average_poll)
Average_Poll_Results.df<-data.frame(Name, average_poll)
average_poll_percent<-(average_poll/sum(average_poll))*100
Average_Poll_Percentages<-cbind(Name,average_poll_percent)
round(average_poll_percent,digits=3)
average_poll_percent<-round(average_poll_percent,digits=3)
Average_Poll_Percentages<-cbind(Name, average_poll_percent)
Average_Poll_Percentages.df<-data.frame(Name, average_poll_percent)
Average_Poll_Percentages.df
Party<-c("Rep","Rep","Rep","Rep","Rep","Dem","Dem")
Average_Poll_Results.df2<-data.frame(Name, average_poll,Party)
Percentage_Poll_Results<-Political_Poll_Results.df2/colSums(Political_Poll_Results.df2)*100
Percentage_Poll_Results<-round(Percentage_Poll_Results, digits=3)
Percentage_Poll_Results.df<-data.frame(Name, Percentage_Poll_Results)
Percentage_Poll_Results.df
ggplot(data=Average_Poll_Percentages.df, aes(x=Name, y=average_poll_percent, fill=Party))+ geom_bar(stat="identity") + scale_fill_manual(values=c("#0101DF", "#DF0101"))
Candidate<-c("Jeb","Jeb","Donald","Donald","Ted","Ted","Marco","Marco","Carly","Carly","Hillary","Hillary","Bernie","Bernie")
Result<-c(4,12,62,75,51,43,21,19,2,1,14,21,15,19)
Network<-c("ABC","NBC","ABC","NBC","ABC","NBC","ABC","NBC","ABC","NBC","ABC","NBC","ABC","NBC")
Candidate_Poll_Results.df<-data.frame(Candidate,Network,Result)
ggplot(data=Candidate_Poll_Results.df, aes(x=Candidate, y=Result, fill=Network))+geom_bar(stat="identity", position=position_dodge(), colour="black")+scale_fill_manual(values=c("#FFFF00", "#0B610B"))
