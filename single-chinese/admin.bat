@echo off
set wver=Beta 0.3.1
set wvdate=2022.10.29
title wyfadmin
if %1==launch goto go
if %1==wback goto command
if %1==exit goto exit
if %1==dellog goto dlog
if %1==wver goto wyfver
if %1==whelp goto whelp
echo [%date% %time%]�����Ԥ������>>running.log
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
:command
echo [%date% %time%]�ȴ�����>>running.log
set /p com=^>^>
echo [%date% %time%]ִ������:"%com%">>running.log
%0 %com%
exit
:wback
echo [%date% %time%]�޴��󷵻�>>running.log
%0 wback
:exit
echo [%date% %time%]�����˳�>>running.log
exit
:dlog
del running.log
exit
:wyfver
echo wyfadmin �汾��%wver%
echo ������ڣ�%wvdate%
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ��ϵ��ʽ��
echo ����: wyf01299@163.com
echo ��վ: wyf9.bj.bcebos.com
echo [%date% %time%]��ʾ�汾��Ϣ>>running.log
goto wback
:whelp
echo None
echo [%date% %time%]��ʾ���ð���>>running.log
goto wback

