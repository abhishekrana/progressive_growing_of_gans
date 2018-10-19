# pip install -r ../requirements-pip.txt

cd ..
rm -rf downloads/norb_AIRPLANE
mkdir -p downloads/norb_AIRPLANE
cp -r /media/data/abhishek/DATASET_PROCESSED/NORB_RES/train/AIRPLANE/* downloads/norb_AIRPLANE

rm -rf datasets/norb_AIRPLANE
mkdir -p datasets/norb_AIRPLANE
python dataset_tool.py create_from_images datasets/norb_AIRPLANE downloads/norb_AIRPLANE

