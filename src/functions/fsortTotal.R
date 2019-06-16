sortTotal=function(data_set){
  years=sort(unique(data_set$Year))
  table= as.data.frame(matrix(ncol = 3, nrow = 0))
  r=1
  for (i in 1:length(years)){
    for(j in 1:12){
      temp=data_set[which(data_set$Month==j & data_set$Year==years[i]),]
      if(nrow(temp)!=0){
        sum=0
        sum=sum(temp$Visitors)
        # v=c(j,i,sum)
        table[r,]=c(j,years[i],sum)
        r=r+1
      }
    }
    
  }
  
  r=1
  for (n in 1:nrow(table)){
    if (table[n,1]<10){
      table[r,4]=format(as.Date(paste("01","-","0",table[n,1],"-",table[n,2],sep=""),"%d-%m-%Y"))
    }
    else{
      table[r,4]=format(as.Date(paste("01","-",table[n,1],"-",table[n,2],sep=""),"%d-%m-%Y"))
      
    }
    r=r+1
  }
  
  colnames(table)=c("Month","Year","Visitors","Dt")
  return(table)
}