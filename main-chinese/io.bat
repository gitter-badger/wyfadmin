set wver=Beta 0.3.1
set wvdate=2022.10.20
:go
if %1==exit goto exit
if %1==dellog goto dlog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==wplugins goto wsplugin
echo [%date% %time%]�����Ԥ������>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]����>>running.log
admin back
:wopenplugin
echo [%date% %time%]���в��: "%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:dlog
del running.log
exit
:exit
echo [%date% %time%]�����˳�>>running.log
exit
:wver
echo Wyfadmin �汾: %wver%
echo ����: Chinese
echo ������ڣ�%wvdate%
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ��Ŀ��ҳ: https://github.com/wyf01239/wyfadmin
echo ��ϵ��ʽ��
echo ����: wyf01299@163.com
echo [%date% %time%]��ʾ�汾��Ϣ>>running.log
goto wback
:whelp
echo �ڲ�����:
echo exit          �˳�����
echo dellog        ɾ����־�ļ�(running.log)���˳�
echo wver          ��ʾ�汾��Ϣ
echo whelp         ��ʾ����ʾ
echo wplugins      ��ʾ����б�
echo.
echo [%date% %time%]��ʾ���ð���>>running.log
goto wback
:wsplugin
echo.
echo ����б�:
dir /a:-d-h-s /b plugins\
echo.
goto wback
