call Path.bat
echo off

echo ============================ update Pre ============================
cd %Pre%
svn up --accept theirs-conflict -q
echo ============================ update Pre ============================

echo;
echo;
echo ============================ update Dev ============================
cd %Dev%
svn up --accept theirs-conflict -q
echo ============================ update Pre ============================

echo;
echo;
echo ============================ update OL ============================
cd %OL%
svn up --accept theirs-conflict -q
echo ============================ update Pre ============================

echo;
echo;
echo ============================ begain merge Dev--OL ============================
cd %~dp0

setlocal enabledelayedexpansion
for /f %%i in (mergedirlist.txt) do (
    set target=%%i
    ::echo !target! >> 1.txt
    echo ************** begain merge !target! 
    cd %OL%!target!
    svn merge %DevSVN%!target! --accept postpone
    echo ************** end merge !target!
)
echo ============================ end merge Dev--OL ============================
echo;
pause