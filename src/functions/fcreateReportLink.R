createReportLink = function(start, end)
{
  result <- paste("http://3.83.41.109:8901/markdown?end=",end,"&start=",start, sep = "")
  return(result)
}