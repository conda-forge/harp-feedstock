if [%PKG_NAME%] == [harp] (
  cmake --build . --component core --target install --config Release
  if errorlevel 1 exit 1
  cmake --build . --component python --target install --config Release
  if errorlevel 1 exit 1
)

if [%PKG_NAME%] == [r-harp] (
  cmake --build . --component r --target install --config Release
  if errorlevel 1 exit 1
)
