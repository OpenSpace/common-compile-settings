##########################################################################################
#                                                                                        #
# OpenSpace                                                                              #
# Common Compile Settings                                                                #
#                                                                                        #
# Copyright (c) 2014-2025                                                                #
#                                                                                        #
# Permission is hereby granted, free of charge, to any person obtaining a copy of this   #
# software and associated documentation files (the "Software"), to deal in the Software  #
# without restriction, including without limitation the rights to use, copy, modify,     #
# merge, publish, distribute, sublicense, and/or sell copies of the Software, and to     #
# permit persons to whom the Software is furnished to do so, subject to the following    #
# conditions:                                                                            #
#                                                                                        #
# The above copyright notice and this permission notice shall be included in all copies  #
# or substantial portions of the Software.                                               #
#                                                                                        #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,    #
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A          #
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT     #
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF   #
# CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE   #
# OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                          #
##########################################################################################

if (MSVC)
  option(OPTIMIZATION_ENABLE_AVX "Enable AVX instruction set for compilation" OFF)
  option(OPTIMIZATION_ENABLE_AVX2 "Enable AVX2 instruction set for compilation" OFF)
  option(OPTIMIZATION_ENABLE_AVX512 "Enable AVX2 instruction set for compilation" OFF)
  option(OPTIMIZATION_ENABLE_OTHER_OPTIMIZATIONS "Enable other optimizations, like LTCG, intrinsics, etc")

  if (OPTIMIZATION_ENABLE_AVX AND OPTIMIZATION_ENABLE_AVX2)
    message(FATAL_ERROR "Cannot enable AVX and AVX2 instructions simultaneously")
  endif ()

  if (OPTIMIZATION_ENABLE_AVX AND OPTIMIZATION_ENABLE_AVX512)
    message(FATAL_ERROR "Cannot enable AVX and AVX512 instructions simultaneously")
  endif ()

  if (OPTIMIZATION_ENABLE_AVX2 AND OPTIMIZATION_ENABLE_AVX512)
    message(FATAL_ERROR "Cannot enable AVX2 and AVX512 instructions simultaneously")
  endif ()

  include(platforms/msvc)
elseif (CMAKE_CXX_COMPILER_ID MATCHES ".*Clang")
  include(platforms/clang)
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  include(platforms/gcc)
else ()
  message(FATAL_ERROR "Unknown compiler ${CMAKE_CXX_COMPILER_ID}")
endif ()

function (set_compile_settings target)
  if (NOT TARGET compile_settings)
    add_library(compile_settings INTERFACE)

    # Switching to cxx_std_23 triggers a bug in Clang17
    # https://github.com/llvm/llvm-project/issues/61415
    target_compile_features(compile_settings INTERFACE cxx_std_20)
    set_compile_options(compile_settings)
  endif ()

  target_link_libraries(${target} PRIVATE compile_settings)
endfunction ()
