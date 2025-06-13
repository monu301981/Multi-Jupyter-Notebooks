@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
docker pull jupyter/minimal-notebook
docker run -it --rm -p 10000:8888 -v %workspace%\%workfolder%:/home/jovyan/work jupyter/minimal-notebook
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/minimal-notebook

:: Select any image which suits your need.
::jupyter/base-notebook
::jupyter/docker-stacks-foundation
::jupyter/r-notebook
::jupyter/julia-notebook
::jupyter/scipy-notebook
::jupyter/tensorflow-notebook
::jupyter/pytorch-notebook
::jupyter/datascience-notebook
::jupyter/pyspark-notebook
::jupyter/all-spark-notebook 