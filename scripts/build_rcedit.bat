CD /D "%REP_DIR%"
git submodule update --init "src/rcedit"

CD /D "%SRC_DIR%\rcedit"

CALL "%SCRIPTS_DIR%\set_msvs_32.bat"

msbuild rcedit.sln /p:Configuration=Default /p:Platform=Win32 /target:Clean
msbuild rcedit.sln /p:Configuration=Default /p:Platform=Win32 /p:PlatformToolset=%TOOLCHAIN%

SET RCEDIT_PATH="%SRC_DIR%\rcedit\Default\rcedit.exe"
