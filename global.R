
# This is the global file of the project and shall have the following:
  # 1) Data sets loaded from the source files
  # 2) All package installations
  # 3) All Functions


#Installing the required packages
list.of.packages<-c("randomForest","RCurl","jsonlite","DataExplorer","dplyr")
new.packages<-list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


library(randomForest)
library(DataExplorer)

#Reading the data
application_train<-read.csv("./data/application_train.csv")
POS_CASH_balance<-read.csv("./data/POS_CASH_balance.csv")
bureau_balance<-read.csv("./data/bureau_balance.csv")
previoius_application<-read.csv("./data/previous_application.csv")
installment_payments<-read.csv("./data/installments_payments.csv")
credit_card_balance<-read.csv("./data/credit_card_balance.csv")
bureau<-read.csv("./data/bureau.csv")
application_test<-read.csv("./data/application_test.csv")