@echo off

setlocal

set XPERF_CMDLINE=xperf.exe -stop -d c:\temp\merged.etl

if exist c:\temp goto :TMPDIREXISTS
md c:\temp

:TMPDIREXISTS
echo.
echo INFO: Invoking xperf to stop the session...
echo CmdLine: ^(%XPERF_CMDLINE%^)
echo.
%XPERF_CMDLINE%

if %ERRORLEVEL% NEQ 0 (
    echo. 
    echo FAILED!
    echo.
) else (
    echo. 
    echo SUCCESS. 
    echo.
)
