CD /D "%REP_DIR%"
git submodule update --init "src/FartIT"

CD /D "%SRC_DIR%\FartIT"

CALL "%SCRIPTS_DIR%\set_msvs_32.bat"

msbuild Fart.sln /p:Configuration=Release /p:Platform=Win32 /target:Clean
msbuild Fart.sln /p:Configuration=Release /p:Platform=Win32 /p:PlatformToolset=v140

SET FART_PATH="%SRC_DIR%\FartIT\Release\Fart.exe"
