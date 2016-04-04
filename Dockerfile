FROM jupyter/notebook

MAINTAINER Saagie

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 575159689BEFB442 && \
    echo 'deb http://download.fpcomplete.com/ubuntu trusty main'|tee /etc/apt/sources.list.d/fpco.list

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        libzmq3-dev \
        stack \
        libncurses-dev \
        pkg-config

RUN stack --install-ghc --resolver lts-5.0 install ihaskell && ~/.local/bin/ihaskell install

CMD stack exec jupyter notebook --\
    --ip=* \
    --MappingKernelManager.time_to_dead=10 \
    --MappingKernelManager.first_beat=3 \
    --notebook-dir=/notebooks-dir/ 
