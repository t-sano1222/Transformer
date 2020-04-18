FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-devel

WORKDIR /home/jovyan/pytorch

# Install required libraries
RUN conda config --add channels pytorch \
 && conda config --append channels conda-forge \
 && conda update --all --yes --quiet \
 && conda install --yes --quiet \
    ipywidgets \
    jupyterlab=0.35.4 \
    matplotlib \
    nodejs \
    opencv \
    pandas \
    scikit-learn \
    seaborn \
    sympy \
    scikit-image \
 && conda clean --all -f -y

# Install jupyter extensions
RUN conda install -c conda-forge nodejs \
 && jupyter nbextension enable --py --sys-prefix widgetsnbextension \
 && jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38

COPY jupyter_notebook_config.py /root/.jupyter/