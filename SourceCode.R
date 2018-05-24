

#Installing the required packages
list.of.packages<-c("randomForest")
new.packages<-list.of.packages[!(list.of.packages %in% install.packages()[,"Package"])]
if(length(new.packages)) installed.packages(new.packages)
   

#Calling up the libraries
require(randomForest)


#Reading the data

application_train<-read.csv("./data/application_train.csv")
POS_CASH_balance<-read.csv("./data/POS_CASH_balance.csv")
bureau_balance<-read.csv("./data/bureau_balance.csv")
previoius_application<-read.csv("./data/previous_application.csv")
installment_payments<-read.csv("./data/installments_payments.csv")
credit_card_balance<-read.csv("./data/credit_card_balance.csv")
bureau<-read.csv("./data/bureau.csv")
application_test<-read.csv("./data/application_test.csv")

#Checking data for missing values
df.naCount<-data.frame(sno=numeric(),dataset=character(),columnName=character(),nacount=numeric(),stringsAsFactors = F)
# 
# fx.nacount<-function(df.dataset,dataset.name){
#   x<-colSums(is.na(df.dataset))  
#   df.naCountTemp<-data.frame(sno=numeric(),dataset=character(),columnName=character(),nacount=numeric(),stringsAsFactors = F)
#   df.naCountTemp[sno]<-(nrow(df.naCount)+1):(nrow(df.naCount)+nrow(x))
#   df.naCountTemp[dataset]<-dataset.name
#   df.naCountTemp[columnName]<-x[1]
#   df.naCountTemp[nacount]<-x[2]
#   View(df.naCountTemp)
#   
# }
# 
# fx.nacount(application_train,"application_train")
# x<-colSums(is.na(application_train))  
# df.naCountTemp[sno]<-(nrow(df.naCount)+1):(nrow(df.naCount)+nrow(x))
# df.naCountTemp[dataset]<-dataset.name
# df.naCountTemp[columnName]<-x[1]
# df.naCountTemp[nacount]<-x[2]
# View(df.naCountTemp)


