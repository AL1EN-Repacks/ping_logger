@echo off
color 0a
title Ping Logger by AL1EN

echo    ##     ##         ##     #######  ##   ## 
echo    ##     ##                ##       ###  ## 
echo   ####    ##       ####     ##       ###  ## 
echo   ## #    ##         ##     #####    ## # ## 
echo  ######   ##         ##     ##       ## # ## 
echo  ##   #   ##         ##     ##       ##  ### 
echo ###   ##  ######   ######   #######  ##   ##
echo Name: Ping Logger
echo Version: 1.0
echo Author: AL1EN 
echo Press Ctrl + C to Stop
set /p IP= Enter IP/Domain:
:top
PING  -n 1 %IP% | FIND "TTL="
ping -n 2 -l 10 127.0.0.1 >nul
ping -t %IP%|cmd /q /v /c "(pause&pause)>nul & for /l %%a in () do (set /p "data=" && echo(!date! !time! !data!)&ping -n 2 localhost>nul" > log.log
GoTo top