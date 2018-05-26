

#Installing the required packages
list.of.packages<-c("randomForest","caTools")
new.packages<-list.of.packages[!(list.of.packages %in% install.packages()[,"Package"])]
if(length(new.packages)) installed.packages(new.packages)
   
install.packages("caTools")
#Calling up the libraries
require(randomForest)
require(caTools)

# 'seting seed'
set.seed(123)

#Reading the data

application_train<-read.csv("./data/application_train.csv")
POS_CASH_balance<-read.csv("./data/POS_CASH_balance.csv")
bureau_balance<-read.csv("./data/bureau_balance.csv")
previoius_application<-read.csv("./data/previous_application.csv")
installment_payments<-read.csv("./data/installments_payments.csv")
credit_card_balance<-read.csv("./data/credit_card_balance.csv")
bureau<-read.csv("./data/bureau.csv")
application_test<-read.csv("./data/application_test.csv")


#Data Exploration

# Doing a sample test using the provided train data -----------------------

#1) Train Dataset : application_train

View(application_train)

str(application_train)

  



















