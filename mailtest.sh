#!/bin/bash
echo "Checking Mail Server #2"
echo "checking for pull"
echo "QUIT" | nc -w 5 smtp.gmail.com 465 > /dev/null 2>&1
if [ $? == 0 ]; then
  echo "mail server #1 is UP"
else
  echo "mail server #1 is DOWN"
fi

