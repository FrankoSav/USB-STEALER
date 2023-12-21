@echo off
setlocal enabledelayedexpansion

set "sourceFolder=C:\Users\%USERNAME%"
set "destinationFolder=.\Results"

IF NOT EXIST "%destinationFolder%" MD "%destinationFolder%"

cd /d "%destinationFolder%"

for %%d in (Desktop Documents Pictures Videos) do (
    set "sourcePath=!sourceFolder!\%%d"
    if exist "!sourcePath!" (
        xcopy /s /e /y "!sourcePath!" ".\"
    )
)

exit
