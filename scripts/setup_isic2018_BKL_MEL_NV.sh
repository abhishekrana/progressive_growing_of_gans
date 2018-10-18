# pip install -r ../requirements-pip.txt

cd ..
mkdir -p downloads/isic2018_BKL_MEL_NV
cp -r /media/data/abhishek/DATASET_PROCESSED/ISIC2018_RES/train/BKL/* downloads/isic2018_BKL_MEL_NV
cp -r /media/data/abhishek/DATASET_PROCESSED/ISIC2018_RES/train/MEL/* downloads/isic2018_BKL_MEL_NV
cp -r /media/data/abhishek/DATASET_PROCESSED/ISIC2018_RES/train/NV/* downloads/isic2018_BKL_MEL_NV

mkdir -p datasets/isic2018_BKL_MEL_NV
python dataset_tool.py create_from_images datasets/isic2018_BKL_MEL_NV downloads/isic2018_BKL_MEL_NV

