rem ����:wyf9 2022.10.3
set pluginname=%0
title Wyfadin - Plugin "%pluginname:plugins\=%"
rem ----------
if not exist plugins\notes\ md plugins\notes\
echo.
if %1==help goto help
if %1==read goto read
if %1==new goto new
if %1==del goto delnote
if %1==all goto all
if %1==exit admin back
goto end
:help
echo ����:
echo help   ��ʾ����ʾ
echo new    ����һ����ʾ (note new ���� ����).
echo read   ��ȡ��ʾ (note read ����).
echo del    ɾ����ʾ (note del ����).
echo all    ��ʾ������ʾ(dir).
echo.
goto end
echo.
:new
echo %3>plugins\notes\note_%2.txt
echo.
echo �Ѵ���һ����ʾ: "%2" ,����: "%3" ,λ�� "%cd%\plugins\notes\note_%2.txt".
echo.
goto end
:delnote
echo.
echo ����:
type plugins\notes\note_%2.txt
echo.
del plugins\notes\note_%2.txt
echo ��ɾ����ʾ "%2".
echo.
goto end
:read
echo.
echo "%2" ������:
type plugins\notes\note_%2.txt
echo.
goto end
:all
dir plugins\notes\
goto end
:end
rem ----------
admin back