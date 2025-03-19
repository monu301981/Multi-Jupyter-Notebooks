@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
docker pull jupyter/minimal-notebook
docker run -it --rm -p 10000:8888 -v %workspace%\%workfolder%:/home/jovyan/work jupyter/minimal-notebook
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/minimal-notebook

 