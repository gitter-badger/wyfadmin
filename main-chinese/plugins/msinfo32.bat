@echo off
if "%1"=="" io whelpmore msinfo32
if "%1"=="" io whelpmore msinfo32
if %1==/install goto installing
if %1==get goto getting
if %1==get-txt goto gettingtxt
admin wback
:installing
if exist helps\msinfo32.txt del helps\msinfo32.txt
echo ���:msinfo32 v1.0>>plugins\msinfo32.txt
echo by wyf9.2023.1.7>>plugins\msinfo32.txt
echo ����:msinfo32.exe>>plugins\msinfo32.txt
echo.>>plugins\msinfo32.txt
echo msinfo32 {get/get-txt} [file]>>plugins\msinfo32.txt
echo get:���ϵͳ��Ϣ(.nfo), ��ʹ��msinfo32.exe��>>plugins\msinfo32.txt
echo get-txt:���ϵͳ��Ϣ(.txt), ��ֱ��ʹ�ü��±���>>plugins\msinfo32.txt
echo file:Ҫ��������ļ�(������׺)>>plugins\msinfo32.txt
echo.>>plugins\msinfo32.txt
echo ʾ��:>>plugins\msinfo32.txt
echo msinfo32 get testfile>>plugins\msinfo32.txt
echo msinfo32 get-txt e:\wyf9Desktop\testtxt>>plugins\msinfo32.txt


:getting
if "%2"=="" msinfo32 /nfo files\msinfo32.nfo&&echo flie dir:%cd%\files\msinfo32.nfo&&admin wback
if "%2"==" " msinfo32 /nfo files\msinfo32.nfo&&echo flie dir:%cd%\files\msinfo32.nfo&&admin wback
msinfo32 /nfo %2.nfo
echo file dir:%2
admin wback
:gettingtxt
if "%2"=="" msinfo32 /report files\msinfo32.txt&&echo flie dir:%cd%\files\msinfo32.txt&&admin wback
if "%2"==" " msinfo32 /report files\msinfo32.txt&&echo flie dir:%cd%\files\msinfo32.txt&&admin wback
msinfo32 /report %2.txt
echo file dir:%2
admin wback