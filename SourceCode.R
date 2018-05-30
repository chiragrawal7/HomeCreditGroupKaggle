

#Doing a initial highlevel test by using the available train data
str(application_train)

#Creating train data & test data from application_train

application_train[,2]<-as.factor(application_train[,2])

dt<-sort(sample(nrow(application_train),nrow(application_train)*.7))

dt_train<-application_train[dt,]
dt_test<-application_train[-dt,]

rf1<-randomForest(TARGET~.,data=dt_train,ntree=200 )

?randomForest


View(dt_test)
