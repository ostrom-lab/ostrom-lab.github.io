librarian::shelf(tidyverse,readxl,pubmedR,bibliometrix,stringr )

base.location <- dirname(rstudioapi::getSourceEditorContext()$path)
setwd(base.location)
setwd("..")

if (Sys.info()['sysname']=="Windows"){ 
  source("C:\\Users\\qo\\OneDrive - Duke University\\Ongoing_Projects\\CV/CV_files/CV_scripts.R")
  data <- readxl::read_excel("C:\\Users\\qo\\OneDrive - Duke University\\Ongoing_Projects/CV/CV_files/Publications.xlsx",sheet="PeerReviewed") 
} else {
  source("/Users/quinn/Library/CloudStorage/OneDrive-DukeUniversity/Ongoing_Projects/CV/CV_files/CV_scripts.R")
  data <- readxl::read_excel("/Users/quinn/Library/CloudStorage/OneDrive-DukeUniversity/Ongoing_Projects/CV/CV_files/Publications.xlsx",sheet="PeerReviewed") 
}

peerreview <- data %>%
  CleanPubs() %>%
  mutate(First.author = case_when(str_count(Authors, ',')>2 ~ gsub(",.*",", et al.",Authors),
                                 TRUE~ Authors) %>% gsub("\\*","",.)) %>%
  filter((!is.na(Create.Date) | !is.na(Publication.Year2) | !is.na(DOI)) & include_website ==1) %>%
  arrange(-as.numeric(Publication.Year),-Publication.Month,-Publication.Day)

# D <- pubmedR::pmFetchById(pmids = peerreview$PMID[which(!is.na(peerreview$PMID))])
# M <-  pubmedR::pmApi2df(D)

sink("_data/publist.txt")
for (a in 1:nrow(peerreview)) {
  cat(paste("- title: \"",peerreview$Title[a],"\"",sep=""))
  cat("\n")
  if (!is.na(peerreview$image[a])) {
    cat(paste("  image: \"",peerreview$image[a],"\"",sep=""))
    cat("\n")
  }
  if (!is.na(peerreview$description[a])) {
    cat(paste("  description: ",peerreview$description[a],sep=""))
   cat("\n")
  }
  cat(paste("  authors: ",gsub("\\*","",peerreview$Authors[a]),sep=""))
  cat("\n")
  cat(paste("  First_author: ",gsub("\\*","",peerreview$First.author[a]),sep=""))
  cat("\n")
  cat("  link:")
  cat("\n")
  cat(paste("    url: http://doi.org/",peerreview$DOI[a],sep=""))
  cat("\n")
  cat(paste("    display: ",ifelse(!is.na(peerreview$Citation[a]),gsub(" doi:.*","",peerreview$Citation[a]),
                                          paste(peerreview$Journal.Book[a],". ",peerreview$Publication.Year[a],". ",sep="")),sep=""))
  cat("\n")
  if (!is.na(peerreview$image[a])) {
   cat(paste("  highlight: ",peerreview$highlight[a],sep=""))
  }
  else {
    cat("  highlight: 0")
    
  }
  cat("\n")
  cat("\n")
}
sink()
  