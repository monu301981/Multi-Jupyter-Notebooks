@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on

docker build -t my-jupyter-node ./
docker run -p 10004:8888 -v %workspace%\%workfolder%:/home/jovyan/work my-jupyter-node

:: docker pull rattydave/jupyterhub
:: docker run -it --rm -p 10004:8000 -v %workspace%\%workfolder%:/home/jovyan/work rattydave/jupyterhub
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/minimal-notebook

 