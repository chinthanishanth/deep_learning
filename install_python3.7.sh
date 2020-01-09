#! /bin/sh
sudo apt update \
        && sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y\
        && curl -O https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz \
        && tar -xf Python-3.7.3.tar.xz \
        && cd Python-3.7.3 \
        && ./configure \
        && make -j 8 \
        && sudo make altinstall \
        && sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1\
        && sudo update-alternatives --install /usr/bin/python python  /usr/local/bin/python3.7 2\
        && sudo update-alternatives --config python