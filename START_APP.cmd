@echo.
@set PATH=%~dp0;%PATH%

::  ����ð����ע�ͣ�ɾ���������׿�������

::  ���� WireGuard �ͻ��� TunSafe
::  CD /D  C:\soft\TunSafe\
::  start TunSafe.exe

::  ���� Shadowsocks �ͻ���
::  CD /D  C:\soft\Shadowsocks
::  start Shadowsocks.exe


::  �� Brook �ͻ��˷���
@set IP_URL=1.2.3.4
@set PASSWORD=brook3999
@set PORT=3999

::  CD /D  C:\soft\Brook
::  start /b  brook client -l 127.0.0.1:2080 -i 127.0.0.1 -s %IP_URL%:%PORT% -p %PASSWORD%
