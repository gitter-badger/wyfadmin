@echo off
set wver=Beta 0.3.1
set wvdate=2022.11.13
title wyfadmin
if %1==launch goto go
if %1==wback goto goto
if %1==exit goto exit
if %1==wdellog goto wdellog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==wplugins goto wsplugin
echo [%date% %time%]ִ�з��ڲ�����>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:go
echo ==========>>running.log
echo [%date% %time%]��������>>running.log
echo [%date% %time%]����:Chinese(����)>>running.log
echo [%date% %time%]�汾��:%wver%>>running.log
echo Wyfadmin �汾��%wver%.
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ϵͳʱ�䣻%date% %time%
echo [%date% %time%]��������>>running.log
:goto
echo [%date% %time%]�ȴ�����>>running.log
set /p com=^>^>
echo [%date% %time%]ִ������:"%com%">>running.log
%0 %com%
exit
:wback
echo [%date% %time%]����>>running.log
%0 wback
:wopenplugin
echo [%date% %time%]���в��: "%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
:exit
echo [%date% %time%]�����˳�>>running.log
exit
:wdellog
del running.log
exit
:wver
echo wyfadmin �汾��%wver%
echo ������ڣ�%wvdate%
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ��ϵ��ʽ��
echo ����: wyf01299@163.com
echo ��վ: wyf9.bj.bcebos.com
echo [%date% %time%]��ʾ�汾��Ϣ>>running.log
goto wback
:whelp
echo �ڲ�����:
echo exit           �˳�����
echo wdellog        ɾ����־�ļ�(running.log)���˳�
echo wver           ��ʾ�汾��Ϣ
echo whelp          ��ʾ�˰�����Ϣ
echo wplugins       ��ʾ����б�
echo [%date% %time%]��ʾ���ð���>>running.log
goto wback
:wsplugin
dir /a:-d-h-s /b plugins\
echo.
goto wback