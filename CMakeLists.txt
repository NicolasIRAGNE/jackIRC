cmake_minimum_required(VERSION 3.13)

find_package (Threads)
find_package(Curses REQUIRED)
include_directories(${CURSES_INCLUDE_DIR})


SET (SOURCES
	srcs/main.c
	srcs/tools.c
	srcs/handle_message.c
	)

SET (INCLUDES
    jackirc.h
    )

INCLUDE_DIRECTORIES(includes)

add_executable(jackIRC ${SOURCES})
target_link_libraries (jackIRC ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(jackIRC ${CURSES_LIBRARIES})
target_link_libraries(jackIRC m)