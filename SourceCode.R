
#Installing the required packages
list.of.packages<-c("randomForest","RCurl","jsonlite")
new.packages<-list.of.packages[!(list.of.packages %in% install.packages()[,"Package"])]
if(length(new.packages)) installed.packages(new.packages)
   
# Now we download, install and initialize the H2O package for R.
install.packages("h2o", type="source", repos="http://h2o-release.s3.amazonaws.com/h2o/rel-wolpert/11/R")

#Calling up the libraries
require(randomForest)
library(h2o)
h2o.init()

set.seed(1234)

h2o

#Reading the data

application_train<-read.csv("./data/application_train.csv")
POS_CASH_balance<-read.csv("./data/POS_CASH_balance.csv")
bureau_balance<-read.csv("./data/bureau_balance.csv")
previoius_application<-read.csv("./data/previous_application.csv")
installment_payments<-read.csv("./data/installments_payments.csv")
credit_card_balance<-read.csv("./data/credit_card_balance.csv")
bureau<-read.csv("./data/bureau.csv")
application_test<-read.csv("./data/application_test.csv")

#Doing a initial highlevel test by using the available train data
str(application_train)

#Creating train data & test data from application_train

application_train[,2]<-as.factor(application_train[,2])

dt_train<-sort(sample(nrow(application_train),nrow(application_train)*.7))
dt_test<-application_train[-dt_train,]

rf1<-randomForest(data=dt_train,TARGET~,ntree=200)
?randomForest









