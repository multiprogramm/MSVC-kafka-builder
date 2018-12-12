CD /D "%SRC_DIR%"

cmake ^
	-DBOOST_INCLUDEDIR="%BOOST_DIR%" ^
	-DBOOST_ROOT="%BOOST_DIR%" ^
	-DRDKAFKA_INCLUDE_DIR="%TMP_DIR%\librdkafka\include" ^
	-DRDKAFKA_LIBRARY="%TMP_DIR%\librdkafka\lib\librdkafka.lib" ^
	-DRDKAFKA_ROOT_DIR="%TMP_DIR%\librdkafka" ^
	-G "Visual Studio 14 Win64" ^
	-S "cppkafka" ^
	-B "%TMP_DIR%\cppkafka64"

%FART_PATH% -c -- "%TMP_DIR%\cppkafka64\src\cppkafka.vcxproj" ^
	"%TMP_DIR%\librdkafka\include" ^
	"%RESULT_DIR%\librdkafka\include"

%FART_PATH% -c -- "%TMP_DIR%\cppkafka64\src\cppkafka.vcxproj" ^
	"%TMP_DIR%\librdkafka\lib\librdkafka.lib" ^
	"%RESULT_DIR%\librdkafka\$(configuration)$(platformarchitecture)\librdkafka.lib"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka64\src\cppkafka.vcxproj" ^
	"<GenerateDebugInformation>false</GenerateDebugInformation>" ^
	"<GenerateDebugInformation>true</GenerateDebugInformation>"
	
REM TODO KISS!
%FART_PATH% -c -- "%TMP_DIR%\cppkafka64\src\cppkafka.vcxproj" ^
	"<DebugInformationFormat>" ^
	"<DebugInformationFormat>~"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka64\src\cppkafka.vcxproj" ^
	"<DebugInformationFormat>~ProgramDatabase</DebugInformationFormat>" ^
	"<DebugInformationFormat>EditAndContinue</DebugInformationFormat>"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka64\src\cppkafka.vcxproj" ^
	"<DebugInformationFormat>~" ^
	"<DebugInformationFormat>ProgramDatabase</DebugInformationFormat>"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka64\src\cppkafka.vcxproj" ^
	"      </DebugInformationFormat>" ^
	"      "




cmake ^
	-DBOOST_INCLUDEDIR="%BOOST_DIR%" ^
	-DBOOST_ROOT="%BOOST_DIR%" ^
	-DRDKAFKA_INCLUDE_DIR="%TMP_DIR%\librdkafka\include" ^
	-DRDKAFKA_LIBRARY="%TMP_DIR%\librdkafka\lib\librdkafka.lib" ^
	-DRDKAFKA_ROOT_DIR="%TMP_DIR%\librdkafka" ^
	-G "Visual Studio 14" ^
	-S "cppkafka" ^
	-B "%TMP_DIR%\cppkafka32"


%FART_PATH% -c -- "%TMP_DIR%\cppkafka32\src\cppkafka.vcxproj" ^
	"%TMP_DIR%\librdkafka\include" ^
	"%RESULT_DIR%\librdkafka\include"

%FART_PATH% -c -- "%TMP_DIR%\cppkafka32\src\cppkafka.vcxproj" ^
	"%TMP_DIR%\librdkafka\lib\librdkafka.lib" ^
	"%RESULT_DIR%\librdkafka\$(configuration)$(platformarchitecture)\librdkafka.lib"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka32\src\cppkafka.vcxproj" ^
	"<GenerateDebugInformation>false</GenerateDebugInformation>" ^
	"<GenerateDebugInformation>true</GenerateDebugInformation>"
	
REM TODO KISS!
%FART_PATH% -c -- "%TMP_DIR%\cppkafka32\src\cppkafka.vcxproj" ^
	"<DebugInformationFormat>" ^
	"<DebugInformationFormat>~"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka32\src\cppkafka.vcxproj" ^
	"<DebugInformationFormat>~ProgramDatabase</DebugInformationFormat>" ^
	"<DebugInformationFormat>EditAndContinue</DebugInformationFormat>"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka32\src\cppkafka.vcxproj" ^
	"<DebugInformationFormat>~" ^
	"<DebugInformationFormat>ProgramDatabase</DebugInformationFormat>"
	
%FART_PATH% -c -- "%TMP_DIR%\cppkafka32\src\cppkafka.vcxproj" ^
	"      </DebugInformationFormat>" ^
	"      "



MD /D "%RESULT_DIR%\cppkafka"


CALL "%SCRIPTS_DIR%\set_msvs_32.bat"
CD /D "%TMP_DIR%\cppkafka32"

msbuild cppkafka.sln /t:cppkafka ^
	/p:Configuration=Debug ^
	/p:Platform=Win32 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "src\Debug" "%RESULT_DIR%\cppkafka\debug32\" /R /Y
XCOPY "lib\Debug" "%RESULT_DIR%\cppkafka\debug32\" /R /Y

msbuild cppkafka.sln ^
	/t:cppkafka ^
	/p:Configuration=Release ^
	/p:Platform=Win32 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "src\Release" "%RESULT_DIR%\cppkafka\release32\" /R /Y
XCOPY "lib\Release" "%RESULT_DIR%\cppkafka\release32\" /R /Y



CALL "%SCRIPTS_DIR%\set_msvs_64.bat"
CD /D "%TMP_DIR%\cppkafka64"

msbuild cppkafka.sln /t:cppkafka ^
	/p:Configuration=Debug ^
	/p:Platform=x64 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "src\Debug" "%RESULT_DIR%\cppkafka\debug64\" /R /Y
XCOPY "lib\Debug" "%RESULT_DIR%\cppkafka\debug64\" /R /Y

msbuild cppkafka.sln /t:cppkafka ^
	/p:Configuration=Release ^
	/p:Platform=x64 ^
	/p:PlatformToolset=%TOOLCHAIN%
XCOPY "src\Release" "%RESULT_DIR%\cppkafka\release64\" /R /Y
XCOPY "lib\Release" "%RESULT_DIR%\cppkafka\release64\" /R /Y


REM Includes
XCOPY "%SRC_DIR%\cppkafka\include\cppkafka" "%RESULT_DIR%\cppkafka\include\cppkafka\" /S /E /R /Y
