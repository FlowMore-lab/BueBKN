@echo off
chcp 65001 > nul
title DNS Fix - Google + Cloudflare
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
echo    🌐 Смена DNS на зарубежные серверы
echo ================================================
echo.

:: Показываем список адаптеров (без фильтра)
echo Список сетевых адаптеров:
echo ------------------------------------------------
netsh interface show interface
echo ------------------------------------------------
echo.

set /p "adapter=Введите ИМЯ адаптера (скопируйте из списка выше): "

if "%adapter%"=="" (
    echo Ошибка: имя не введено
    pause
    exit
)

echo.
echo [*] Устанавливаю DNS для "%adapter%"...
netsh interface ip set dns "%adapter%" static 8.8.8.8
netsh interface ip add dns "%adapter%" 1.1.1.1 index=2

if %errorlevel% neq 0 (
    echo.
    echo [ОШИБКА] Не удалось установить DNS.
    echo Проверьте правильность имени адаптера.
    echo Имя должно быть точь-в-точь как в списке.
    pause
    exit
)

echo [*] Очищаю DNS-кэш...
ipconfig /flushdns

echo.
echo [*] Текущие DNS-серверы:
netsh interface ip show dns "%adapter%"

echo.
echo ================================================
echo    ✅ DNS успешно изменён!
echo ================================================
echo.

pause