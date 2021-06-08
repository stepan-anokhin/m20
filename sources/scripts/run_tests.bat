
set m20=%1
set test_dir=%2
set timestamp=%DATE:/=-%_%TIME::=-%
set timestamp=%timestamp: =%
set run_dir="%test_dir%\run-%timestamp%-%RANDOM%"

echo "RUN TESTS"
echo
echo "M-20 Emulator:     %M20%"
echo "Tests Directory:   %test_dir%"
echo "Run Directory:     %run_dir%"
echo

