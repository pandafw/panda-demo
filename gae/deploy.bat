appcfg update dist/war
if errorlevel 1 goto error

:success
exit /b 0

:error
echo !!!! error !!!!
pause
exit /b 1
