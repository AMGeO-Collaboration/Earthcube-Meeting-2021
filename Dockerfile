FROM continuumio/miniconda3
RUN /opt/conda/bin/conda install jupyter -y
RUN apt-get update -y && apt-get install gcc -y && apt-get install gfortran -y && mkdir /opt/notebook
ADD notebook /opt/notebook
CMD jupyter notebook --notebook-dir=/opt/notebook --ip='*' --port=8888 --no-browser --allow-root