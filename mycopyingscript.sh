#how to copy original files into a new folder and rename them
#we are copying csv files from the NEON folder and renaming them
#usage: bash mycopyingscript.sh

mkdir NEON_csv_copies #this is the folder for our copies
#new files will have .txt so we know they are copies

cp ../shared/NEON_*/*/*csv NEON_csv_copies #copies files from original folder to new folder we made
for filename in NEON_csv_copies/*csv #each file in this folder is referred to as filename
do
cp $filename NEON_csv_copies 
mv $filename ${filename}.txt 
done
