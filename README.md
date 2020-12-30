# Overview
- generate test data
- extract eng.lstm file
- execute learning
- finetune (2k)
## Setup
- All commands should be run from the projects root directory unless otherwise specified
    - wget required
        brew install wget
------------------------------------------

git clone https://github.com/tesseract-ocr/langdata_lstm.git 

git clone https://github.com/tesseract-ocr/tesseract.git

wget https://github.com/tesseract-ocr/tessdata_best/raw/master/eng.traineddata -O tesseract/tessdata/eng.traineddata

### Generate Training Data

- generate_training_data.sh generates training data and the needed files to train Tesseract in the /train directory

- extract_lstm.sh creates the *.lstm file needed by Tesseract.

- check generate_training_data.sh file to make sure options are correct
    - Of note, be sure to change line 4, font_list, to match your font
------------------------------------------
- Download a font in file format .ttf and place it in the /fonts directory

run ./generate_training_data.sh 

run ./extract_lstm.sh

#### Review and Compare

- eval.sh allows you to view the error rate on generated training files prior to training Tesseract. This also allows to compare the original error rate of Tesseract against the error rate of your added training files. You can adjust the training options in generate_training_data.sh to improve your results. Results are displayed in your console. 
------------------------------------------

run ./eval.sh

##### Adding Training Data to Tesseract
- finetune.sh tells tesseract to use the model and the newly trained data to train against the new font and creates a new .traineddata file

- combine.sh combines the original eng.traineddata file with the new one produced by training against your new font.
------------------------------------------

run ./finetune.sh

run ./combine.sh
