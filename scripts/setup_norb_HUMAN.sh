# pip install -r ../requirements-pip.txt

cd ..
rm -rf downloads/norb_HUMAN
mkdir -p downloads/norb_HUMAN
cp -r /media/data/abhishek/DATASET_PROCESSED/NORB_RES/train/AIRPLANE/* downloads/norb_HUMAN

rm -rf datasets/norb_HUMAN
mkdir -p datasets/norb_HUMAN
python dataset_tool.py create_from_images datasets/norb_HUMAN downloads/norb_HUMAN

