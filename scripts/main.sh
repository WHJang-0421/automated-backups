#!/bin/bash
./scripts/create-backup.sh
filename=$(cat ./system-files/filename.txt)
./scripts/send-backup.sh $filename