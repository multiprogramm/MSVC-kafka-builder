REM LIBRDKAFKA

CD /D "%RESULT_DIR%\librdkafka\debug32"

%RCEDIT_PATH% librdkafka.dll --set-file-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-product-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-version-string "FileDescription" "Debug32/%BOOST_VS_PARAM%"
%RCEDIT_PATH% librdkafka.dll --set-version-string "LegalCopyright" "github.com/edenhill/librdkafka"

CD /D "%RESULT_DIR%\librdkafka\release32"

%RCEDIT_PATH% librdkafka.dll --set-file-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-product-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-version-string "FileDescription" "Release32/%BOOST_VS_PARAM%"
%RCEDIT_PATH% librdkafka.dll --set-version-string "LegalCopyright" "github.com/edenhill/librdkafka"

CD /D "%RESULT_DIR%\librdkafka\debug64"

%RCEDIT_PATH% librdkafka.dll --set-file-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-product-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-version-string "FileDescription" "Debug64/%BOOST_VS_PARAM%"
%RCEDIT_PATH% librdkafka.dll --set-version-string "LegalCopyright" "github.com/edenhill/librdkafka"

CD /D "%RESULT_DIR%\librdkafka\release64"

%RCEDIT_PATH% librdkafka.dll --set-file-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-product-version %LIBRDKAFKA_VERS%
%RCEDIT_PATH% librdkafka.dll --set-version-string "FileDescription" "Release64/%BOOST_VS_PARAM%"
%RCEDIT_PATH% librdkafka.dll --set-version-string "LegalCopyright" "github.com/edenhill/librdkafka"




REM CPPKAFKA
CD /D "%RESULT_DIR%\cppkafka\debug32"

%RCEDIT_PATH% cppkafka.dll --set-file-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-product-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-version-string "FileDescription" "Debug32/%BOOST_TAG%/%BOOST_VS_PARAM%"
%RCEDIT_PATH% cppkafka.dll --set-version-string "LegalCopyright" "github.com/mfontanini/cppkafka"

CD /D "%RESULT_DIR%\cppkafka\release32"

%RCEDIT_PATH% cppkafka.dll --set-file-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-product-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-version-string "FileDescription" "Release32/%BOOST_TAG%/%BOOST_VS_PARAM%"
%RCEDIT_PATH% cppkafka.dll --set-version-string "LegalCopyright" "github.com/mfontanini/cppkafka"

CD /D "%RESULT_DIR%\cppkafka\debug64"

%RCEDIT_PATH% cppkafka.dll --set-file-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-product-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-version-string "FileDescription" "Debug64/%BOOST_TAG%/%BOOST_VS_PARAM%"
%RCEDIT_PATH% cppkafka.dll --set-version-string "LegalCopyright" "github.com/mfontanini/cppkafka"

CD /D "%RESULT_DIR%\cppkafka\release64"

%RCEDIT_PATH% cppkafka.dll --set-file-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-product-version %CPPKAFKA_VERS%
%RCEDIT_PATH% cppkafka.dll --set-version-string "FileDescription" "Release64/%BOOST_TAG%/%BOOST_VS_PARAM%"
%RCEDIT_PATH% cppkafka.dll --set-version-string "LegalCopyright" "github.com/mfontanini/cppkafka"