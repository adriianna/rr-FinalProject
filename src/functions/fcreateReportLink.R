createReportLink = function(start, end)
{
  result <- paste("http://localhost:8901/markdown?end=",end,"&start=",start, sep = "")
  return(result)
}