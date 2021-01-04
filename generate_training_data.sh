# Remove any training data
rm -rf train/*

# Font directory to pull from
tesstrain.sh --fonts_dir fonts \

# List of fonts you want to train
--fontlist 'Aclonica-Regular' \

# Language 
--lang eng \
--linedata_only \
--langdata_dir langdata_lstm \
--tessdata_dir tesseract/tessdata \
--save_box_tiff \
--maxpages 10 \
--output_dir train

