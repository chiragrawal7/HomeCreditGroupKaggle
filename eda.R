
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


df.eda<-data.frame(dataset=character(),                          #Name of the dataset
                   columnName=character(),                       #Column Name
                   NumberObs=numeric(),                          #No of observation in data sets
                   MissingVal=numeric(),                         #Number of missing values in the column
                   Perctmissing=numeric(),                       # % of missing values
                   ColClass=character(),                         # Data type of column
                   IsFactor=logical(),                           # Is it a factor or not
                stringsAsFactors = F)

initial.eda<-function(df){
  for(i in 1:ncol(df)){
      
      df.eda[nrow(df.eda)+1,]<-list(
                                    deparse(substitute(df)),
                                    colnames(df[i],do.NULL = T,prefix = "col"),
                                    nrow(df),
                                    sum(is.na(df[,i])),
                                    (sum(is.na(df[,i]))/nrow(df))*100,
                                    class(df[,i]),
                                    is.factor(df[,i]) 
                                    )

  }
  View(df.eda)
}


for(j in 1:length(data.list)){
    initial.eda(get(data.list[j]))  
}

View(df.eda)

initial.eda(application_train)

?similar
