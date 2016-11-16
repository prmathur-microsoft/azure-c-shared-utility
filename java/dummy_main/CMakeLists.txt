#Copyright (c) Microsoft. All rights reserved.
#Licensed under the MIT license. See LICENSE file in the project root for full license information.

cmake_minimum_required(VERSION 2.8.11)
include_directories(${SHARED_UTIL_INC_FOLDER})

compileAsC99()

set(binaryName mips_shared_util)
set(main_c_files
${CMAKE_CURRENT_LIST_DIR}/dummy_main.c
)

# Required to disable -rdynamic option during static linking. <CMAKE Bug>
SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
SET(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

ADD_EXECUTABLE(${binaryName} ${main_c_files})
target_link_libraries(${binaryName} aziotsharedutil)

install (TARGETS ${binaryName} EXPORT aziotsharedutilTargets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_LIBDIR}/../bin
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/azureiot
    )


