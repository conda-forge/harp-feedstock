cmake --build . --target install --config Release
if errorlevel 1 exit 1

if [%PKG_NAME%] == [harp] (
  rd /s /q %LIBRARY_PREFIX%\lib\R\site-library\harp
  if errorlevel 1 exit 1
)

if [%PKG_NAME%] == [r-harp] (
  rd /s /q %LIBRARY_PREFIX%\bin
  if errorlevel 1 exit 1
  rd /s /q %LIBRARY_PREFIX%\share
  if errorlevel 1 exit 1
  rd /s /q %LIBRARY_PREFIX%\include
  if errorlevel 1 exit 1
  del %LIBRARY_PREFIX%\lib\libharp*
  if errorlevel 1 exit 1
  del %LIBRARY_PREFIX%\lib\python*
  if errorlevel 1 exit 1
)
