cmake -DHARP_BUILD_R=True
if errorlevel 1 exit 1

cmake --install . --component r --config Release
if errorlevel 1 exit 1
