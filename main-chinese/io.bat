set wver=Beta 2.1.0
set wvdate=2022.8.11
:go
if %1==wback goto wback
if %1==exit goto exit
if %1==dellog goto dlog
if %1==cls goto wcls
if %1==wver goto wver
if %1==sysver goto systemver
if %1==whelp goto whelp
echo [%date% %time%]�����Ԥ������>>running.log
if exist plugins\%1 goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]��������>>running.log
admin back
:wopenplugin
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
echo test...
pause
:dlog
del running.log
exit
:exit
echo [%date% %time%]�����˳�>>running.log
exit
:wcls
cls
goto wback
:wver
echo Wyfadmin �汾��%wver%
echo ����:Chinese
echo ������ڣ�%wvdate%
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ��Ŀ��ҳ��https://github.com/wyf01239/wyfadmin
echo ��ϵ��ʽ��
echo ���䣺wyf01299@163.com
echo [%date% %time%]��ʾ�汾��Ϣ>>running.log
goto wback
:systemver
ver
start %windir%\system32\winver.exe
goto wback
:whelp
echo None
echo [%date% %time%]��ʾ���ð���>>running.log
goto wback