@echo off
for /f "delims=" %%a in (default.config) do set %%a
set arg1=%1
shift
cd %arg1%
shift
call %arg1%-jupyter-open