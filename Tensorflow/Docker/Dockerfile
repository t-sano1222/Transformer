FROM docker pull tensorflow/tensorflow:2.2.0rc2-gpu-py3-jupyter

WORKDIR /home/jovyan/tf

# Install jupyter extensions
RUN conda install -c conda-forge nodejs \
 && jupyter nbextension enable --py --sys-prefix widgetsnbextension \
 && jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38

COPY jupyter_notebook_config.py /root/.jupyter/