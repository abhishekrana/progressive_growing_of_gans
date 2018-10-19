# pip install -r ../requirements-pip.txt

cd ..
rm -rf downloads/norb_CAR
mkdir -p downloads/norb_CAR
cp -r /media/data/abhishek/DATASET_PROCESSED/NORB_RES/train/AIRPLANE/* downloads/norb_CAR

rm -rf datasets/norb_CAR
mkdir -p datasets/norb_CAR
python dataset_tool.py create_from_images datasets/norb_CAR downloads/norb_CAR

