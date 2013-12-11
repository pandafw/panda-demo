call ant.bat prepare build
if errorlevel 1 goto error

:success
exit /b 0

:error
echo !!!! error !!!!
pause
exit /b 1
