#!/bin/bash
./create-backup.sh
filename=$(cat filename.txt)
./send-backup.sh $filename