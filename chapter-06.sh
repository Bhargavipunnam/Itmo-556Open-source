#!/bin/bash

# Question 1: Clone the textbook repository
git clone <repository_url> ~/Documents

# Question 2: Change to the directory and list .sh files
cd ~/Documents/Linux-Text-Book-Part-I && ls *.sh

# Question 3: Long listing of specific chapters
ls -l Chapters-{02,04,06,08}

# Question 4: Copy file with conditional chain
cp Chapter-02/chapter-02.md ~ && ls ~

# Question 5: Create files homework10.txt to homework15.txt and account10.txt to account15.txt
touch ~/homework{10..15}.txt ~/account{10..15}.txt

# Question 6: List only the homework files
ls ~/homework{10..15}.txt

# Question 7: Create directories debian10, debian11, debian12
mkdir ~/debian{10..12}

# Question 8: Delete directories debian10, debian11, debian12
rmdir ~/debian{10..12}

# Question 9: Redirect date output to today.txt
date > ~/today.txt

# Question 10: Append formatted date to today.txt and display contents
date +%m%d%Y >> ~/today.txt && cat ~/today.txt

# Question 11: Append formatted date and last 10 lines of error.log using pipes
date +%m%d%Y | tee -a ~/today.txt | tail -n 10 error.log >> ~/today.txt

# Question 12: Create and print shell variable UT
UT=$(uptime) && echo "The system has been up for: $UT"

# Question 13: Manage Nginx and list /tmp contents
sudo apt-get update 1>/tmp/01.out 2>/tmp/01.err && \
sudo apt-get -y install nginx 1>/tmp/02.out 2>/tmp/02.err && \
sudo systemctl start nginx 1>/tmp/03.out 2>/tmp/03.err && \
ls /tmp

# Question 14: Redirect both stdout and stderr to a single file
sudo apt install nginx123 &> ~/nginx.log

# Question 15: ls -l /topsecret and redirect output to a file
ls -l /topsecret &> /tmp/out-and-error.txt

# Question 16: Count lines in hosts.deny
wc -l files/Chapter-06/hosts.deny

# Question 17: Count unique lines in error.log with more than 1 occurrence
sort files/Chapter-06/error.log | uniq -c | awk '$1 > 1'

# Question 18: Display and sort the second column from hosts.deny
cut -d' ' -f2 files/Chapter-06/hosts.deny | sort

# Question 19: Search for robots.txt in error.log
grep "robots.txt" files/Chapter-06/error.log

# Question 20: Count lines with robots.txt
grep -c "robots.txt" files/Chapter-06/error.log

# Question 21: Display last 10 lines from hosts.deny, cut and sort IP addresses
tail -n 10 files/Chapter-06/hosts.deny | cut -d' ' -f1 | sort -n

# Question 22: Search error.log for "Invalid method in request"
grep "Invalid method in request" files/Chapter-06/error.log

# Question 23: Count unique IPs from error.log
awk '{print $1}' files/Chapter-06/error.log | sort | uniq | wc -l

# Question 24: Unique URL-based errors and types
awk '{print $NF}' files/Chapter-06/error.log | sort | uniq && \
awk '{print $(NF-1)}' files/Chapter-06/error.log | sort | uniq

# Question 25: Find all .md files from home directory
find ~ -name "*.md"

# Question 26: Find files modified in the last hour
find ~ -type f -mmin -60

