rem �ò���ɶ�������
rem ����:wyf9 2022.10.3
@echo off
set pluginname=%0
title Wyfadin - Plugin "%pluginname:plugins\=%"
rem ----------
cls
echo ��
timeout /t 1 /nobreak>nul
cls
echo �ߺ�
timeout /t 1 /nobreak>nul
cls
echo �ߺߺ�
timeout /t 1 /nobreak>nul
set test=�ߺߺ�
:test
cls
echo %test%
set test=%test%��
goto test
rem ----------
admin back