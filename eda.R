
# Extensive EDA Script - In this script, I would just try to perform extensive EDA of 
#                         data sets




#Capturing the name of all the data frames loaded here
data.list<-ls()[sapply(ls(), function(x) class(get(x)))== "data.frame"]

#Looping each file and creating a data frame that contains the following information for each column of data sets
  # Column Name
  # Number of observations
  # Count of Missing Values
  # % of missing values
  # structure/type of column


x<-colnames(application_test$get(1),do.NULL = T,prefix = "col")
y<-sum(is.na(application_test$get(1)))
  
df.eda<-data.frame(dataset=character(),                          #Name of the dataset
                   columnName=character(),                       #Column Name
                   NumberObs=numeric(),                          #No of observation in data sets
                   MissingVal=numeric(),                         #Number of missing values in the column
                   Perctmissing=numeric(),                       # % of missing values
                   ColClass=character(),                         # Data type of column
                   IsFactor=logical(),                           # Is it a factor or not
                stringsAsFactors = F)

?get

#?eapply

initial.eda<-function(df){
  for(i in ncol(df)){
      dfname<-deparse(substitute(df))
      dfObs<-nrow(df)
      dfcol<-colnames(df[i],do.NULL = T,prefix = "col")
      dfna<-sum(is.na(df[,i]))  
      
    df.eda[nrow(df.eda)+1,]<-list(dfname,dfcol,dfObs,dfna,dfna/dfObs,class(df) )  
    
  }
}


