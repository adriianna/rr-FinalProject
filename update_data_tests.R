source(here::here("src/include_functions.R"))

australia=read.csv(here::here("australia_1317.csv"),header=TRUE,sep=';')
usa=read.csv(here::here("usa_1317.csv"),header=TRUE,sep=';')


total_australia=sortTotal(australia)
holiday_australia=sortTravelPurpose(australia,"Holiday")
friends_australia=sortTravelPurpose(australia,"Visiting friends & relatives")
business_australia=sortTravelPurpose(australia,c("Business","Conferences & conventions"))
total_usa=sortTotal(usa)
holiday_usa=sortTravelPurpose(usa,"Holiday")
friends_usa=sortTravelPurpose(usa,"Visiting friends & relatives")
business_usa=sortTravelPurpose(usa,c("Business","Conferences & conventions"))
