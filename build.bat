@echo off
pushd %~dp0
md output

echo Building for Windows x64
set GOOS=windows
set GOARCH=amd64
go build -trimpath -ldflags "-s -w -buildid=" -o output/beihangLogin_win_amd64.exe

echo Building for Windows x64 (Hide UI)
set GOOS=windows
set GOARCH=amd64
go build -trimpath -ldflags "-s -w -H windowsgui" -o output/beihangLogin_win_amd64.nogui.exe

echo Building for Linux x64
set GOOS=linux
set GOARCH=amd64
go build -trimpath -ldflags "-s -w -buildid=" -o output/beihangLogin_linux_amd64

echo Building for Linux arm64
set GOOS=linux
set GOARCH=arm64
go build -trimpath -ldflags "-s -w -buildid=" -o output/beihangLogin_linux_arm64

echo Building for Linux armv7
set GOOS=linux
set GOARCH=arm
set GOARM=7
go build -trimpath -ldflags "-s -w -buildid=" -o output/beihangLogin_linux_arm

echo Building for Linux mipsle
set GOOS=linux
set GOARCH=mipsle
set GOMIPS=softfloat
go build -trimpath -ldflags "-s -w -buildid=" -o output/beihangLogin_linux_mipsle
