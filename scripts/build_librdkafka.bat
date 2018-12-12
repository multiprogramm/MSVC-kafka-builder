CD /D "%SRC_DIR%\librdkafka\win32"

CALL "%SCRIPTS_DIR%\set_msvs_32.bat"

nuget restore librdkafka.sln

REM FIX project
%FART_PATH% -c -- "librdkafka.vcxproj" ^
	"C:\OpenSSL-Win32\include" ^
	"%RESULT_DIR%\openssl\$(configuration)$(platformarchitecture)\include"
	
%FART_PATH% -c -- "librdkafka.vcxproj" ^
	"C:\OpenSSL-Win64\include" ^
	"%RESULT_DIR%\openssl\$(configuration)$(platformarchitecture)\include"
	
	
%FART_PATH% -c -- "librdkafka.vcxproj" ^
	"C:\OpenSSL-Win32\lib\VC\static" ^
	"%RESULT_DIR%\openssl\$(configuration)$(platformarchitecture)\lib"
	
%FART_PATH% -c -- "librdkafka.vcxproj" ^
	"C:\OpenSSL-Win64\lib\VC\static" ^
	"%RESULT_DIR%\openssl\$(configuration)$(platformarchitecture)\lib"
	
	
%FART_PATH% -c -- "librdkafka.vcxproj" ^
	"libeay32MT.lib" ^
	"libcrypto.lib"
	
%FART_PATH% -c -- "librdkafka.vcxproj" ^
	"ssleay32MT.lib" ^
	"libssl.lib"




REM msbuild librdkafka.sln /p:Configuration=Debug /p:Platform=Win32 /target:Clean
msbuild librdkafka.sln /t:librdkafka;librdkafkacpp ^
	/p:Configuration=Debug ^
	/p:Platform=Win32 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "outdir\v140\Win32\Debug" "%RESULT_DIR%\librdkafka\debug32\"

REM msbuild librdkafka.sln /p:Configuration=Release /p:Platform=Win32 /target:Clean
msbuild librdkafka.sln /t:librdkafka;librdkafkacpp ^
	/p:Configuration=Release ^
	/p:Platform=Win32 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "outdir\v140\Win32\Release" "%RESULT_DIR%\librdkafka\release32\"



CALL "%SCRIPTS_DIR%\set_msvs_64.bat"

REM msbuild librdkafka.sln /p:Configuration=Debug /p:Platform=x64 /target:Clean
msbuild librdkafka.sln /t:librdkafka;librdkafkacpp ^
	/p:Configuration=Debug ^
	/p:Platform=x64 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "outdir\v140\x64\Debug" "%RESULT_DIR%\librdkafka\debug64\"

REM msbuild librdkafka.sln /p:Configuration=Release /p:Platform=x64 /target:Clean
msbuild librdkafka.sln /t:librdkafka;librdkafkacpp ^
	/p:Configuration=Release ^
	/p:Platform=x64 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "outdir\v140\x64\Release" "%RESULT_DIR%\librdkafka\release64\"


REM include
MD "%RESULT_DIR%\librdkafka\include\librdkafka\"
COPY "..\src\rdkafka.h" "%RESULT_DIR%\librdkafka\include\librdkafka\rdkafka.h"





REM For cmake

MD "%TMP_DIR%\librdkafka\include\librdkafka\"
COPY "..\src\rdkafka.h" "%TMP_DIR%\librdkafka\include\librdkafka\rdkafka.h"

XCOPY "%RESULT_DIR%\librdkafka\release64" "%TMP_DIR%\librdkafka\lib\"