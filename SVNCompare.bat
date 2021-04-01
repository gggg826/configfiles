@echo off
chcp 65001
set toolpath=C:\Program Files (x86)\Microsoft Office\Office15\DCF\
set temppath=%~dp0
echo %~1> "%temppath%temp.txt"
echo %~2>> "%temppath%temp.txt"
"%toolpath%SPREADSHEETCOMPARE.EXE" "%temppath%temp.txt"

:: 如果C盘需要管理员权限，用下面命令
:: set toolpath=C:\Program Files (x86)\Microsoft Office\Office16\DCF\
:: set temppath=%~dp0
:: echo %~1> "%temppath%temp.txt"
:: echo %~2>> "%temppath%temp.txt"
:: "%toolpath%SPREADSHEETCOMPARE.EXE" "%temppath%temp.txt"