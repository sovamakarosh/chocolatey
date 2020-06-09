@echo off

rem -------------------------------------------------------------
rem  Build package for chocolatey.
rem -------------------------------------------------------------

@SetLocal EnableExtensions EnableDelayedExpansion

rem  Get package name.
cd ..\
for %%a in (".") do set CURRENT_DIR_NAME=%%~na
cd ./src

echo ===== Build "%CURRENT_DIR_NAME%" package ====

set "PACKAGE_NAME=%CURRENT_DIR_NAME%"
set "SRC_DIR=%CD%"
set "BUILD_DIR=..\build\%PACKAGE_NAME%"

if exist "%BUILD_DIR%" (
	for %%i IN (%BUILD_DIR%\*) DO del %%i
) else (
	mkdir %BUILD_DIR%
)

rem  Create package.
call cpack -y
move "%SRC_DIR%\*.nupkg" "%BUILD_DIR%"

if not "%1" == "1" (
	pause
)

@endlocal