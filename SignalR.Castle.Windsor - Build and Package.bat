@echo off
powershell.exe -NoProfile -ExecutionPolicy unrestricted -Command "& {Import-Module '.\Tools\psake.4.2.0.1\tools\psake.psm1'; invoke-psake .\SignalR.Castle.Windsor.ps1 package; if ($lastexitcode -ne 0) {write-host "ERROR: $lastexitcode" -fore RED; exit $lastexitcode} }"
pause