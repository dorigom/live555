@Echo OFF
SETLOCAL
for %%I in (%0) do %%~dI
for %%I in (%0) do cd "%%~pI"
cd liveMedia
del /Q liveMedia.mak
type Makefile.head ..\win32config.Borland Makefile.tail > liveMedia.mak
cd ../groupsock
del /Q groupsock.mak
type Makefile.head ..\win32config.Borland Makefile.tail > groupsock.mak
cd ../UsageEnvironment
del /Q UsageEnvironment.mak
type Makefile.head ..\win32config.Borland Makefile.tail > UsageEnvironment.mak
cd ../BasicUsageEnvironment
del /Q BasicUsageEnvironment.mak
type Makefile.head ..\win32config.Borland Makefile.tail > BasicUsageEnvironment.mak
cd ../testProgs
del /Q testProgs.mak
type Makefile.head ..\win32config.Borland Makefile.tail > testProgs.mak
cd ../mediaServer
del /Q mediaServer.mak
type Makefile.head ..\win32config.Borland Makefile.tail > mediaServer.mak
cd ../proxyServer
del /Q proxyServer.mak
type Makefile.head ..\win32config.Borland Makefile.tail > proxyServer.mak

ENDLOCAL
