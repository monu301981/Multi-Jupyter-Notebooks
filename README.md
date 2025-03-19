# Multi-Jupyter-Notebooks

## Pre-requisites for running the notebooks:
- Docker desktop should be installed. (Refer: https://docs.docker.com/desktop/setup/install/windows-install/)
- Docker desktop should be running.

## Instllation and running the notebooks
- Clone repository https://github.com/monu301981/Multi-Jupyter-Notebooks.git
  - `git clone https://github.com/monu301981/Multi-Jupyter-Notebooks.git`
- Get into the folder using command prompt (CMD) in admin mode > `cd Multi-Jupyter-Notebooks`.
- Manually edit the default.config file for workspace, `workspace=C:\[path]\Multi-Jupyter-Notebooks`.
- Open Command prompt (CMD) in admin mode and navigate to `C:\[path]\Multi-Jupyter-Notebooks` folder.
- Run following Commands in command prompt, for launching the Notebooks for different languages for the first time,
  - For Python > `notebook python` (runs on port 10000)
  - For Go > `notebook go` (runs on port 10001)
  - For Java > `notebook java` (runs on port 10002)
  - For PHP > `notebook php` (runs on port 10003)
- Run following Commands in command prompt, for launching the Notebooks for different languages for next time,
  - For Python > `notebook-open python` (runs on port 10000)
  - For Go > `notebook-open go` (runs on port 10001)
  - For Java > `notebook-open java` (runs on port 10002)
  - For PHP > `notebook-open php` (runs on port 10003)
- Once the notebook servers start, following message will be displayed as part of the response which looks like below
  - `[C 2025-03-19 15:08:11.759 ServerApp]
    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
    Or copy and paste one of these URLs:
        http://7b58ed628df8:8888/lab?token=6b6e0889e983159524a26ddb66716a4e589d280893da4025
        http://127.0.0.1:8888/lab?token=6b6e0889e983159524a26ddb66716a4e589d280893da4025`
- In the above response the token values has to be copied to login to the notebook application
- Following are the URLs for notebook applications, and token has to be entered upon notification.
  - For Python - `http://localhost:10000/`
  - For Go - `http://localhost:10001/`
  - For Java - `http://localhost:10002/`
  - For PHP - `http://localhost:10003/`

## Things to note
- All the files will be saved by default to `/notebooks` folder in the host, as it is mounted in all the dockers by default.
- All the notebooks saved in folder `/work` in docker, which appears inside each notebook instance will be saved in /notebooks folder on host.
- Only exception is Go notebook instance for which there will be no `/work` folder.
- All the notebook instances can be run paralelly as they are launched on different ports (mentioned above).
- Use seperate command prompts (CMD) instances in admin mode to launch notebook applications for different languages.
  
## Upcoming features
- Version for Node JS
- Linux version
- Dynamic folder feature
