PeriodCycles= function (data_set,r_names){
  tab=as.data.frame(matrix(ncol = 5, nrow = 0))
  
  for (i in 1:length(data_set)){
    n = length(log(data_set[[i]]$Visitors))
    Per = Mod(fft(log(data_set[[i]]$Visitors)-mean(log(data_set[[i]]$Visitors))))^2/n
    Freq = (1:n -1)/n
    u = which.max(Per[1:50])
    v = which.max(Per[1:50][-u])
    first_freq=round(Freq[u],3)
    second_freq=round(Freq[v],3)
    first_cycle=round(1/Freq[u],0) 
    second_cycle=round(1/Freq[v],0)
    tab_row=c(r_names[i],first_freq,first_cycle,second_freq,second_cycle)
    tab[i,]=tab_row
  }
  
  colnames(tab)=c("Travel purpose","#1 Freq","#1 Cycle","#2 Freq","#2 Cycle")
  return(tab)
}
