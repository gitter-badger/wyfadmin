@echo off
:started
cls
:startnocls
echo ---�˵�---
echo s - ��ʼ
echo e - �˳�
echo v - �汾
:setting
set jzqcom=null
set /p jzqcom=^>
if %jzqcom%==s goto newgame
if %jzqcom%==e cls&&admin wback
if %jzqcom%==v goto version
goto started
:version
cls
echo ������ v1.0 by wyf9 and xhc861.2022.12.19
goto startnocls
:newgame
echo notice:
echo ������ʽ:��ͬexcel,��Ҫ�����ڵڶ��е�����,����"b3"����(a/b/c���� 1/2/3����)
echo "��"��ʾû��
echo ��һ������Ĭ�ϰ���
echo ��������ո񣬻�ʹ�������!
echo ��ѡ��ģʽ:
echo 1.˫��(�����˲ٿ�ͬһ̨����) by wyf9
echo 2.�˻�(δ���� ��������)by xhc861
echo 0.����������
echo ����ѡ��
:newgamechoose
set /p jzqnc=^>
if %jzqnc%==1 goto mode1start
if %jzqnc%==2 goto mode2
if %jzqnc%==0 goto started
goto newgamechoose
:mode1start
echo Loading...
set jzqdown=none
set a1=��
set a2=��
set a3=��
set b1=��
set b2=��
set b3=��
set c1=��
set c2=��
set c3=��
set alltick=0
set whitetick=0
set blacktick=0
:mode1white
set jzqnow=w
cls
echo ģʽ:˫�� / �����ֵ�:���� 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
set jzqdown=null
set /p jzqdown=^>
:mode1whiteio
if %jzqdown%==null goto mode1white
if %jzqdown%==q goto started
if %jzqdown%==j goto mode1black
if %jzqdown%==a1 (if %a1%==�� set a1=��&&goto mode1whiteio2)
if %jzqdown%==a2 (if %a2%==�� set a2=��&&goto mode1whiteio2)
if %jzqdown%==a3 (if %a3%==�� set a3=��&&goto mode1whiteio2)
if %jzqdown%==b1 (if %b1%==�� set b1=��&&goto mode1whiteio2)
if %jzqdown%==b2 (if %b2%==�� set b2=��&&goto mode1whiteio2)
if %jzqdown%==b3 (if %b3%==�� set b3=��&&goto mode1whiteio2)
if %jzqdown%==c1 (if %c1%==�� set c1=��&&goto mode1whiteio2)
if %jzqdown%==c2 (if %c2%==�� set c2=��&&goto mode1whiteio2)
if %jzqdown%==c3 (if %c3%==�� set c3=��&&goto mode1whiteio2)
goto mode1white
:mode1whiteio2
set /a alltick=%alltick%+1
set /a whitetick=%whitetick%+1
if %a1%==�� if %a2%==�� if %a3%==�� goto mode1whitewin
if %b1%==�� if %b2%==�� if %b3%==�� goto mode1whitewin
if %c1%==�� if %c2%==�� if %c3%==�� goto mode1whitewin
if %a1%==�� if %b1%==�� if %c1%==�� goto mode1whitewin
if %a2%==�� if %b2%==�� if %c2%==�� goto mode1whitewin
if %a3%==�� if %b3%==�� if %c3%==�� goto mode1whitewin
if %a1%==�� if %b2%==�� if %c3%==�� goto mode1whitewin
if %a3%==�� if %b2%==�� if %c1%==�� goto mode1whitewin
if not %a1%==�� if not %a3%==�� if not %b2%==�� if not %c1%==�� if not %c3%==�� goto nowin
if %alltick%==8 goto nowin
goto mode1black
:mode1black
set jzqnow=b
cls
echo ģʽ:˫�� / �����ֵ�:���� 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
set jzqdown=null
set /p jzqdown=^>
:mode1blackio
if %jzqdown%==null goto mode1black
if %jzqdown%==q goto started
if %jzqdown%==j goto mode1white
if %jzqdown%==a1 if %a1%==�� set a1=��&&goto mode1blackio2
if %jzqdown%==a2 if %a2%==�� set a2=��&&goto mode1blackio2
if %jzqdown%==a3 if %a3%==�� set a3=��&&goto mode1blackio2
if %jzqdown%==b1 if %b1%==�� set b1=��&&goto mode1blackio2
if %jzqdown%==b2 if %b2%==�� set b2=��&&goto mode1blackio2
if %jzqdown%==b3 if %b3%==�� set b3=��&&goto mode1blackio2
if %jzqdown%==c1 if %c1%==�� set c1=��&&goto mode1blackio2
if %jzqdown%==c2 if %c2%==�� set c2=��&&goto mode1blackio2
if %jzqdown%==c3 if %c3%==�� set c3=��&&goto mode1blackio2
goto mode1black
:mode1blackio2
set /a alltick=%alltick%+1
set /a blacktick=%blacktick%+1
if %a1%==�� if %a2%==�� if %a3%==�� goto mode1blackwin
if %b1%==�� if %b2%==�� if %b3%==�� goto mode1blackwin
if %c1%==�� if %c2%==�� if %c3%==�� goto mode1blackwin
if %a1%==�� if %b1%==�� if %c1%==�� goto mode1blackwin
if %a2%==�� if %b2%==�� if %c2%==�� goto mode1blackwin
if %a3%==�� if %b3%==�� if %c3%==�� goto mode1blackwin
if %a1%==�� if %b2%==�� if %c3%==�� goto mode1blackwin
if %a3%==�� if %b2%==�� if %c1%==�� goto mode1blackwin
if not %a1%==�� if not %a3%==�� if not %b2%==�� if not %c1%==�� if not %c3%==�� goto nowin
if %alltick%==8 goto nowin
goto mode1white
:mode1whitewin
cls
echo ģʽ:˫�� / �����ֵ�:Null 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
echo.
echo �׷�Ӯ��!
echo r���¿�ʼ/q����������
:mode1whitewin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto newgame
if %wzqchoose%==q goto started
goto mode1whitewin2
:mode1blackwin
cls
echo ģʽ:˫�� / �����ֵ�:Null 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
echo.
echo �ڷ�Ӯ��!
echo r���¿�ʼ/q����������
:mode1blackwin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto newgame
if %wzqchoose%==q goto started
goto mode1blackwin2
:nowin
cls
echo ģʽ:˫�� / �����ֵ�:Null 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
echo.
echo ƽ��!
echo r���¿�ʼ/q����������
:nowin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto newgame
if %wzqchoose%==q goto started
goto nowin2

:mode2start
echo 1145141919810
copy 1 1
exit