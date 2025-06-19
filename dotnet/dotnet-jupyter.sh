docker run -p 10009:8888 -v "$workspace_sh/$workfolder":/home/jovyan/work ghcr.io/pocki/jupyter-dotnet:r-dotnet8-latest /bin/bash -c "jupyter lab"
