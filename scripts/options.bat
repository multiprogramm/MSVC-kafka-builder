REM ========== Folders to PATH ==========

REM For download git: https://git-scm.com/download/win
REM If Git folder not in PATH then uncomment and replace git_folder
REM SET PATH=%PATH%;git_folder

REM For download nuget: https://www.nuget.org/downloads
REM If NUGET folder not in PATH then uncomment and replace nuget_folder
SET PATH=%PATH%;C:\kafka

REM For download perl: https://www.activestate.com/products/activeperl/downloads/
REM If PERL folder not in PATH then uncomment and replace perl_folder
REM SET PATH=%PATH%;perl_folder

REM For download nasm: https://www.nasm.us/pub/nasm/releasebuilds/
REM If NASM folder not in PATH then uncomment and replace nasm_folder
REM SET PATH=%PATH%;nasm_folder




REM ========== MSVC++ params ==========

REM From links from Start panel:
SET MSVC_VARS_ALL_FOLDER=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\
SET MSVC_VARS_ALL_NAME=vcvarsall.bat
SET MSVC_32_PARAM=x86
SET MSVC_64_PARAM=amd64
SET TOOLCHAIN=v140
SET BOOST_VS_PARAM=vc14


REM ========== Versions params ==========
SET OPENSSL_VERS=1.1.1
SET OPENSSL_TAG=OpenSSL_1_1_1-stable

SET LIBRDKAFKA_VERS=0.11.6.5
SET LIBRDKAFKA_TAG=v0.11.6-RC5

SET BOOST_TAG=boost-1.69.0

SET CPPKAFKA_VERS=0.2.1
SET CPPKAFKA_TAG=ab002fe119fb8d124d23587be8992b010ab37f4d


REM ========== Ready things ==========

REM BOOST folder
REM If you already have boost then uncomment and set your folder
REM else boost will be checked out from git
REM SET BOOST_DIR=C:\boost

REM Path to Fart.exe
REM If you already have Fart then uncomment and set your path to Fart.exe
REM else fart will be checked out from git
REM SET FART_PATH="C:\Fart\Fart.exe"

REM Path to rcedit.exe
REM If you already have Fart then uncomment and set your path to rcedit.exe
REM else fart will be checked out from git
REM SET RCEDIT_PATH="C:\rcedit\rcedit.exe"





REM ============ Checks =================
REM TODO