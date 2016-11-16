include(CMakeForceCompiler)
set(CMAKE_CROSSCOMPILING   TRUE)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR mips)

CMAKE_FORCE_C_COMPILER("${CMAKE_C_COMPILER}" GNU)
CMAKE_FORCE_CXX_COMPILER("${CMAKE_CXX_COMPILER}" GNU)

set(tools $ENV{MipsToolPath})
set(CMAKE_C_COMPILER ${tools}/mips-unknown-elf-gcc)
set(CMAKE_CXX_COMPILER ${tools}/mips-unknown-elf-gcc)

SET(CMAKE_E_LINK_C_FLAGS "")
SET(CMAKE_EXE_LINKER_FLAGS "")
SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
SET(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
SET(CMAKE_STATIC_LIBRARY_LINK_C_FLAGS "")

set(flags "-march=mips1")
set(mips_optflags "-O3 -mmemcpy -ffunction-sections -fdata-sections -falign-functions=512 -fno-rename-registers -fno-schedule-insns -fno-delayed-branch")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${flags} ${mips_optflags} -Wall -Wno-unused -Werror")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${flags} ${mips_optflags} -Wall -Wno-unused -Werror")

set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} ${flags} --static")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${flags} --static")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)