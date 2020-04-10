@echo off
chcp 65001
set toolpath=%~dp0
echo %~1> "%toolpath%temp.txt"
echo %~2>> "%toolpath%temp.txt"
"%toolpath%SPREADSHEETCOMPARE.EXE" "%toolpath%temp.txt"