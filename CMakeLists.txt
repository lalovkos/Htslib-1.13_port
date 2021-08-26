#Minimal version
cmake_minimum_required(VERSION 2.6)

#Specify project name
project(htslib-1.13 LANGUAGES C CXX)

#Configuring paths for building
set(CMAKE_INSTALL_PREFIX ./htslib-1.13)
set(CMAKE_CURRENT_SOURCE_DIR ./htslib-1.13)

#Configuring htslib by make instructions
set(AUTORECONF_COMM autoreconf -i)
set(CONFIGURE_COMM ./configure)
set(FIRST_MAKE_COMM make)
set(SECOND_MAKE_COMM make install)

execute_process(
	COMMAND ${AUTORECONF_COMM}
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

execute_process(
	COMMAND ${CONFIGURE_COMM}
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

execute_process(
	COMMAND ${FIRST_MAKE_COMM}
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

execute_process(
	COMMAND ${SECOND_MAKE_COMM}
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

#Add executable
add_executable(MainExecutable main.cpp)

#Check if important libraries are here
# zlib       (required)
find_package(ZLIB REQUIRED)
if (ZLIB_FOUND)
	include_directories(${ZLIB_INCLUDE_DIRS})
	target_link_libraries(MainExecutable ${ZLIB_LIBRARIES})
endif(ZLIB_FOUND)

#Install
install(TARGETS MainExecutable DESTINATION bin)