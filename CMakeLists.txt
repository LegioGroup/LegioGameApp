cmake_minimum_required(VERSION 3.5)
project(GameApp VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

# GameApp.exe
add_executable(${PROJECT_NAME} src/main.cpp)

# Subdirectories
add_subdirectory(external/engine)

target_link_libraries(${PROJECT_NAME} Legio)
target_include_directories(${PROJECT_NAME}
    PRIVATE
        Legio
)
