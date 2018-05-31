@echo off
SETLOCAL

SET _screen="@HID\VID_04F3&PID_24A0&COL01\6&24326EA7&0&0000"

SET action=%1

if "%1"=="disable" (
  set command="disable"
) else (
  set command="enable"
)


"C:\Program Files (x86)\Windows Kits\10\Tools\x64\devcon.exe" %command% %_screen%