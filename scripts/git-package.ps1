# Write package.json back to github only for release builds 

if ($(Build.Reason) -eq "Schedule") {
  # write package.json back to repo 
  git show
  git log --oneline
  git push 
}
else {
  # do nothing    
  write-host "[info] this is not scheduled build. Build type is "$(Build.Reason)""
}