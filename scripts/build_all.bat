REM Check rights
net.exe session 1>NUL 2>NUL || (ECHO This script requires elevated rights. & EXIT /b 1)


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





CALL "%SCRIPTS_DIR%\options.bat"
CALL "%SCRIPTS_DIR%\clean_all.bat"
CALL "%SCRIPTS_DIR%\build_openssl.bat" > "%LOGS_DIR%\build_openssl.txt"
CALL "%SCRIPTS_DIR%\build_librdkafka.bat" > "%LOGS_DIR%\build_librdkafka.txt"
CALL "%SCRIPTS_DIR%\build_cppkafka.bat" > "%LOGS_DIR%\build_cppkafka.txt"
