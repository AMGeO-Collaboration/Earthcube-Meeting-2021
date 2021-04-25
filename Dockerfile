# get ubuntu image
FROM ubuntu:18.04
RUN apt-get update
COPY . .

# FROM continuumio/conda-ci-linux-64-python3.7
FROM continuumio/miniconda3
RUN /opt/conda/bin/conda install jupyter -y && mkdir /opt/notebooks
CMD jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root

# TODO: get AMGeO and run