# Path to Git Bash on your computer
git_bash_path <- "C:/Program Files/Git/git-bash.exe"

# Write your bash commands and run them  
curl_command <- "curl -L -o ./raw_data/archive.zip https://www.kaggle.com/api/v1/datasets/download/usdot/flight-delays"
system(paste(shQuote(git_bash_path), 
             "-c", 
             shQuote(curl_command)), 
       intern = TRUE)

unzip_command <- "unzip -o ./raw_data/archive.zip -d ./flights"
system(paste(shQuote(git_bash_path), 
             "-c", 
             shQuote(unzip_command)), 
       intern = TRUE)
