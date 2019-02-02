@echo off
setlocal enableextensions enabledelayedexpansion
mode con:cols=120 lines=9999

if [%1]==[] (
echo "I feel really dumb writing a help file for this but here we are"
echo.
echo './produce.bat $server:$port $topicname 
echo.
exit /b
)

./kafka-console-producer.bat --broker-list %1 --topic %2
