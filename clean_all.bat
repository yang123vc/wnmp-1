@echo off

set base_path=%cd%
set log_path=%base_path%\logs
set tmp_path=%base_path%\tmp

pushd %log_path%
del /Q /S *.log 2>nul
del /Q /S *.log.* 2>nul
popd

pushd %tmp_path%
del /Q *.pid 2>nul
del /Q /S * 2>nul
popd

