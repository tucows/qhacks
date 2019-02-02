@echo off
setlocal enableextensions enabledelayedexpansion
mode con:cols=120 lines=9999

if [%1]==[] (
echo "Here's a help command for this crappy script also oh god how do i windows oh god help"
echo.
echo './consume.bat $server $topicname [--from-beginning]'
echo.
exit /b
)

./kafka-console-consumer.bat --bootstrap-server %1 %3 --topic %2
