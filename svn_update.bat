
@echo off
cls
color 2f

::工程目录
set Client_Path=F:\branch_1009\
set Doc_Path=F:\DOC\

echo.
echo --------------------------  SVN Update ------------------------------------------------
svn update %Client_Path% --accept mine-full
::svn update %Doc_Path% --accept mine-full

pause