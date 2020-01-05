cmake_minimum_required(VERSION 3.13)

find_package (Threads)


SET (SOURCES
    srcs/main.c
	)

SET (INCLUDES
    jackirc.h
    )

INCLUDE_DIRECTORIES(includes)

add_executable(jackIRC ${SOURCES})
target_link_libraries (jackIRC ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(jackIRC m)