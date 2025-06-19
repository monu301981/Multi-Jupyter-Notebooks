docker pull jupyter/base-notebook
docker run -it --rm -p 10005:8888 -v "$workspace_sh/$workfolder":/home/jovyan/work jupyter/base-notebook sh -c "apt-get update; apt-get -y install node;apt-get -y install npm; npm install -g deno ; deno jupyter --install;jupyter lab;"
