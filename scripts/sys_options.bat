REM Make current folder == master folder == SCRIPTS_DIR
PUSHD %~dp0
SET SCRIPTS_DIR=%CD%

REM Repository folder
CD ..\
SET REP_DIR=%CD%

REM Dir for logs
SET LOGS_DIR=%REP_DIR%\logs

REM Dir for result files
SET RESULT_DIR=%REP_DIR%\binaries

REM Dir for temp files
SET TMP_DIR=%REP_DIR%\tmp

REM Source files directory
SET SRC_DIR=%REP_DIR%\src

REM BOOST folder
SET BOOST_DIR=%SRC_DIR%\boost

REM Path to Fart.exe
SET FART_PATH="%SRC_DIR%\FartIT\Release\Fart.exe"

REM Path to rcedit.exe
SET RCEDIT_PATH="%SRC_DIR%\rcedit\Default\rcedit.exe"
