FROM continuumio/miniconda:4.5.4

RUN pip install mlflow \
    && pip install azure-storage \
    && pip install numpy \
    && pip install scipy \
    && pip install pandas \
    && pip install scikit-learn \
    && pip install cloudpickle

COPY train.py /home/
COPY wine-quality.csv /home/
