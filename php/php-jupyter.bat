@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
docker pull benramsey/jupyter-php
:: Windows
docker run --rm -p 10003:8888 -v %workspace%\%workfolder%:/home/jovyan/work benramsey/jupyter-php:latest
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work benramsey/jupyter-php:latest

