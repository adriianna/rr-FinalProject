source(here::here("src/include_functions.R"))

australia1=read.csv(here::here("australia_1317.csv"),header=TRUE,sep=';')
usa1=read.csv(here::here("usa_1317.csv"),header=TRUE,sep=';')

australia = australia1[which(australia1$Year == minyear | australia1$Year == maxyear),]
usa = usa1[which(usa1$Year == minyear | usa1$Year == maxyear),]

total_australia=sortTotal(australia)
holiday_australia=sortTravelPurpose(australia,"Holiday")
friends_australia=sortTravelPurpose(australia,"Visiting friends & relatives")
business_australia=sortTravelPurpose(australia,c("Business","Conferences & conventions"))
total_usa=sortTotal(usa)
holiday_usa=sortTravelPurpose(usa,"Holiday")
friends_usa=sortTravelPurpose(usa,"Visiting friends & relatives")
business_usa=sortTravelPurpose(usa,c("Business","Conferences & conventions"))
