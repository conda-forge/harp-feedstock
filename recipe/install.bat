if [%PKG_NAME%] == [harp] (
  cmake --install . --component core --config Release
  if errorlevel 1 exit 1
  cmake --install . --component python --config Release
  if errorlevel 1 exit 1
)

if [%PKG_NAME%] == [r-harp] (
  cmake --install . --component r --config Release
  if errorlevel 1 exit 1
)
