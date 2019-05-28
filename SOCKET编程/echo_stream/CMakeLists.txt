cmake_minimum_required(VERSION 3.10.2)
project(echo_stream C)

set(CMAKE_C_STANDARD 99)

add_library(io_n include/io_n.h
        lib/io_n.c)

set(SERVICE_SRC src/echosrv.c)

set(CLIENT_SRC src/echocli.c)

add_executable(service.out ${SERVICE_SRC})

add_executable(client.out ${CLIENT_SRC})

target_link_libraries(service.out io_n)

target_link_libraries(client.out io_n)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/Release)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin/lib)