# Install the prerequisites
sudo apt-get install --upgrade -y --fix-missing \
    build-essential \
    cmake \
    gfortran \
    git \
    wget \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libatlas-dev \
    libavcodec-dev \
    libavformat-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    software-properties-common \
    zip \

cd $HOME/work

# Install from git repository
git clone https://github.com/davisking/dlib.git

cd dlib

# Install dlib for python only
sudo python3 setup.py install --yes USE_AVX_INSTRUCTIONS --yes DLIB_USE_CUDA

