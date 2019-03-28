set "VS150COMNTOOLS=c:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build"
set CMAKE_GENERATOR=Visual Studio 15 2017 Win64
set DISTUTILS_USE_SDK=1
if not defined DevEnvDir (
	call "%VS150COMNTOOLS%\vcvarsall.bat" x64 -vcvars_ver=14.11
)
rmdir /Q /S build
python setup.py build develop