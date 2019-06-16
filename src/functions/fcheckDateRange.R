source(here::here("src/functions/fcreateReportLink.R"))
checkDateRange = function(start, end)
{
  australia=read.csv("C:/Users/Szymon/Desktop/RR_zaj/projekt/australia_1317.csv",header=TRUE,sep=';')
  usa=read.csv("C:/Users/Szymon/Desktop/RR_zaj/projekt/usa_1317.csv",header=TRUE,sep=';')
  result <- ""
  
  if (missing(start) | missing(end))
  {
    result <- "Wprowadz dwie daty"
  }
  
  else
  {
    if (start %in% unique(australia$Year) & start %in% unique(usa$Year) & end %in% unique(australia$Year) & end %in% unique(usa$Year))
    {
      if (end >= start)
      {
        result <- paste("<html><body>Display <a href=\"",createReportLink(start, end),"\" >report</a></body></html>", sep = "")
      }
      else
      {
        result <- "<html><body>Wrong date range. The ending date must be greater than or equal to the starting date.</body></html>"
      }
    }
    
    else
    {
        result <- "<html><body>There is no such a date range in dataset. Choose year from range: 2013-2017.</body></html>"
      
    }
  }
  
  
  return(result)
}
