REM Check rights
net.exe session 1>NUL 2>NUL || (ECHO This script requires elevated rights. & EXIT /b 1)

CALL "sys_options.bat"


CALL "%SCRIPTS_DIR%\options.bat"
CALL "%SCRIPTS_DIR%\clean_all.bat"

IF NOT DEFINED FART_PATH (
	CALL "%SCRIPTS_DIR%\build_fart.bat" > "%LOGS_DIR%\build_fart.txt"
	IF NOT DEFINED FART_PATH (
		ECHO "FART_PATH is not defined!"
	)
)

IF NOT DEFINED RCEDIT_PATH (
	CALL "%SCRIPTS_DIR%\build_rcedit.bat" > "%LOGS_DIR%\build_rcedit.txt"
	IF NOT DEFINED RCEDIT_PATH (
		ECHO "RCEDIT_PATH is not defined!"
	)
)

CALL "%SCRIPTS_DIR%\build_openssl.bat" > "%LOGS_DIR%\build_openssl.txt"
CALL "%SCRIPTS_DIR%\build_librdkafka.bat" > "%LOGS_DIR%\build_librdkafka.txt"

IF NOT DEFINED BOOST_DIR (
	CALL "%SCRIPTS_DIR%\build_boost.bat" > "%LOGS_DIR%\build_boost.txt"
	IF NOT DEFINED BOOST_DIR (
		ECHO "BOOST_DIR is not defined!"
	)
)

CALL "%SCRIPTS_DIR%\build_cppkafka.bat" > "%LOGS_DIR%\build_cppkafka.txt"
