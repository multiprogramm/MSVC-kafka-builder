REM ========== Folders to PATH ==========

REM If Git folder not in PATH then uncomment and replace git_folder
REM SET PATH=%PATH%;git_folder

REM If NUGET folder not in PATH then uncomment and replace nuget_folder
SET PATH=%PATH%;C:\kafka

REM If PERL folder not in PATH then uncomment and replace perl_folder
REM SET PATH=%PATH%;perl_folder

REM If NASM folder not in PATH then uncomment and replace nasm_folder
REM SET PATH=%PATH%;nasm_folder




REM ========== MSVC++ params ==========

REM From links from Start panel:
SET MSVC_VARS_ALL_FOLDER=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\
SET MSVC_VARS_ALL_NAME=vcvarsall.bat
SET MSVC_32_PARAM=x86
SET MSVC_64_PARAM=amd64
REM SET TOOLCHAIN=v140 REM TODO is need?




REM ========== Another params ==========

REM Add Submodule with...
SET REPLACE_ALL_PATH=C:\kafka\ReplaceAll.exe

REM BOOST folder TODO....
SET BOOST_DIR=C:\kafka\all_kafka_rep\src\boost