@echo off
chcp 65001 >nul
title Мужик Юрист — Roblox Hosts Patcher
color 0A

:: ============================================
:: Проверка и запрос прав администратора
:: ============================================
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo =============================================
    echo    МУЖИК ЮРИСТ — Roblox Hosts Patcher
    echo =============================================
    echo.
    echo [!] Нужны права администратора.
    echo     Сейчас появится запрос UAC...
    echo.
    timeout /t 2 >nul

    :: Перезапуск самого себя с правами админа
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

echo.
echo =============================================
echo    МУЖИК ЮРИСТ — Roblox Hosts Patcher
echo =============================================
echo.
echo [OK] Запущено от имени администратора
echo.

set "HOSTS=%SystemRoot%\System32\drivers\etc\hosts"

:: Проверяем, не добавлен ли уже блок
findstr /C:"ROBLOX CDN FIX (добавлено Мужик Юрист)" "%HOSTS%" >nul
if %errorLevel% equ 0 (
    echo Блок Roblox уже есть в hosts. Ничего не добавляю.
    echo.
    pause
    exit /b
)

echo Добавляю записи в самый низ hosts...
echo.

(
echo.
echo # ============================================================
echo # ========== ROBLOX CDN FIX ^(добавлено Мужик Юрист^) ==========
echo # ============================================================
echo # ВНИМАНИЕ: Это может сломать Docker, WSL, VPN, антивирусы
echo # и другие программы, которые используют hosts.
echo # ============================================================
echo.
echo 18.65.39.105 tr.rbxcdn.com
echo 18.64.211.78 tr.rbxcdn.com
echo 18.64.211.88 tr.rbxcdn.com
echo 18.64.211.103 tr.rbxcdn.com
echo 18.64.211.77 tr.rbxcdn.com
echo 18.65.39.105 t0.rbxcdn.com
echo 18.65.39.105 t1.rbxcdn.com
echo 18.65.39.105 t2.rbxcdn.com
echo 18.65.39.105 t3.rbxcdn.com
echo 18.65.39.105 t4.rbxcdn.com
echo 18.65.39.105 t5.rbxcdn.com
echo 18.65.39.105 t6.rbxcdn.com
echo 18.65.39.105 t7.rbxcdn.com
echo 18.64.211.78 t0.rbxcdn.com
echo 18.64.211.78 t1.rbxcdn.com
echo 18.64.211.78 t2.rbxcdn.com
echo 18.64.211.78 t3.rbxcdn.com
echo 18.64.211.78 t4.rbxcdn.com
echo 18.64.211.78 t5.rbxcdn.com
echo 18.64.211.78 t6.rbxcdn.com
echo 18.64.211.78 t7.rbxcdn.com
echo 18.64.211.88 t0.rbxcdn.com
echo 18.64.211.88 t1.rbxcdn.com
echo 18.64.211.88 t2.rbxcdn.com
echo 18.64.211.88 t3.rbxcdn.com
echo 18.64.211.88 t4.rbxcdn.com
echo 18.64.211.88 t5.rbxcdn.com
echo 18.64.211.88 t6.rbxcdn.com
echo 18.64.211.88 t7.rbxcdn.com
echo 18.65.39.105 c0.rbxcdn.com
echo 18.65.39.105 c1.rbxcdn.com
echo 18.65.39.105 c2.rbxcdn.com
echo 18.65.39.105 c3.rbxcdn.com
echo 18.65.39.105 c4.rbxcdn.com
echo 18.65.39.105 c5.rbxcdn.com
echo 18.65.39.105 c6.rbxcdn.com
echo 18.65.39.105 c7.rbxcdn.com
echo 18.64.211.78 c0.rbxcdn.com
echo 18.64.211.78 c1.rbxcdn.com
echo 18.64.211.78 c2.rbxcdn.com
echo 18.64.211.78 c3.rbxcdn.com
echo 18.64.211.78 c4.rbxcdn.com
echo 18.64.211.78 c5.rbxcdn.com
echo 18.64.211.78 c6.rbxcdn.com
echo 18.64.211.78 c7.rbxcdn.com
echo 18.64.211.88 c0.rbxcdn.com
echo 18.64.211.88 c1.rbxcdn.com
echo 18.64.211.88 c2.rbxcdn.com
echo 18.64.211.88 c3.rbxcdn.com
echo 18.64.211.88 c4.rbxcdn.com
echo 18.64.211.88 c5.rbxcdn.com
echo 18.64.211.88 c6.rbxcdn.com
echo 18.64.211.88 c7.rbxcdn.com
echo 18.65.39.105 images.rbxcdn.com
echo 18.65.39.105 static.rbxcdn.com
echo 18.65.39.105 js.rbxcdn.com
echo 18.65.39.105 css.rbxcdn.com
echo 18.65.39.105 apis.rbxcdn.com
echo 18.65.39.105 setup.rbxcdn.com
echo 18.64.211.78 images.rbxcdn.com
echo 18.64.211.78 static.rbxcdn.com
echo 18.64.211.78 js.rbxcdn.com
echo 18.64.211.78 css.rbxcdn.com
echo 18.64.211.78 apis.rbxcdn.com
echo 18.64.211.78 setup.rbxcdn.com
echo 18.64.211.88 images.rbxcdn.com
echo 18.64.211.88 static.rbxcdn.com
echo 18.64.211.88 js.rbxcdn.com
echo 18.64.211.88 css.rbxcdn.com
echo 18.64.211.88 apis.rbxcdn.com
echo 18.64.211.88 setup.rbxcdn.com
echo 18.65.39.105 www.rbxcdn.com
echo 18.65.39.105 rbxcdn.com
echo 18.64.211.78 www.rbxcdn.com
echo 18.64.211.78 rbxcdn.com
echo 18.64.211.88 www.rbxcdn.com
echo 18.64.211.88 rbxcdn.com
echo 18.65.39.105 sc0aws.rbxcdn.com
echo 18.64.211.78 sc0aws.rbxcdn.com
echo 18.64.211.88 sc0aws.rbxcdn.com
echo 18.65.39.105 sc0gcp.rbxcdn.com
echo 18.64.211.78 sc0gcp.rbxcdn.com
echo 18.64.211.88 sc0gcp.rbxcdn.com
echo 18.65.39.105 www-assets.rbxcdn.com
echo 18.64.211.78 www-assets.rbxcdn.com
echo 18.64.211.88 www-assets.rbxcdn.com
echo 18.65.39.105 hls-segments.rbxcdn.com
echo 18.64.211.78 hls-segments.rbxcdn.com
echo 18.64.211.88 hls-segments.rbxcdn.com
echo 18.65.39.105 c0aws.rbxcdn.com
echo 18.64.211.78 c0aws.rbxcdn.com
echo 18.64.211.88 c0aws.rbxcdn.com
echo 18.65.39.105 fts.rbxcdn.com
echo 18.64.211.78 fts.rbxcdn.com
echo 18.64.211.88 fts.rbxcdn.com
echo 18.65.39.105 cdn.rbxcdn.com
echo 18.64.211.78 cdn.rbxcdn.com
echo 18.64.211.88 cdn.rbxcdn.com
echo 18.65.39.105 www-assets-preview.rbxcdn.com
echo 18.64.211.78 www-assets-preview.rbxcdn.com
echo 18.64.211.88 www-assets-preview.rbxcdn.com
echo 18.65.39.105 sc0.rbxcdn.com
echo 18.65.39.105 sc1.rbxcdn.com
echo 18.65.39.105 sc2.rbxcdn.com
echo 18.65.39.105 sc3.rbxcdn.com
echo 18.65.39.105 sc4.rbxcdn.com
echo 18.65.39.105 sc5.rbxcdn.com
echo 18.65.39.105 sc6.rbxcdn.com
echo 18.65.39.105 sc7.rbxcdn.com
echo 18.64.211.78 sc0.rbxcdn.com
echo 18.64.211.78 sc1.rbxcdn.com
echo 18.64.211.78 sc2.rbxcdn.com
echo 18.64.211.78 sc3.rbxcdn.com
echo 18.64.211.78 sc4.rbxcdn.com
echo 18.64.211.78 sc5.rbxcdn.com
echo 18.64.211.78 sc6.rbxcdn.com
echo 18.64.211.78 sc7.rbxcdn.com
echo 18.64.211.88 sc0.rbxcdn.com
echo 18.64.211.88 sc1.rbxcdn.com
echo 18.64.211.88 sc2.rbxcdn.com
echo 18.64.211.88 sc3.rbxcdn.com
echo 18.64.211.88 sc4.rbxcdn.com
echo 18.64.211.88 sc5.rbxcdn.com
echo 18.64.211.88 sc6.rbxcdn.com
echo 18.64.211.88 sc7.rbxcdn.com
echo 18.65.39.105 setup-cfly.rbxcdn.com
echo 18.65.39.105 setup-ll.rbxcdn.com
echo 18.65.39.105 setup-hw.rbxcdn.com
echo 18.65.39.105 setup-ak.rbxcdn.com
echo 18.64.211.78 setup-cfly.rbxcdn.com
echo 18.64.211.78 setup-ll.rbxcdn.com
echo 18.64.211.78 setup-hw.rbxcdn.com
echo 18.64.211.78 setup-ak.rbxcdn.com
echo 18.64.211.88 setup-cfly.rbxcdn.com
echo 18.64.211.88 setup-ll.rbxcdn.com
echo 18.64.211.88 setup-hw.rbxcdn.com
echo 18.64.211.88 setup-ak.rbxcdn.com
) >> "%HOSTS%"

echo.
echo [УСПЕХ] Записи добавлены в самый низ hosts!
echo.
echo Теперь выполни команду:
echo ipconfig /flushdns
echo.
echo Мужик Юрист закончил работу.
echo.
pause