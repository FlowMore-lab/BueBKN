@echo off
chcp 65001 > nul
title BueRKN - POWER MODE
color 0A

:: Запуск от администратора
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Запускаем с правами администратора...
    powershell start -verb runas '%0'
    exit
)

cls
echo ================================================
echo    🛡 BueRKN - POWER MODE
echo ================================================
echo.

cd /d "%~dp0bin"

if not exist "winws.exe" (
    echo [ОШИБКА] winws.exe не найден
    pause
    exit
)

taskkill /f /im winws.exe >nul 2>&1

echo [*] Запуск...
echo.

start "BueRKN" /min winws.exe ^
--wf-tcp=80,443,2053,2083,2087,2096,8443 --wf-udp=443,19294-19344,50000-50100 ^
--filter-udp=443 --hostlist="..\lists\list-general.txt" --hostlist-exclude="..\lists\list-exclude.txt" --ipset-exclude="..\lists\ipset-exclude.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="quic_initial_www_google_com.bin" --new ^
--filter-udp=19294-19344,50000-50100 --dpi-desync=fake --dpi-desync-ttl=5 --filter-l7=discord,stun --dpi-desync-repeats=6 --new ^
--filter-tcp=2053,2083,2087,2096,8443 --hostlist-domains=discord.media --dpi-desync=fake,hostfakesplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=www.google.com --dpi-desync-hostfakesplit-mod=host=www.google.com,altorder=1 --dpi-desync-fooling=ts --new ^
--filter-tcp=443 --hostlist="..\lists\list-google.txt" --ip-id=zero --dpi-desync=fake,hostfakesplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=www.google.com --dpi-desync-hostfakesplit-mod=host=www.google.com,altorder=1 --dpi-desync-fooling=ts --new ^
--filter-tcp=80,443 --hostlist="..\lists\list-general.txt" --hostlist="..\lists\list-whatsapp.txt" --hostlist="..\lists\list-telegram.txt" --hostlist-exclude="..\lists\list-exclude.txt" --ipset-exclude="..\lists\ipset-exclude.txt" --dpi-desync=fake --dpi-desync-ttl=5 --dpi-desync-fake-tls-mod=rnd,dupsid,sni=ya.ru --new ^
--filter-udp=443 --ipset="..\lists\ipset-all.txt" --hostlist="..\lists\list-whatsapp.txt" --hostlist="..\lists\list-telegram.txt" --hostlist-exclude="..\lists\list-exclude.txt" --ipset-exclude="..\lists\ipset-exclude.txt" --dpi-desync=fake --dpi-desync-ttl=5 --dpi-desync-repeats=6 --dpi-desync-fake-quic="quic_initial_www_google_com.bin" --new ^
--filter-tcp=80,443 --ipset="..\lists\ipset-all.txt" --hostlist-exclude="..\lists\list-exclude.txt" --ipset-exclude="..\lists\ipset-exclude.txt" --dpi-desync=fake,hostfakesplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=ya.ru --dpi-desync-hostfakesplit-mod=host=ya.ru,altorder=1 --dpi-desync-fooling=ts

echo.
echo ================================================
echo    ✅ ЗАПУЩЕНО!
echo ================================================
echo.
pause