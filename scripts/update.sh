#!/bin/bash

find . -name options -exec sed -i 's/JGB_BUILD_MAKE_OPTIONS=/MAKE_OPTIONS=/g' {} \;
find . -name options -exec sed -i 's/JGB_BUILD_CONFIGURE_OPTIONS=/CONFIGURE_OPTIONS=/g' {} \;
find . -name options -exec sed -i 's/JGB_BUILD_MAKE_INSTALL_OPTIONS=/MAKE_INSTALL_OPTIONS=/g' {} \;
find . -name options -exec sed -i 's/JGB_BUILD_CMAKE_OPTIONS+=\" /CMAKE_OPTIONS=\"/g' {} \;
find . -name options -exec sed -i 's/{JGB_BUILD_CONFIG_HOST\[\${JGB_BUILD_BUILD_ARCH}-\${JGB_BUILD_HOST_ARCH}\]}/{JGB_BUILD_HOST}/g' {} \;
find . -name options -exec sed -i 's/\[ \"\$JGB_BUILD_BUILD_ARCH\" != \$JGB_BUILD_HOST_ARCH \]/is_cross_compile/g' {} \;
find . -name options -exec sed -i 's/\[ \$JGB_BUILD_BUILD_ARCH != \$JGB_BUILD_HOST_ARCH \]/is_cross_compile/g' {} \;
