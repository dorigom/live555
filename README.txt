# FileName: README.txt
# Author: Sangmin Kim <mini@icantek.com>

live.2014.11.12

[liveMedia/MediaSession.cpp]

    } else if (strcmp(mediumName(), "application") == 0) {
        createSimpleRTPSource = True;
    } else {
    env().setResultMsg("RTP payload format unknown or not supported");
    break;
    }


[liveMedia/RTCP.cpp]

    static unsigned const maxRTCPPacketSize = 9000;//1456;

    //envir() << "RTCPInstance error: Hit limit when reading incoming packet over TCP. Increase \"maxRTCPPacketSize\"\n";




[arm-hisiv100nptl-linux]

# cp config.arm-hisiv100nptl-linux live.xxx/
# cd live.xxx
# ./genMakefiles arm-hisiv100nptl-linux
# make



[arm-hisiv200-linux]

# cp config.arm-hisiv200-linux live.xxx/
# cd live.xxx
# ./genMakefiles arm-hisiv200-linux
# make



[x86_64-linux]

# cp config.x86_64-linux live.xxx/
# cd live.xxx
# ./genMakefiles x86_64-linux
# make



[VC++ Command Prompt]

> copy win32config live.xxx/
> cd live.xxx
> genWindowsMakefiles.cmd

cd liveMedia
nmake /f liveMedia.mak
cd ..\UsageEnvironment
nmake /f UsageEnvironment.mak
cd ..\groupsock
nmake /f groupsock.mak
cd ..\BasicUsageEnvironment
nmake /f BasicUsageEnvironment.mak
cd ..



[C++ Builder Command Prompt]

> copy win32config.Borland live.xxx/
> copy genWindowsMakefiles.Borland.cmd live.xxx/
> cd live.xxx
> genWindowsMakefiles.Borland.cmd

cd liveMedia
make -f liveMedia.mak
cd ..\UsageEnvironment
make -f UsageEnvironment.mak
cd ..\groupsock
make -f groupsock.mak
cd ..\BasicUsageEnvironment
make -f BasicUsageEnvironment.mak
cd ..
