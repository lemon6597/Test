# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_dog_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED dog_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(dog_FOUND FALSE)
  elseif(NOT dog_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(dog_FOUND FALSE)
  endif()
  return()
endif()
set(_dog_CONFIG_INCLUDED TRUE)

# output package information
if(NOT dog_FIND_QUIETLY)
  message(STATUS "Found dog: 0.0.0 (${dog_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'dog' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${dog_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(dog_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${dog_DIR}/${_extra}")
endforeach()
