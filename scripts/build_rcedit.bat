CD /D "%SRC_DIR%\rcedit"

CALL "%SCRIPTS_DIR%\set_msvs_32.bat"

msbuild rcedit.sln /p:Configuration=Default /p:Platform=Win32 /target:Clean
msbuild rcedit.sln /p:Configuration=Default /p:Platform=Win32 /p:PlatformToolset=%TOOLCHAIN%
