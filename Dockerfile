FROM continuumio/anaconda3

RUN conda create -n geoenv -y python=3.6

SHELL ["/bin/bash", "-c"]
RUN source activate geoenv

RUN conda install -y gdal
RUN pip install --upgrade pip

RUN pip install -e git+https://github.com/christiemj09/config.git#egg=config
