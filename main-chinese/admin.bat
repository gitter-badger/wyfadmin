@echo off
title wyfadmin
set wver=Beta 0.3.1
if %1==launch goto go
if %1==wback goto goto
:go
echo [%date% %time%]�汾��:%wver%>>running.log
echo Wyfadmin �汾��%wver%.
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ϵͳʱ��: %date% %time%
echo [%date% %time%]��������>>running.log
:goto
echo [%date% %time%]�ȴ�����>>running.log
set /p com=^>^>
echo [%date% %time%]ִ������: "%com%">>running.log
io %com%
exit