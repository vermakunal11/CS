@echo off
REM Step 1: Download Python 3.11 installer
echo Downloading Python 3.11 installer...
curl -o python-3.11.0-amd64.exe https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe

REM Step 2: Install Python 3.11
echo Installing Python 3.11 silently...
start /wait python-3.11.0-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

REM Step 3: Create virtual environment
echo Creating virtual environment 'sem6'...
py -3.11 -m venv sem6

REM Step 4: Activate virtual environment and install packages
echo Activating virtual environment and installing packages...
call sem6\Scripts\activate

REM Use a single line for pip install to avoid line continuation issues
pip install --upgrade pip
pip install numpy pandas matplotlib seaborn opencv-python scikit-learn statsmodels scikit-image tensorflow keras h5py pillow jupyter jupyterlab ipykernel tensorflow-hub torch torchvision

echo.
echo ✅ Setup complete. Virtual environment 'sem6' is ready.
pause
