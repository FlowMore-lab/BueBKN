@echo off
chcp 65001 > nul
title BueRKN - Telegram Desktop Fix
color 0A

net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell start -verb runas '%0'
    exit
)

cd /d "%~dp0bin"

taskkill /f /im winws.exe >nul 2>&1

:: Запуск с фильтрацией для Telegram Desktop
start "BueRKN" /min winws.exe ^
--wf-tcp=80,443,5222,8080,8443 --wf-udp=443,3478,3479,3480,50000-50100 ^
--filter-tcp=443 --hostlist-domains=telegram.org,t.me,web.telegram.org,webk.telegram.org,pluto.telegram.org,venus.telegram.org,vega.telegram.org,mars.telegram.org,jupiter.telegram.org,saturn.telegram.org,uranus.telegram.org,neptune.telegram.org,mtproto.telegram.org,core.telegram.org,updates.telegram.org,api.telegram.org --dpi-desync=fake,hostfakesplit --dpi-desync-fake-tls-mod=rnd,dupsid,sni=ya.ru ^
--filter-udp=443 --hostlist-domains=telegram.org,mtproto.telegram.org --dpi-desync=fake --dpi-desync-repeats=6

echo Telegram Desktop fix запущен
pause
