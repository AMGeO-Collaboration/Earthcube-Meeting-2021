# get ubuntu image
FROM ubuntu:18.04
RUN apt-get update && apt-get install gcc
COPY . . 

# TODO: setup a user and create a dir for them to run AMGeO in where they can't screw anything up

# FROM continuumio/conda-ci-linux-64-python3.7
FROM continuumio/miniconda3
RUN /opt/conda/bin/conda install jupyter -y && mkdir /opt/notebooks
CMD jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root

# TODO: get AMGeO and run