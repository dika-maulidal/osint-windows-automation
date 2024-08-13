:: Membuat folder 'scripts' di dalam folder 'Downloads'
cd %userprofile%\Downloads
mkdir Programs

:: Install Sherlock
set /p installSherlock="Apakah Anda ingin menginstal Sherlock? (y/n): "
if /i "%installSherlock%"=="y" (
    cd %userprofile%\Downloads\Programs
    git clone https://github.com/sherlock-project/sherlock.git
    cd sherlock
    pip install -e .
)

:: Install WhatsMyName (wmn)
set /p installWMN="Apakah Anda ingin menginstal WhatsMyName? (y/n): "
if /i "%installWMN%"=="y" (
    cd %userprofile%\Downloads\Programs
    git clone https://github.com/C3n7ral051nt4g3ncy/WhatsMyName-Python.git
    cd WhatsMyName-Python
    pip install -r requirements.txt
)

:: Install SpiderFoot
set /p installSpiderFoot="Apakah Anda ingin menginstal SpiderFoot? (y/n): "
if /i "%installSpiderFoot%"=="y" (
    cd %userprofile%\Downloads\Programs
    git clone https://github.com/smicallef/spiderfoot.git
    cd spiderfoot
    pip install -r requirements.txt
)

:: Install Maigret
set /p installMaigret="Apakah Anda ingin menginstal Maigret? (y/n): "
if /i "%installMaigret%"=="y" (
    cd %userprofile%\Downloads\Programs
    git clone https://github.com/soxoj/maigret
    cd maigret
    pip install .
)

:: Install Blackbird
set /p installBlackbird="Apakah Anda ingin menginstal Blackbird? (y/n): "
if /i "%installBlackbird%"=="y" (
    cd %userprofile%\Downloads\Programs
    git clone https://github.com/p1ngul1n0/blackbird
    cd blackbird
    pip install -r requirements.txt
)

:: Install Sublist3r
set /p installSublist3r="Apakah Anda ingin menginstal Sublist3r? (y/n): "
if /i "%installSublist3r%"=="y" (
    cd %userprofile%\Downloads\Programs
    git clone https://github.com/aboul3la/Sublist3r.git
    cd Sublist3r
    pip install -r requirements.txt
)

:: Install TheHarvester
set /p installTheHarvester="Apakah Anda ingin menginstal TheHarvester? (y/n): "
if /i "%installTheHarvester%"=="y" (
    cd %userprofile%\Downloads\Programs
    git clone https://github.com/laramies/theHarvester.git
    cd theHarvester
    pip install -r requirements.txt
)

echo
echo Install Selesai!
echo
pause
