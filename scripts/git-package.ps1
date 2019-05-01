# Write package.json back to github only for release builds 

if ($(Release.Reason) -eq "Scheduled") {
  # write package.json back to repo 
  git show
  git log --oneline
  git push 
}
else {
  # do nothing    
}