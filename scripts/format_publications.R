librarian::shelf(tidyverse,readxl)

source("/Users/quinn/Library/CloudStorage/OneDrive-DukeUniversity/Ongoing_Projects/CV/CV_files/CV_scripts.R")


peerreview <- readxl::read_excel("/Users/quinn/Library/CloudStorage/OneDrive-DukeUniversity/Ongoing_Projects/CV/CV_files/Publications.xlsx",sheet="PeerReviewed") %>%
  CleanPubs() %>%
  filter((!is.na(Create.Date) | !is.na(Publication.Year2) | !is.na(DOI)) & include_website ==1) %>%
  arrange(-as.numeric(Publication.Year),-Publication.Month,-Publication.Day)

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
  cat(paste("  authors: ",peerreview$Authors[a],sep=""))
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
  