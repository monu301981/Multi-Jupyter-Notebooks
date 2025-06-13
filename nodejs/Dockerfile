FROM jupyter/scipy-notebook:latest
USER root
RUN apt-get update && apt-get install -y nodejs npm

USER jovyan
RUN npm install -g ijavascript
RUN ijsinstall

EXPOSE 8080




