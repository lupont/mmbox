# https://hub.docker.com/r/balenalib/raspberry-p
FROM balenalib/raspberry-pi:buster

# Update apt and get build essentials
RUN apt-get update && apt-get install build-essential -y

# Install blas and hdf5
RUN apt-get install libhdf5-dev -y &&\
    apt-get install libblas-dev liblapack-dev libatlas-base-dev gfortran -y

# Install python3.7 and pip3
RUN apt-get install python3.7 -y &&\
    apt-get install python3-pip -y

# Install setup tools and timeflux
RUN pip3 install setuptools &&\
    pip3 install timeflux &&\
    pip3 install timeflux_example

# Fetch test.yaml 
RUN curl -Ok https://raw.githubusercontent.com/timeflux/timeflux/master/examples/test.yaml

# Testing purpose: letting the container stay alive
CMD ["tail", "-f", "/dev/null"]

