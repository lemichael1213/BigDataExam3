


#we need to cut down the file to just what we need: location, year, and species code
#1 is location ID, 10 is year, and 12 is species code
#we then want to sort by the second column (year) and third column (species) in the cut file
#-n orders from earliest year to latest
#next, uniq -u should pull out unique values and we use -f 1 to skip the first column

#QUESTION 1
mkdir exam2_question1
for item in ../shared/birds/*.csv
do
cat $item | cut -f 10,12 -d ',' | sort -k2 -k3 -n | uniq -u >> ~/exam2_question1/exam2_question1_unique.csv
done
 
#this loop should then get us all of the associate info for those unique observations (including location id)
while read line
do
  grep $line ../shared/birds/*.csv >> ~/exam2_question1/exam2_question1_output.csv  
done <exam2_question1_unique.csv 

#now need two more loops...one for genus and one for location. figure out how to grep

for species 
do
grep 

for species in ../~/exam2_question1/exam2_question1combined.csv
do
grep 

#QUESTION 2
mkdir exam2_question2
for item in ../shared/birds/*.csv
do
cat $item > exam2question2.csv | cut -f 1,10,12 -d ',' | sort -k3 -n | uniq -u -f 1 > ~/exam2_question2/exam2_question2.csv
done




#how do I tell it to just do unique of species?
#I tried using -f 2 to tell it to skip the first two fields, is this right?

#for part 2, would I run the same loop but remove sort?

#What command allows me to bring in the values from the bird info and observation csvs
#Can all of this be done in two loops (one per question?)
#Does she want us to do the {1} thing that makes the script generic?

