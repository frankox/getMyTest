@echo off
setlocal
set "pagina=%~dp0apri-verifica.html"
if not exist "%pagina%" (
    echo Errore: file apri-verifica.html non trovato.
    exit /b 1
)
start "" "%pagina%"
exit /b %errorlevel%
