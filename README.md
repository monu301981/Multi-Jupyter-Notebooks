# Multi-Jupyter-Notebooks

## Pre-requisites for running the notebooks:
- Docker desktop should be installed. (Refer: https://docs.docker.com/desktop/setup/install/windows-install/)
- Docker desktop should be running.

## Instllation and running the notebooks
- Clone repository https://github.com/monu301981/Multi-Jupyter-Notebooks.git
- cd Multi-Jupyter-Notebooks.
- Manually edit the default.config file for workspace=C:\[path]\Multi-Jupyter-Notebooks.
- Open Command prompt (CMD) in admin mode and navigate to C:\[path]\Multi-Jupyter-Notebooks folder.
- Run following Commands in command prompt, for launching the Notebooks for different languages,
  - For Python > notebook python (runs on port 10000)
  - For Go > notebook go (runs on port 10001)
  - For Java > notebook java (runs on port 10002)
  - For PHP > notebook php (runs on port 10003)

## Things to note
- All the files will be saved by default to /notebooks folder, as it is mounted in all the dockers by default.
- All the notebooks saved in folder /work which appears inside each notebook instance will be saved in /notebooks folder on host.
- Only exception is Go notebook instance for which there will be no /work folder.
- All the notebook instances can be run paralelly as they are launched on different ports (mentioned above).
  
## Upcoming features
- Linux version
- Dynamic folder feature
