# Multi-Jupyter-Notebooks

## Pre-requisites for running the notebooks:
- Docker desktop should be installed. (Refer: https://docs.docker.com/desktop/setup/install/windows-install/)
- Docker desktop should be running.

## Instllation and running the notebooks on Windows
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
  - For NodeJS > `notebook nodejs` (runs on port 10004)
  - For Typescript > `notebook typescript` (runs on port 10005)
  - For R > `notebook r` (runs on port 10006)
  - For CPP > `notebook cpp` (runs on port 10007)
  - For RUST > `notebook rust` (runs on port 10008)
  - For Dotnet > `notebook dotnet` (runs on port 10009)
  - For AI > `notebook ai` (runs on port 10010)
  
- Run following Commands (Windows) in command prompt, for launching the Notebooks for different languages for next time,
  - For Python > `notebook python` (runs on port 10000)
  - For Go > `notebook go` (runs on port 10001)
  - For Java > `notebook java` (runs on port 10002)
  - For PHP > `notebook php` (runs on port 10003)
  - For NodeJS > `notebook nodejs` (runs on port 10004)
  - For Typescript > `notebook typescript` (runs on port 10005)
  - For R > `notebook r` (runs on port 10006)
  - For CPP > `notebook cpp` (runs on port 10007)
  - For RUST > `notebook rust` (runs on port 10008)
  - For Dotnet > `notebook dotnet` (runs on port 10009)
  - For AI > `notebook ai` (runs on port 10010)
  
## Instllation and running the notebooks on Linux and MacOS
- Clone repository https://github.com/monu301981/Multi-Jupyter-Notebooks.git
  - `git clone https://github.com/monu301981/Multi-Jupyter-Notebooks.git`
- Get into the folder using Terminal in admin mode > `cd Multi-Jupyter-Notebooks`.
- Manually edit the default.config file for workspace for non Windows OS, `workspace_sh=/path]/Multi-Jupyter-Notebooks`.
- Open Terminal in admin mode and navigate to `[path]/Multi-Jupyter-Notebooks` folder.
- Run following Commands in Terminal, for launching the Notebooks for different languages for the first time,
  - For Python > `./notebook.sh python` (runs on port 10000)
  - For Go > `./notebook.sh go` (runs on port 10001)
  - For Java > `./notebook.sh java` (runs on port 10002)
  - For PHP > `./notebook.sh php` (runs on port 10003)
  - For NodeJS > `./notebook.sh nodejs` (runs on port 10004)
  - For Typescript > `./notebook.sh typescript` (runs on port 10005)
  - For R > `./notebook.sh r` (runs on port 10006)
  - For CPP > `./notebook.sh cpp` (runs on port 10007)
  - For RUST > `./notebook.sh rust` (runs on port 10008)
  - For Dotnet > `./notebook.sh dotnet` (runs on port 10009)
  - For Dotnet > `./notebook.sh dotnet` (runs on port 10010)
  
- Run following Commands (Linux and MacOS) in command prompt, for launching the Notebooks for different languages for next time,
  - For Python > `./notebook.sh python` (runs on port 10000)
  - For Go > `./notebook.sh go` (runs on port 10001)
  - For Java > `./notebook.sh java` (runs on port 10002)
  - For PHP > `./notebook.sh php` (runs on port 10003)
  - For NodeJS > `./notebook.sh nodejs` (runs on port 10004)
  - For Typescript > `./notebook.sh typescript` (runs on port 10005)
  - For R > `./notebook.sh r` (runs on port 10006)
  - For CPP > `./notebook.sh cpp` (runs on port 10007)
  - For RUST > `./notebook.sh rust` (runs on port 10008)
  - For Dotnet > `./notebook.sh dotnet` (runs on port 10009)
  - For Dotnet > `./notebook.sh dotnet` (runs on port 10010)

## Things to note
- All the files will be saved by default to `/notebooks` folder in the host (except for Linux and MacOS versions), as it is mounted in all the dockers by default.
- All the notebooks saved in folder `/work` in docker, which appears inside each notebook instance will be saved in /notebooks folder on host.
- Only exception is Go notebook instance for which there will be no `/work` folder.
- All the notebook instances can be run paralelly as they are launched on different ports (mentioned above).
- Use seperate command prompts (CMD) instances in admin mode to launch notebook applications for different languages.
  
## Upcoming features
- Common working folder for Linux versions
- Finding substitue for BAT file on windows
- Using Docker composer
