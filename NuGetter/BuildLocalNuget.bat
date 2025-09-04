MSBuild ..\mimalloc.Static.VS2019.sln /p:Configuration=Release  /p:Platform=x64
MSBuild ..\mimalloc.Static.VS2019.sln /p:Configuration=DebugCRT /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build+=1
echo %Build% >ver.txt

c:\work\bin\nuget.exe pack -Version 2.0.7.%Build% mimalloc-trimble.nuspec
