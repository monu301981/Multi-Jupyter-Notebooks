@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
:: Windows
docker run -it --rm -p 10002:8888 -v %workspace%\%workfolder%:/home/jovyan/work jbindinga/java-notebook:latest
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jbindinga/java-notebook:latest