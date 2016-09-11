@echo off

tasklist | findstr /I "nginx.exe" > nul
if %errorlevel% == 0 (
    taskkill /F /IM nginx.exe > nul
)

tasklist | findstr /I "php-cgi-spawner.exe" > nul
if %errorlevel% == 0 (
    taskkill /F /IM php-cgi-spawner.exe > nul
)

tasklist | findstr /I "php-cgi.exe" > nul
if %errorlevel% == 0 (
    taskkill /F /IM php-cgi.exe > nul
)

tasklist | findstr /I "redis-server.exe" > nul
if %errorlevel% == 0 (
    taskkill /F /IM redis-server.exe > nul
)

tasklist | findstr /I "mongod.exe" > nul
if %errorlevel% == 0 (
    taskkill /F /IM mongod.exe > nul
)

tasklist | findstr /I "mysqld.exe" > nul
if %errorlevel% == 0 (
    taskkill /F /IM mysqld.exe > nul
)

