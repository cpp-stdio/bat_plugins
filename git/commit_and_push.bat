Rem https:// ����f�[�^���R�~�b�g���܂��B

@echo on

Set FILE_NAME=XXXXX
Set BRANCH=XXXXX
Set GIT_HTTP_PROXY=XXXXX
Set GIT_PASSWORD=XXXXX

cd %~dp0%
cd ../
call get_current_time\Pattern1.bat

@echo %CURRENT_TIME%�ɊJ�n���܂�

cd %~dp0%
cd ../../

If Exist %FILE_NAME% (
    Rem ���ϐ��̒x���W�J
    setlocal enabledelayedexpansion

    Set MESSAGE=%FILE_NAME% was committed ^in %CURRENT_TIME%

    cd %FILE_NAME%
    git add .
    Rem git status

    git commit -m "!MESSAGE!"
    git push origin main:main
) Else (
    echo %FILE_NAME%�Ƃ����t�H���_���Ȃ����߁A�R�~�b�g�ł��܂���ł���
)

Rem �S�����Ƃ����p�r�ł͂Ȃ�����
PAUSE
