# This module tries to find libraries and include files
#
# <PREFIX>_FOUND                    do not use library, if false
# <PREFIX>_INCLUDE_DIRS             path where to find headers
# <PREFIX>_LIBRARY_DIRS             path where to find dynamic lib
# <PREFIX>_LIBRARIES                dynamic libraries to link
# <PREFIX>_STATIC_INCLUDE_DIRS      path where to find static headers
# <PREFIX>_STATIC_LIBRARY_DIRS      path where to find static lib
# <PREFIX>_STATIC_LIBRARIES         static libraries to link
#
# This works only on Linux

message(STATUS "looking for ImageMagick++-dev")

# 1. Load PkgConfig to safely read Ubuntu's system package flags
find_package(PkgConfig REQUIRED)

# 2. Automatically discover all ImageMagick header paths and shared libraries
pkg_check_modules(IMAGEMAGICK++ REQUIRED Magick++)
