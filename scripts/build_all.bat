REM Check rights
net.exe session 1>NUL 2>NUL || (ECHO This script requires elevated rights. & EXIT /b 1)

CALL "sys_options.bat"


CALL "%SCRIPTS_DIR%\options.bat"
CALL "%SCRIPTS_DIR%\clean_all.bat"

CALL "%SCRIPTS_DIR%\build_fart.bat"
REM TODO CHECK FART EXIST

CALL "%SCRIPTS_DIR%\build_rcedit.bat"
REM TODO CHECK RCEDIT EXIST

CALL "%SCRIPTS_DIR%\build_openssl.bat" > "%LOGS_DIR%\build_openssl.txt"
CALL "%SCRIPTS_DIR%\build_librdkafka.bat" > "%LOGS_DIR%\build_librdkafka.txt"
CALL "%SCRIPTS_DIR%\build_cppkafka.bat" > "%LOGS_DIR%\build_cppkafka.txt"
