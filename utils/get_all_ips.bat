@echo off
chcp 65001 > nul
title Add to Hosts
color 0A

:: Запуск от администратора
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Запускаем с правами администратора...
    powershell start -verb runas '%0'
    exit
)

cls
echo ========================================
echo    ДОБАВЛЕНИЕ ЗАПИСЕЙ В hosts
echo ========================================
echo.

set "HOSTS=%SystemRoot%\System32\drivers\etc\hosts"

:: Создаём временный файл с новыми записями
set "TEMP_FILE=%TEMP%\hosts_new.txt"

(
echo # === TELEGRAM ===
echo 149.154.167.220 zws4.web.telegram.org
echo 149.154.167.220 vesta.web.telegram.org
echo 149.154.167.220 vesta-1.web.telegram.org
echo 149.154.167.220 venus-1.web.telegram.org
echo 149.154.167.220 telegram.me
echo 149.154.167.220 telegram.dog
echo 149.154.167.220 telegram.space
echo 149.154.167.220 desktop.telegram.org
echo 149.154.167.220 telesco.pe
echo 149.154.167.220 tg.dev
echo 149.154.167.220 telegram.org
echo 149.154.167.220 t.me
echo 149.154.167.220 api.telegram.org
echo 149.154.167.220 td.telegram.org
echo 149.154.167.220 venus.web.telegram.org
echo 149.154.167.220 web.telegram.org
echo 149.154.167.220 kws2-1.web.telegram.org
echo 149.154.167.220 kws2.web.telegram.org
echo 149.154.167.220 kws4-1.web.telegram.org
echo 149.154.167.220 kws4.web.telegram.org
echo 149.154.167.220 zws2-1.web.telegram.org
echo 149.154.167.220 zws2.web.telegram.org
echo 149.154.167.220 zws4-1.web.telegram.org
echo.
echo # === TWITTER / X ===
echo 172.66.0.227 twitter.com
echo.
echo # === DISCORD ===
echo 104.25.158.178 finland10000.discord.media
echo 104.25.158.178 finland10001.discord.media
echo 104.25.158.178 finland10002.discord.media
echo 104.25.158.178 finland10003.discord.media
echo 104.25.158.178 finland10004.discord.media
echo 104.25.158.178 finland10005.discord.media
echo 104.25.158.178 finland10006.discord.media
echo 104.25.158.178 finland10007.discord.media
echo 104.25.158.178 finland10008.discord.media
echo 104.25.158.178 finland10009.discord.media
echo 104.25.158.178 finland10010.discord.media
echo 104.25.158.178 finland10011.discord.media
echo 104.25.158.178 finland10012.discord.media
echo 104.25.158.178 finland10013.discord.media
echo 104.25.158.178 finland10014.discord.media
echo 104.25.158.178 finland10015.discord.media
echo 104.25.158.178 finland10016.discord.media
echo 104.25.158.178 finland10017.discord.media
echo 104.25.158.178 finland10018.discord.media
echo 104.25.158.178 finland10019.discord.media
echo 104.25.158.178 finland10020.discord.media
echo 104.25.158.178 finland10021.discord.media
echo 104.25.158.178 finland10022.discord.media
echo 104.25.158.178 finland10023.discord.media
echo 104.25.158.178 finland10024.discord.media
echo 104.25.158.178 finland10025.discord.media
echo 104.25.158.178 finland10026.discord.media
echo 104.25.158.178 finland10027.discord.media
echo 104.25.158.178 finland10028.discord.media
echo 104.25.158.178 finland10029.discord.media
echo 104.25.158.178 finland10030.discord.media
echo 104.25.158.178 finland10031.discord.media
echo 104.25.158.178 finland10032.discord.media
echo 104.25.158.178 finland10033.discord.media
echo 104.25.158.178 finland10034.discord.media
echo 104.25.158.178 finland10035.discord.media
echo 104.25.158.178 finland10036.discord.media
echo 104.25.158.178 finland10037.discord.media
echo 104.25.158.178 finland10038.discord.media
echo 104.25.158.178 finland10039.discord.media
echo 104.25.158.178 finland10040.discord.media
echo 104.25.158.178 finland10041.discord.media
echo 104.25.158.178 finland10042.discord.media
echo 104.25.158.178 finland10043.discord.media
echo 104.25.158.178 finland10044.discord.media
echo 104.25.158.178 finland10045.discord.media
echo 104.25.158.178 finland10046.discord.media
echo 104.25.158.178 finland10047.discord.media
echo 104.25.158.178 finland10048.discord.media
echo 104.25.158.178 finland10049.discord.media
echo 104.25.158.178 finland10050.discord.media
echo 104.25.158.178 finland10051.discord.media
echo 104.25.158.178 finland10052.discord.media
echo 104.25.158.178 finland10053.discord.media
echo 104.25.158.178 finland10054.discord.media
echo 104.25.158.178 finland10055.discord.media
echo 104.25.158.178 finland10056.discord.media
echo 104.25.158.178 finland10057.discord.media
echo 104.25.158.178 finland10058.discord.media
echo 104.25.158.178 finland10059.discord.media
echo 104.25.158.178 finland10060.discord.media
echo 104.25.158.178 finland10061.discord.media
echo 104.25.158.178 finland10062.discord.media
echo 104.25.158.178 finland10063.discord.media
echo 104.25.158.178 finland10064.discord.media
echo 104.25.158.178 finland10065.discord.media
echo 104.25.158.178 finland10066.discord.media
echo 104.25.158.178 finland10067.discord.media
echo 104.25.158.178 finland10068.discord.media
echo 104.25.158.178 finland10069.discord.media
echo 104.25.158.178 finland10070.discord.media
echo 104.25.158.178 finland10071.discord.media
echo 104.25.158.178 finland10072.discord.media
echo 104.25.158.178 finland10073.discord.media
echo 104.25.158.178 finland10074.discord.media
echo 104.25.158.178 finland10075.discord.media
echo 104.25.158.178 finland10076.discord.media
echo 104.25.158.178 finland10077.discord.media
echo 104.25.158.178 finland10078.discord.media
echo 104.25.158.178 finland10079.discord.media
echo 104.25.158.178 finland10080.discord.media
echo 104.25.158.178 finland10081.discord.media
echo 104.25.158.178 finland10082.discord.media
echo 104.25.158.178 finland10083.discord.media
echo 104.25.158.178 finland10084.discord.media
echo 104.25.158.178 finland10085.discord.media
echo 104.25.158.178 finland10086.discord.media
echo 104.25.158.178 finland10087.discord.media
echo 104.25.158.178 finland10088.discord.media
echo 104.25.158.178 finland10089.discord.media
echo 104.25.158.178 finland10090.discord.media
echo 104.25.158.178 finland10091.discord.media
echo 104.25.158.178 finland10092.discord.media
echo 104.25.158.178 finland10093.discord.media
echo 104.25.158.178 finland10094.discord.media
echo 104.25.158.178 finland10095.discord.media
echo 104.25.158.178 finland10096.discord.media
echo 104.25.158.178 finland10097.discord.media
echo 104.25.158.178 finland10098.discord.media
echo 104.25.158.178 finland10099.discord.media
echo 104.25.158.178 finland10100.discord.media
echo 104.25.158.178 finland10101.discord.media
echo 104.25.158.178 finland10102.discord.media
echo 104.25.158.178 finland10103.discord.media
echo 104.25.158.178 finland10104.discord.media
echo 104.25.158.178 finland10105.discord.media
echo 104.25.158.178 finland10106.discord.media
echo 104.25.158.178 finland10107.discord.media
echo 104.25.158.178 finland10108.discord.media
echo 104.25.158.178 finland10109.discord.media
echo 104.25.158.178 finland10110.discord.media
echo 104.25.158.178 finland10111.discord.media
echo 104.25.158.178 finland10112.discord.media
echo 104.25.158.178 finland10113.discord.media
echo 104.25.158.178 finland10114.discord.media
echo 104.25.158.178 finland10115.discord.media
echo 104.25.158.178 finland10116.discord.media
echo 104.25.158.178 finland10117.discord.media
echo 104.25.158.178 finland10118.discord.media
echo 104.25.158.178 finland10119.discord.media
echo 104.25.158.178 finland10120.discord.media
echo 104.25.158.178 finland10121.discord.media
echo 104.25.158.178 finland10122.discord.media
echo 104.25.158.178 finland10123.discord.media
echo 104.25.158.178 finland10124.discord.media
echo 104.25.158.178 finland10125.discord.media
echo 104.25.158.178 finland10126.discord.media
echo 104.25.158.178 finland10127.discord.media
echo 104.25.158.178 finland10128.discord.media
echo 104.25.158.178 finland10129.discord.media
echo 104.25.158.178 finland10130.discord.media
echo 104.25.158.178 finland10131.discord.media
echo 104.25.158.178 finland10132.discord.media
echo 104.25.158.178 finland10133.discord.media
echo 104.25.158.178 finland10134.discord.media
echo 104.25.158.178 finland10135.discord.media
echo 104.25.158.178 finland10136.discord.media
echo 104.25.158.178 finland10137.discord.media
echo 104.25.158.178 finland10138.discord.media
echo 104.25.158.178 finland10139.discord.media
echo 104.25.158.178 finland10140.discord.media
echo 104.25.158.178 finland10141.discord.media
echo 104.25.158.178 finland10142.discord.media
echo 104.25.158.178 finland10143.discord.media
echo 104.25.158.178 finland10144.discord.media
echo 104.25.158.178 finland10145.discord.media
echo 104.25.158.178 finland10146.discord.media
echo 104.25.158.178 finland10147.discord.media
echo 104.25.158.178 finland10148.discord.media
echo 104.25.158.178 finland10149.discord.media
echo 104.25.158.178 finland10150.discord.media
echo 104.25.158.178 finland10151.discord.media
echo 104.25.158.178 finland10152.discord.media
echo 104.25.158.178 finland10153.discord.media
echo 104.25.158.178 finland10154.discord.media
echo 104.25.158.178 finland10155.discord.media
echo 104.25.158.178 finland10156.discord.media
echo 104.25.158.178 finland10157.discord.media
echo 104.25.158.178 finland10158.discord.media
echo 104.25.158.178 finland10159.discord.media
echo 104.25.158.178 finland10160.discord.media
echo 104.25.158.178 finland10161.discord.media
echo 104.25.158.178 finland10162.discord.media
echo 104.25.158.178 finland10163.discord.media
echo 104.25.158.178 finland10164.discord.media
echo 104.25.158.178 finland10165.discord.media
echo 104.25.158.178 finland10166.discord.media
echo 104.25.158.178 finland10167.discord.media
echo 104.25.158.178 finland10168.discord.media
echo 104.25.158.178 finland10169.discord.media
echo 104.25.158.178 finland10170.discord.media
echo 104.25.158.178 finland10171.discord.media
echo 104.25.158.178 finland10172.discord.media
echo 104.25.158.178 finland10173.discord.media
echo 104.25.158.178 finland10174.discord.media
echo 104.25.158.178 finland10175.discord.media
echo 104.25.158.178 finland10176.discord.media
echo 104.25.158.178 finland10177.discord.media
echo 104.25.158.178 finland10178.discord.media
echo 104.25.158.178 finland10179.discord.media
echo 104.25.158.178 finland10180.discord.media
echo 104.25.158.178 finland10181.discord.media
echo 104.25.158.178 finland10182.discord.media
echo 104.25.158.178 finland10183.discord.media
echo 104.25.158.178 finland10184.discord.media
echo 104.25.158.178 finland10185.discord.media
echo 104.25.158.178 finland10186.discord.media
echo 104.25.158.178 finland10187.discord.media
echo 104.25.158.178 finland10188.discord.media
echo 104.25.158.178 finland10189.discord.media
echo 104.25.158.178 finland10190.discord.media
echo 104.25.158.178 finland10191.discord.media
echo 104.25.158.178 finland10192.discord.media
echo 104.25.158.178 finland10193.discord.media
echo 104.25.158.178 finland10194.discord.media
echo 104.25.158.178 finland10195.discord.media
echo 104.25.158.178 finland10196.discord.media
echo 104.25.158.178 finland10197.discord.media
echo 104.25.158.178 finland10198.discord.media
echo 104.25.158.178 finland10199.discord.media
) > "%TEMP_FILE%"

:: Добавляем записи в hosts
echo [*] Добавляю записи в hosts...
type "%TEMP_FILE%" >> "%HOSTS%"

:: Очищаем DNS кэш
echo [*] Очищаю DNS кэш...
ipconfig /flushdns

echo.
echo ========================================
echo    ✅ ГОТОВО! ЗАПИСИ ДОБАВЛЕНЫ
echo ========================================
echo.

:: Открываем hosts для проверки
notepad "%HOSTS%"

pause