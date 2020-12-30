# Overview
- generate test data
- extract eng.lstm file
- execute learning
- finetune (2k)

## Basic Usage
- From the project's root directory run

git clone https://github.com/tesseract-ocr/langdata_lstm.git 

git clone https://github.com/tesseract-ocr/tesseract.git

- If you do not have wget.

brew install wget

- From the project's root directory
wget https://github.com/tesseract-ocr/tessdata_best/raw/master/eng.traineddata -O tesseract/tessdata/eng.traineddata

- Download a font in file format .ttf and place it in the /fonts directory


## Scripts

### generate_training_data.sh
- generates training data for tesseract in the /train directory

- check generate_training_data.sh file to make sure options are correct
    - Of note, be sure to change line 4, font_list, to match your font
    
- run ./generate_training_data.sh. This will generate pages of data and the needed files
to train tesseract.

### extract_lstm.sh
- creates the *.lstm file (the model needed by tesseract).

### eval.sh
- can be run supplied with a model and and a traineddata file and run against the generated training files to see how tesseract does prior to training.
- can also be supplied with a model and and a traineddata file and run against the newly generated trained file, after training, to compare results.

### finetune.sh
- actually tells tesseract to use the model and traineddata to train against the new font and creates a new traineddata file

### comebine.sh
- combines the original eng.traineddata file with the new one produced by training against your new font.