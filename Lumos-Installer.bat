ECHO Start

:: Create Phase1 Directory
mkdir Phase1
cd Phase1

:: Create Backend Directory
mkdir Backend

:: Create Frontend Directory
mkdir Frontend

:: Create Reports Directory
mkdir Reports

:::: Clone Video Repository
git clone https://github.com/xtoolNH/Videos.git

::: Clone Software Repository
git clone https://github.com/xtoolNH/Software.git

:::: Clone all Backend Repositories
cd Backend
git clone https://github.com/xtoolNH/node-neurosky.git
git clone https://github.com/xtoolNH/emotions.git
git clone https://github.com/xtoolNH/data-normalizer.git
git clone https://github.com/xtoolNH/RPA.git
git clone https://github.com/xtoolNH/mouse_clicks.git

:::: Install all Backend Repositories

:: Install node-neurosky Repository
cd node-neurosky
call setup.bat

:: Install Emotions Repository
cd ..
cd emotions
call setup.bat

:: Install mouse_clicks Repository
cd ..
cd mouse_clicks
call setup.bat


:: Get back to Base directory
cd ..\..

:::: Clone all Frontend Repositories
cd Frontend
git clone https://github.com/xtoolNH/xToolWeb.git

:::: Install all Frontend Repositories

:: Install xToolWeb Repository
cd xToolWeb
call setup.bat

:: Get back to Base directory
cd ..\..

ECHO End