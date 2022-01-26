Rem https:// からデータをコミットします。

@echo on

Set FILE_NAME=XXXXX
Set BRANCH=XXXXX
Set GIT_HTTP_PROXY=XXXXX
Set GIT_PASSWORD=XXXXX

cd %~dp0%
cd ../
call get_current_time\Pattern1.bat

@echo %CURRENT_TIME%に開始します

cd %~dp0%
cd ../../

If Exist %FILE_NAME% (
    Rem 環境変数の遅延展開
    setlocal enabledelayedexpansion

    Set MESSAGE=%FILE_NAME% was committed ^in %CURRENT_TIME%

    cd %FILE_NAME%
    git add .
    Rem git status

    git commit -m "!MESSAGE!"
    git push origin main:main
) Else (
    echo %FILE_NAME%というフォルダがないため、コミットできませんでした
)

Rem 全自動という用途ではないため
PAUSE
