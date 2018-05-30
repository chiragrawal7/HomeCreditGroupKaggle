
# Extensive EDA Script - In this script, I would just try to perform extensive EDA of 
#                         data sets. The eda includes the following:

#1 Variable Identification
#2 Univariate Analysis
#3 Bi-variate Analysis
#4 Missing values treatment
#5 Outlier treatment
#6 Variable transformation
#7 Variable creation



#Capturing the name of all the data frames loaded here
data.list<-ls()[sapply(ls(), function(x) class(get(x)))== "data.frame"]

#Looping each file and creating a data frame that contains the following information for each column of data sets
  # Column Name
  # Number of observations
  # Count of Missing Values
  # % of missing values
  # structure/type of column


df.eda<-data.frame(dataset=character(),                          #Name of the dataset
                   columnName=character(),                       #Column Name
                   NumberObs=numeric(),                          #No of observation in data sets
                   MissingVal=numeric(),                         #Number of missing values in the column
                   Perctmissing=numeric(),                       # % of missing values
                   ColClass=character(),                         # Data type of column
                   IsFactor=logical(),                           # Is it a factor or not
                stringsAsFactors = F)

df.eda.temp<-df.eda

initial.eda<-function(df,dfname){
for(i in 1:ncol(df)){
    
    df.eda.temp[nrow(df.eda.temp)+1,]<-list(
                                  dfname,
                                  colnames(df[i],do.NULL = T,prefix = "col"),
                                  nrow(df),
                                  sum(is.na(df[,i])),
                                  round((sum(is.na(df[,i]))/nrow(df))*100,digits=0),
                                  class(df[,i]),
                                  is.factor(df[,i]) 
                                  )

}
    print(deparse(substitute(df)))
    df.eda<<-rbind(df.eda,df.eda.temp)
    df.eda.temp<-NULL
  
}


for(j in 1:length(data.list)){
    initial.eda(get(data.list[j]),data.list[j])  
}



sessionInfo()
