cmake --install . --component core --config Release
if errorlevel 1 exit 1
cmake --install . --component python --config Release
if errorlevel 1 exit 1
