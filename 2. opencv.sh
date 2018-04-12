# Install the necessities using pip
echo 'Upgrading python3-pip...'
sudo -H pip3 install --upgrade pip
echo 'Done.'

echo 'Installing numpy...'
sudo -H pip3 install --upgrade numpy
echo 'Done.'

echo 'Installing dependencies for scipy...'
sudo apt-get install libatlas-base-dev gfortran
echo 'Done.'

echo 'Installing scipy...'
sudo -H pip3 install --upgrade scipy
echo 'Done.'

echo 'Installing necessities for opencv-python...'
sudo apt-get install --upgrade -y \
    libglew-dev \
    libtiff5-dev \
    zlib1g-dev \
    libjpeg-dev \
    libpng12-dev \
    libjasper-dev \
    libavcodec-dev \
    libavformat-dev \
    libavutil-dev \
    libpostproc-dev \
    libswscale-dev \
    libeigen3-dev \
    libtbb-dev \
    libgtk2.0-dev \
    cmake \
    python3-dev \
    python3-py \
    python3-pytest
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev
    pkg-config
echo 'Done.'

cd $HOME

mkdir work

cd work

# Clone the git repository of opencv and opencv-contrib
echo 'Cloning the opencv and opencv_contrib from git...'
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
echo 'Done.'

#sudo apt-get install --upgrade -y python3-dev python3-py python3-pytest

#sudo apt-get install --upgrade -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev

cd opencv

mkdir build

cd build

echo 'Building opencv...'
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DBUILD_PNG=OFF \
    -DBUILD_TIFF=OFF \
    -DBUILD_TBB=OFF \
    -DBUILD_JPEG=OFF \
    -DBUILD_JASPER=OFF \
    -DBUILD_ZLIB=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_opencv_java=OFF \
    -DBUILD_opencv_python2=OFF \
    -DBUILD_opencv_python3=ON \
    -DENABLE_PRECOMPILED_HEADERS=OFF \
    -DWITH_OPENCL=OFF \
    -DWITH_OPENMP=OFF \
    -DWITH_FFMPEG=ON \
    -DWITH_GSTREAMER=ON \
    -DWITH_GSTREAMER_0_10=OFF \
    -DWITH_CUDA=ON \
    -DWITH_GTK=ON \
    -DWITH_VTK=OFF \
    -DWITH_TBB=ON \
    -DWITH_1394=OFF \
    -DWITH_OPENEXR=OFF \
    -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-8.0 \
    -DCUDA_ARCH_BIN=6.2 \
    -DCUDA_ARCH_PTX="" \
    -DINSTALL_C_EXAMPLES=OFF \
    -DINSTALL_TESTS=OFF \
    -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
../
echo 'Done.'

# Make and install opencv
echo 'Completing the making of opencv...'
make -j6
echo 'Done.'

echo 'Installing opencv...'
sudo make install
echo 'Done.'
