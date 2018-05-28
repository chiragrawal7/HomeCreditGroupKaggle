

#Doing a initial highlevel test by using the available train data
str(application_train)

#Creating train data & test data from application_train

application_train[,2]<-as.factor(application_train[,2])

dt_train<-sort(sample(nrow(application_train),nrow(application_train)*.7))
dt_test<-application_train[-dt_train,]

rf1<-randomForest(data=dt_train,TARGET~,ntree=200)
?randomForest









