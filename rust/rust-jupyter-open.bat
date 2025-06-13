@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
docker run -it --rm -p 10008:8888 -v %workspace%\%workfolder%:/home/jovyan/work condaforge/miniforge3:latest /bin/bash -c "conda create -n darn python=3 && conda activate darn && conda install -c conda-forge jupyterlab && conda install -c anaconda cmake -y && conda install -c conda-forge nodejs=15 -y && jupyter labextension install jupyterlab-plotly && jupyter labextension install @shahinrostami/theme-purple-please && url --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh && rustup default 1.42.0 && source $HOME/.cargo/env && export PATH="$HOME/.cargo/bin:$PATH" && cargo install evcxr_jupyter --version 0.5.3 && evcxr_jupyter --install && jupyter lab --ip=0.0.0.0 --port=8888 --allow-root  --NotebookApp.token='' --notebook-dir='/home/jovyan/work'"

:: docker run -it --rm -p 10006:8888 -v %workspace%\%workfolder%:/home/jovyan/work condaforge/miniforge3:latest /bin/bash -c "mamba create -n cling && source activate cling && yes Y | mamba install xeus-cling -c conda-forge && yes Y | mamba install jupyterlab -c conda-forge && useradd -m -p docker -s /bin/bash docker && su - docker && jupyter lab --ip=0.0.0.0 --port=8888  --notebook-dir='/home/jovyan/work'"

:: docker build -t rust-jupyter-lab
:: docker run -it -p 8888:8888 -v %workspace%\%workfolder%:/home/jovyan/work rust-jupyter-lab