# define all necessary functions and libs

#set global options
#rm(list = ls())
options(scipen = 999)
Sys.setlocale("LC_TIME", "C")
options("getSymbols.yahoo.warning"=FALSE)

#include all neccessary packages
source(here::here("check_includes.R"))

#include all neccessary functions
sources <- list.files(path = here::here("src/functions"), 
                      pattern="f*.R$", full.names=TRUE,
                      ignore.case=TRUE)
sapply(sources, source, echo=FALSE )
rm(sources)