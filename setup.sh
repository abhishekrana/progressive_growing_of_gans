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

# export CUDA_VISIBLE_DEVICES=
# python train.py

