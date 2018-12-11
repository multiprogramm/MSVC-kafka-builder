IF EXIST "%RESULT_DIR%" RD /S /Q "%RESULT_DIR%"
MD "%RESULT_DIR%"

IF EXIST "%RESULT_DIR%\openssl" RD /S /Q "%RESULT_DIR%\openssl"
MD "%RESULT_DIR%\openssl"

IF EXIST "%RESULT_DIR%\librdkafka" RD /S /Q "%RESULT_DIR%\librdkafka"
MD "%RESULT_DIR%\librdkafka"

IF EXIST "%RESULT_DIR%\cppkafka" RD /S /Q "%RESULT_DIR%\cppkafka"
MD "%RESULT_DIR%\cppkafka"



IF EXIST "%LOGS_DIR%\" RD /S /Q "%LOGS_DIR%\"
MD "%LOGS_DIR%\"

IF EXIST "%TMP_DIR%\" RD /S /Q "%TMP_DIR%\"
MD "%TMP_DIR%\"
