@echo off

:: Build
wix.exe build -ext WixToolset.BootstrapperApplications.wixext -o demo-bundle.exe bundle.wxs

:: Extract
wix burn extract demo-bundle.exe -outba ".\extract\ba" -out ".\extract\out"

demo-bundle.exe /help