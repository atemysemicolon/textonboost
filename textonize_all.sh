
echo -e "Textonizing......."
TEXTONIZE=/home/prassanna/Development/workspace/builds/textonboost/src/textonize
$TEXTONIZE data/msrc_filterbank.dat FilterBank 400
$TEXTONIZE data/msrc_color.dat Color 128
$TEXTONIZE data/msrc_hog_l.dat HoG 150 L
$TEXTONIZE data/msrc_location.dat Location 144
echo -e "Boosting....."
TEXTONBOOST=/home/prassanna/Development/workspace/builds/textonboost/src/textonboost
$TEXTBOOST data/msrc.dat data/msrc_color.dat data/msrc_filterbank.dat data/msrc_hog_l.dat data/msrc_location.dat
echo -e "Evaluating..."
TEXTONEVAULATE=/home/prassanna/Development/workspace/builds/textonboost/src/evaluate
$TEXTONEVALUATE data/msrc.dat data/msrc_color.dat data/msrc_filterbank.dat data/msrc_hog_l.dat data/msrc_location.dat /data/evaluation


