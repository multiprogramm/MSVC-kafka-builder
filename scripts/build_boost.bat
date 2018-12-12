CD /D "%REP_DIR%"
git submodule update --init "src/boost"
CD src/boost
git checkout "%BOOST_TAG%"
git submodule update --init --recursive

CALL bootstrap.bat %BOOST_VS_PARAM%
b2 headers

SET BOOST_DIR=%SRC_DIR%\boost