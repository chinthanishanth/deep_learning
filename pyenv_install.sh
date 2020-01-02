#! /bin/sh

apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl \
&& curl https://pyenv.run | bash \
&& echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc  \
&& echo 'eval "$(pyenv init -)"' >> ~/.bashrc  \
&& echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc \
&& source ~/.bashrc \
&& pyenv install -v 3.7.2 \
&& pyenv global 3.7.2
