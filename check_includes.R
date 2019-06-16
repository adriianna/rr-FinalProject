#include all neccessary packages
source(here::here("pkgs.R"))
missing_pkgs <- pkgs[!(pkgs %in% installed.packages()[,"Package"])]
if(length(missing_pkgs) > 0) install.packages(missing_pkgs)
sapply(pkgs, require, character.only = T)
rm(pkgs, missing_pkgs)
