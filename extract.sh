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
#!/bin/bash

###read -p "Enter your URL(s) (1 per line) and press [ENTER]: "
###cat > linksout

###script 2:
#!/bin/bash

### remove file crawl1.txt
###rm crawl1.txt

###  create file crawl1.txt
###touch crawl1.txt

### run script
###while read url
###do
###    elinks -source $url >> crawl1.txt

###done < linksout


###sed 's/<head>/<head>\n/g' crawl1.txt | grep -c "<head>"
