@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
docker pull condaforge/miniforge3
docker run -it --rm -p 10006:8888 -v %workspace%\%workfolder%:/home/jovyan/work condaforge/miniforge3:latest /bin/bash -c "mamba create -n cling;source activate cling;yes Y | mamba install xeus-cling -c conda-forge;yes Y | mamba install jupyterlab -c conda-forge;jupyter lab --ip=0.0.0.0 --port=8888 --allow-root  --NotebookApp.token='' --notebook-dir='/home/jovyan/work'"

:: docker run -it --rm -p 10006:8888 -v %workspace%\%workfolder%:/home/jovyan/work condaforge/miniforge3:latest /bin/bash -c "mamba create -n cling && source activate cling && yes Y | mamba install xeus-cling -c conda-forge && yes Y | mamba install jupyterlab -c conda-forge && useradd -m -p docker -s /bin/bash docker && su - docker && jupyter lab --ip=0.0.0.0 --port=8888  --notebook-dir='/home/jovyan/work'"