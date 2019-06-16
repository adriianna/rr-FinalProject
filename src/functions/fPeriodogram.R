fPeriodogram= function(data_set,p_title){
n = length(log(data_set$Visitors))
Per = Mod(fft(log(data_set$Visitors)-mean(log(data_set$Visitors))))^2/n
Freq = (1:n -1)/n
plot(Freq[1:50], Per[1:50], type='h', lwd=3, ylab="Periodogram",xlab="Frequency", main=p_title)
}