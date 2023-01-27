# Automated Backups

This simple project aims to create a bash script that gets a directory and a zip method as an input, which creates a backup and sends it via email. After you finish the prerequisites below, run the main.sh in the scripts folder. The current directory should be the automated-backups directory.

Prerequisites
1. Configure Email List   
The email address should be written at a file named emails.txt, separated by line. Example of emails.txt:
> youremail@hostsite.com   
> anothermail@hostsite.com   
> (there should be an empty line at the end)
2. (For now) Configure ssmtp and mutt by yourself.     