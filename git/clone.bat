Rem https:// ����f�[�^���N���[�����܂��B

@echo on

Set FILE_NAME=XXXXX
Set BRANCH=XXXXX
Set GIT_HTTP_PROXY=XXXXX
Set GIT_PASSWORD=XXXXX

cd %~dp0%
cd ../../

If Exist %FILE_NAME% (
    cd %FILE_NAME%
    git pull %BRANCH%
    echo %FILE_NAME%���X�V���܂����B
) Else (
    git clone https://cpp-stdio:%GIT_PASSWORD%@%GIT_HTTP_PROXY% %FILE_NAME%
    cd %FILE_NAME%
    git checkout -b %BRANCH%
    echo %FILE_NAME%���N���[�����܂����B
)

Rem �S�����Ƃ����p�r�ł͂Ȃ�����
PAUSE
