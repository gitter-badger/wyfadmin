set wver=Beta 2.1.0
set wvdate=2022.8.11
:go
if %1==exit goto exit
if %1==dellog goto dlog
if %1==error goto error
if %1==cls goto cls
if %1==wver goto wyfver
if %1==sysver goto systemver
if %1==whelp goto wyfhelp
echo [%date% %time%]�����Ԥ������>>running.log
%1 %2 %3 %4 %5 %6 %7 %8 %9
:back
echo [%date% %time%]����ѭ��>>running.log
admin back
:dlog
del running.log
exit
:exit
echo [%date% %time%]�����˳�>>running.log
exit
:cls
cls
goto back
:wyfver
echo wyfadmin �汾��%wver%
echo ������ڣ�%wvdate%
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ��Ŀ��ҳ��https://github.com/wyf01239/wyfadmin
echo ��ϵ��ʽ��
echo ���䣺wyf01299@163.com
echo ��վ��wyf9.bj.bcebos.com
echo [%date% %time%]��ʾ�汾��Ϣ>>running.log
goto back
:systemver
ver
start %windir%\system32\winver.exe
goto back
:wyfhelp
echo None
echo [%date% %time%]��ʾ���ð���>>running.log
goto back