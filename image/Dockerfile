from ubuntu:20.04

RUN apt update
RUN apt-get install -y software-properties-common

# Install Python 3.7 and add external repositories (only if you haven't got any python versions installed)
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install python3.7 -y

# Install build tools
RUN apt-get install build-essential unzip -y
RUN apt-get install software-properties-common -y

# Install system dependencies
RUN apt-get update -y
RUN apt-get install -y git ffmpeg libopus-dev libffi-dev libsodium-dev python3-pip 
RUN apt-get upgrade -y

# Install Python dependencies
RUN python3 -m pip install -U pip

RUN mkdir /workspace

WORKDIR /workspace

ADD requirements.txt /workspace/requirements.txt

RUN python3 -m pip install -U -r /workspace/requirements.txt

RUN apt install curl git
RUN git clone https://github.com/asdf-vm/asdf.git /asdf --branch v0.8.0

RUN apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

RUN bash -c ". /asdf/asdf.sh && asdf plugin-add python && asdf install python 3.7.9"

ADD requirements.txt /requirements.txt
ADD pystrap.sh /pystrap.sh
RUN chmod +x /pystrap.sh
RUN /pystrap.sh

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh