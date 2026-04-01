@echo off
:: ==========================================
:: INSTRUCCIONES DE USO:
:: Para subir tus cambios a GitHub, tienes 2 opciones:
::
:: OPCION 1: Hacer doble clic sobre este archivo "subir_cambios.bat" desde tu carpeta.
::
:: OPCION 2: Abrir una terminal en VS Code y escribir exactamente esto y darle a Enter:
::           .\subir_cambios.bat
::
:: ==========================================

:: Buscar donde esta instalado Git
set "GIT_CMD=git"
if exist "C:\Program Files\Git\cmd\git.exe" set "GIT_CMD=C:\Program Files\Git\cmd\git.exe"
if exist "%LOCALAPPDATA%\Programs\Git\cmd\git.exe" set "GIT_CMD=%LOCALAPPDATA%\Programs\Git\cmd\git.exe"

echo ==========================================
echo   Subiendo cambios a Joel's Universe...
echo ==========================================
echo.

:: 1. Anadimos todos los archivos nuevos o modificados
"%GIT_CMD%" add .

:: 2. Guardamos los cambios con un mensaje automatico de la fecha/hora
set "datetime=%date% %time%"
"%GIT_CMD%" commit -m "Actualizacion: %datetime%"

:: 3. Subimos a GitHub
echo.
echo ==========================================
echo   Enviando al servidor de GitHub...
echo ==========================================
"%GIT_CMD%" push origin main

echo.
echo ==========================================
echo   OK! Tus cambios estan en internet.
echo   (Recuerda que tardan 1 o 2 minutos en verse)
echo.
echo   Tu web esta viva aqui:
echo   https://JDavid-2005.github.io/joels-universe/
echo ==========================================
pause
