#!/bin/bash
#Make directory of name test1 in your home
cd
mkdir test1
#Change working directory to test1
cd test1
#Make test1.txt file and store the quoted content at the same time
echo "Hi! This is just a sample text file created using shell script.">test1.txt
#Print the content of the txt file
cat test1.txt
#Total number of t occurances in the text
grep t -o test1.txt | wc -l
#Giving the read,write and execute on test1.txt permission to all the users 
sudo chmod u=rwx test1.txt
#Appending more text in the same file
echo "Hi! This is just another sample text added to file.">>test1.txt
#Giving group only read access to the file
sudo chmod  g=r test1.txt
#Revoking every type of access for all the users
sudo chmod u=-rwx test1.txt
#Create sample2.txt
>sample2.txt
#Copy test1.txt to sample2.txt using sudo because of the privacy settings
sudo cp test1.txt sample2.txt
#sudo perl -0777pe '$_=$ x 500' test1.txt >> test1.txt? This could be used in place of the below code if the privacy settings would not have been there. 
#loop to add 1000 lines in test1.txt
counter=1
while [ $counter -le 1000 ]
do
	echo 'random text' | sudo tee -a test1.txt
	((counter++))
done
#print first 50 lines
sudo head -50 test1.txt
#print last 50 lines
sudo tail -50 test1.txt
# create files
touch prog1.txt prog2.txt program.txt code.txt info.txt
#containing prog in the name
find . -name "*prog*"
#alias
alias list="find . -name "*prog*""
