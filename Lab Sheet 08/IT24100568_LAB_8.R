setwd("C:\\Users\\levin\\Desktop\\SLIIT\\2nd\\1 sem\\PS\\LAB\\IT24100568_Lab_08")
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

#1

population_mean<-mean(Weight)
pop_var<-var(Weight)
population_sd<-sqrt(pop_var)


#2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight,5,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
s.mean<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)
s.sd<-sqrt(s.vars)


#3
mean_sample_means <- mean(s.mean)
sd_sample_means   <- sqrt(s.mean)


