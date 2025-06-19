docker build -t my-jupyter-node ./
docker run -p 10004:8888 -v "$workspace_sh/$workfolder":/home/jovyan/work my-jupyter-node
