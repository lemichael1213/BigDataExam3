#Lauren Michael
#Big Data Analysis Exam 2
#4/5/23


#Question 1

#To begin, I made a directory for question 1 csvs to be stored in
# then we need to cut down the file to just what we need: year and species code
#10 is year, 12 is species code
#we then want to sort by the second column (year) and third column (species) in the cut file
#-n orders from earliest year to latest
#next, uniq -u should pull out unique value


#mkdir exam2_question1_bigdata
for item in ../shared/birds/*.csv
do
cut -f 10,12 -d ',' | sort -k1 -k2 -n | uniq -u >> ~/exam2_question1_bigdata/exam2_question1_unique.csv
done
 
#this loop should then get us all of the associate info for those unique observations (including location id)

while read -r line
do
  grep -Fwf $line ../shared/birds/*.csv >> ~/exam2_question1_bigdata/exam2_question1_output.csv  
done < ~/exam2_question1_bigdata/exam2_question1_unique.csv 

grep -Fwf <(cut -d ',' -f 1 ~/exam2_question1_bigdata/exam2_question1_output.csv) ../shared/birds/bird-info # >> birdinfo.csv
#now we use grep to gather the genus and location info


#this should bring in the bird info 
awk '{print $12}' ~/exam2_question1_bigdata/exam2_question1_output.csv | grep ../shared/birds/bird-info >> ~/exam2_question1_bigdata/exam2_question1_bird_info

#this should bring in the site info
awk '{print $12}' ~/exam2_question1_bigdata/exam2_question1_output.csv | grep ../shared/birds/observation-site-info >> ~/exam2_question1_bigdata/exam2_question1_site_info


#QUESTION 2

#To begin, I made a directory for question 2 csvs to be stored in
# then we need to cut down the file to just what we need: year and species code
#10 is year, 12 is species code
#we then want to sort by the second column (year) and third column (species) in the cut file
#-n orders from earliest year to latest
#next, uniq -u should pull out unique value

#mkdir exam2_question2_bigdata
for item in ../shared/birds/*.csv
do
cat $item | cut -f 10,12 -d ',' | sort -k2 -k3 -n | uniq -u >> ~/exam2_question2_bigdata/exam2_question2_unique.csv
done

#this loop should then get us all of the associate info for those unique observations (including location id)

while read line
do
  grep $line ../shared/birds/*.csv >> ~/exam2_question2_bigdata/exam2_question2_output.csv
done < ~/exam2_question2_bigdata/exam2_question2_unique.csv

#this should bring in the bird info
awk '{print $12}' ~/exam2_question2_bigdata/exam2_question2_output.csv | grep ../shared/birds/bird-info >> ~/exam2_question2_bigdata/exam2_question2_bird_info

#this should bring in the site info
awk '{print $12}' ~/exam2_question2_bigdata/exam2_question2_output.csv | grep ../shared/birds/observation-site-info >> ~/exam2_question1_bigdata/exam2_question2$

