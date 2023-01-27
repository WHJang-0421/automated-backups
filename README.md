# Automated Backups

This simple project aims to create a bash script that gets a directory and a zip method as an input, which creates a backup and sends it via email. The email list would be configured in advance. For now, you will have to configure ssmtp and mutt by yourself.   

The email address should be written at a file named emails.txt, separated by line. Example of emails.txt:
> youremail@hostsite.com   
> anothermail@hostsite.com   
> (there should be an empty line at the end)