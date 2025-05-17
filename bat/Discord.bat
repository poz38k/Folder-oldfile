@echo off
title Chatroom

:join

cls
color a
echo chatroom
set /p %username%=Enter Your Name:
echo %usermame% Joined! >> Chat
goto Chatroom
pause

:Chatroom
cls
color a
echo Chatroom
Type Chat
set /p Input= Say something or Preess enter
echo %usermame%: %Input% >> Chat
goto Chatroom
pause