docker pull jbindinga/java-notebook
docker run --rm -p 10002:8888 -v "$workspace_sh/$workfolder":/home/jovyan/work jbindinga/java-notebook
