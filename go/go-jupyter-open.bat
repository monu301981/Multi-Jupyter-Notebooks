@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
:: Windows
docker run -it --rm -p 10001:8888 -v %workspace%\%workfolder%:/notebooks janpfeifer/gonb_jupyterlab:latest
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/notebooks janpfeifer/gonb_jupyterlab:latest
