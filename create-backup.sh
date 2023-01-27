#!/bin/bash
echo 'The path of the directory/file to create a backup: '
read original

while [ ! -f $original ] && [ ! -d $original ]
do
    echo "The file $original doesn't exist. Please give the path again: "
    read original
done

echo 'Compression/archive method (1: zip, 2: tar): '
read method

while [ "$method" != "1" ] && [ "$method" != "2" ]
do
    echo "Wrong input for compression/archive method. Please give either 1 (zip) or 2 (tar) as input. Please give the method again:"
    read method
done

if [ $method == "1" ]
then
    if [ -f $original ]
    then
        zip "./backups/$original.zip" "$original"
    else
        zip -r "./backups/$original.zip" "$original"
    fi
    echo "./backups/$original.zip" > filename.txt
else
    tar cf "./backups/$original.tar" "$original"
    echo "./backups/$original.tar" > filename.txt
fi

echo "Compression/Archive Complete!"