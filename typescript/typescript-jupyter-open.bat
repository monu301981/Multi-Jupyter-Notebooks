@echo off
for /f "delims=" %%a in (../default.config) do set %%a

@echo on
docker run -it --rm -p 10004:8888 -v %workspace%\%workfolder%:/home/jovyan/work jupyter/base-notebook sh -c "apt-get update; apt-get -y install node;apt-get -y install npm; npm install -g deno ; deno jupyter --install;jupyter lab;"
:: Linux
:: docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/base-notebook sh -c "apt-get update; apt-get -y install node;apt-get -y install npm; npm install -g deno ; deno jupyter --install;jupyter lab;"