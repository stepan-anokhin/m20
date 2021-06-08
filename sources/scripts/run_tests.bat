@echo off

set m20=%~f1
set test_dir=%~f2
set timestamp=%DATE:/=-%_%TIME::=-%
set timestamp=%timestamp: =%
set run_dir=%test_dir%\run-%timestamp%-%RANDOM%

echo RUN TESTS
echo.
echo M-20 Emulator:     %M20%
echo Tests Directory:   %test_dir%
echo Run Directory:     %run_dir%
echo.

rem Copy files to run directory
cd %test_dir%
if not exist %run_dir% mkdir %run_dir%
for %%I in (*.simh *.cdr *.m20 *.drum0) do copy %%I %run_dir% >NUL
cd %run_dir%

rem Execute tests
set test_count=0
for /r %%I in (test_*.simh) do set /a test_count=test_count+1
echo Running %test_count% tests

for /r %%I in (test_*.simh) do (
    %m20% %%I
)