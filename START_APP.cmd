?@TITLE ����Brook�ͻ���
@echo.
@set PATH=%~dp0;%PATH%

::  ����ð����ע�ͣ�ɾ���������׿�������

::  ���� WireGuard �ͻ��� TunSafe
::  CD /D  C:\soft\TunSafe\
::  start TunSafe.exe

::  ���� Shadowsocks �ͻ���
::  CD /D  C:\soft\Shadowsocks
::  start Shadowsocks.exe

::  BROOK + KcpTun + Udp2Raw �ͻ��˽ӿ�����
@set SERVER_IP=1.2.3.4
@set PORT=2999
@set PASSWORD=wg2999
@set BK_PORT=3999

@start /b kcp-client -r "127.0.0.1:4000" -l ":%BK_PORT%" --key %PASSWORD% -mode fast2 -mtu 1300
@start /b udp2raw -c -r%SERVER_IP%:%PORT% -l0.0.0.0:4000 -k %PASSWORD% --raw-mode faketcp


::  �� Brook �ͻ��˷���
set IP_URL=127.0.0.1
set PASSWORD=wg2999
set PORT=3999

CD /D  C:\soft\Brook
start /b  brook client -l 127.0.0.1:2080 -i 127.0.0.1 -s %IP_URL%:%PORT% -p %PASSWORD%

