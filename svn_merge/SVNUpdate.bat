call Path.bat
echo off

echo ============================ update Pre ============================
cd %Pre%
svn up --accept theirs-conflict
echo ============================ update Pre ============================

echo;
echo;
echo ============================ update Dev ============================
cd %Dev%
svn up --accept theirs-conflict
echo ============================ update Pre ============================

echo;
echo;
echo ============================ update OL ============================
cd %OL%
svn up --accept theirs-conflict
echo ============================ update Pre ============================
echo;
pause