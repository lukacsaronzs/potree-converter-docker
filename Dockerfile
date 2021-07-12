FROM ubuntu:latest

RUN apt-get update 
RUN apt install -y libprotobuf-dev protobuf-compiler
RUN apt install -y cmake
RUN apt install -y git
RUN apt install -y g++
RUN apt install -y libtbb-dev
RUN git clone https://github.com/potree/PotreeConverter.git
RUN mkdir ./build
WORKDIR /PotreeConverter/build
RUN cmake ../
RUN make
VOLUME [ "/input", "/output" ]
CMD ./PotreeConverter