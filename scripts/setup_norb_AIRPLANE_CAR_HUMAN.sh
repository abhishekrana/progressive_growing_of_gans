# pip install -r ../requirements-pip.txt

cd ..
rm -rf downloads/norb_AIRPLANE_CAR_HUMAN
mkdir -p downloads/norb_AIRPLANE_CAR_HUMAN
cp -r /media/data/abhishek/DATASET_PROCESSED/NORB_RES/train/AIRPLANE/* downloads/norb_AIRPLANE_CAR_HUMAN
cp -r /media/data/abhishek/DATASET_PROCESSED/NORB_RES/train/CAR/* downloads/norb_AIRPLANE_CAR_HUMAN
cp -r /media/data/abhishek/DATASET_PROCESSED/NORB_RES/train/HUMAN/* downloads/norb_AIRPLANE_CAR_HUMAN

rm -rf datasets/norb_AIRPLANE_CAR_HUMAN
mkdir -p datasets/norb_AIRPLANE_CAR_HUMAN
python dataset_tool.py create_from_images datasets/norb_AIRPLANE_CAR_HUMAN downloads/norb_AIRPLANE_CAR_HUMAN

