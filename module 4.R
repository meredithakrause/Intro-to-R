percent<-function(a){
  a1<-sum(a)
  a2<-a/a1
  a3<-a2*100
  a4<-round(a3, 2)
  print(sort(a, decreasing = TRUE))
  sort(a4, decreasing = TRUE)
}
a<-c(515, 2457, 1456, 123, 57, 4862, 5862,542,98,47862,1235,1325,14,642)
percent(a)
