#!/bin/bash

### remove file crawl1.txt
rm crawl1.txt
###  create file crawl1.txt
touch crawl1.txt

### run script
while read url
do
###    lynx --source -accept_all_cookies $url >> crawl1.txt
    elinks -source $url >> crawl1.txt

done < linksout

### Count occurenc "<head>" in crawl1.txt
sed 's/<head>/<head>\n/g' crawl1.txt | grep -c "<head>" 
###Script 1

#if exists remove file extract.txt and create a new one
###########                    if exists rm extract.txt
###########                    else touch extract.txt
# create .
# Find in file wanted link on theses occurence:
# something like https://www.voirfilms1.ws/video.php?p=2&c=VW10YVJsZH1RNVEZPVVld4cFRUQlZQUT09&sig=256
grep -o 'crawl1.txt' -e '/video.php?p=.&c=..................................&sig=...' > extract.txt

## idem with uptobox link
grep -o 'crawl1.txt' -e '/dl/?h=..&id=.................................."' > extract1.txt
grep -o 'crawl1.txt' -e '/dl/?h=[0-9][0-9]&id=.........................................................."' >> extract1.txt

## Remove " from line:
sed 's/"/ /gw extract1.txt' extract2.txt

##   Concatenation 3 files to 1:
cat extract2.txt >> extract.txt

## Add head https...:
awk '{print "https://www.voirfilms1.ws"$0}' extract.txt > extract1.txt
#vim extract1.txt
echo "check file extract1.txt"





