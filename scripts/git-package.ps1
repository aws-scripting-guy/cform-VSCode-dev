# Write package.json back to github only for release builds 

if ($env:BUILD_REASON -eq "Schedule" -or "Manual") {
  # write package.json back to repo 
  git show
  git log --oneline
  git push 
}
else {
  # do nothing    
  write-host "[info] this is not scheduled build. Build reason is $env:BUILD_REASON "
}