docker pull jupyter/minimal-notebook
docker run --rm -p 10000:8888 -v "$workspace_sh/$workfolder":/home/jovyan/work jupyter/minimal-notebook
