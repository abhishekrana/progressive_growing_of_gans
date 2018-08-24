pip install -r requirements-pip.txt

mkdir results
mkdir -p downloads/mnist
mkdir -p datasets/mnist

cd downloads/mnist
wget http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
wget http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
wget http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
wget http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
cd ../..

python dataset_tool.py create_mnist datasets/mnist downloads/mnist

# cd scripts
# python dataset_isic2018.py
# cd ..
# mkdir -p datasets/isic2018_NV
# mkdir -p downloads/isic2018_mod/NV
# python dataset_tool.py create_from_images datasets/isic2018_NV downloads/isic2018_mod/NV

# export CUDA_VISIBLE_DEVICES=
# python train.py

