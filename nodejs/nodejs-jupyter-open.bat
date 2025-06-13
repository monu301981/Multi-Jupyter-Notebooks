@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
:: Windows
docker run -p 10004:8888 -v %workspace%\%workfolder%:/home/jovyan/work my-jupyter-node
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/minimal-notebook

 