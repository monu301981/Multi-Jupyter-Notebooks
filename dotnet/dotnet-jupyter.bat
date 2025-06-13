@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
docker run -p 10009:8888 -v %workspace%\%workfolder%:/home/jovyan/Notebooks ghcr.io/pocki/jupyter-dotnet:r-dotnet8-latest /bin/bash -c "jupyter lab"