CD /D "%REP_DIR%"
git submodule update --init "src/openssl"
CD src/openssl
git checkout "%OPENSSL_TAG%"

CALL "%SCRIPTS_DIR%\set_msvs_32.bat"

XCOPY "%SRC_DIR%\openssl" "%TMP_DIR%\openssl\debug32\" /S /E /R /Y
CD "%TMP_DIR%\openssl\debug32\"
perl Configure VC-WIN32 --debug --prefix=%RESULT_DIR%\openssl\debug32
nmake
REM nmake test
nmake install


XCOPY "%SRC_DIR%\openssl" "%TMP_DIR%\openssl\release32\" /S /E /R /Y
CD "%TMP_DIR%\openssl\release32\"
perl Configure VC-WIN32 --prefix=%RESULT_DIR%\openssl\release32
nmake
REM nmake test
nmake install




CALL "%SCRIPTS_DIR%\set_msvs_64.bat"

XCOPY "%SRC_DIR%\openssl" "%TMP_DIR%\openssl\debug64\" /S /E /R /Y
CD "%TMP_DIR%\openssl\debug64\"
perl Configure VC-WIN64A --debug --prefix=%RESULT_DIR%\openssl\debug64
nmake
REM nmake test
nmake install


XCOPY "%SRC_DIR%\openssl" "%TMP_DIR%\openssl\release64\" /S /E /R /Y
CD "%TMP_DIR%\openssl\release64\"
perl Configure VC-WIN64A --prefix=%RESULT_DIR%\openssl\release64
nmake
REM nmake test
nmake install
