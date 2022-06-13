# CppStarter

> Cmake is required

C++ is an extremely powerfull language and is very good for creating fast code. However, getting a project setup with it on a mac is a pain in the ass (XCode freaking sucks for cpp). So you can use CppStarter to setup a basic CMake based executable.

# Development

```sh
# Run `make init` to generate the cmake cache
make init

# Builds and runs executable
make run
```

# Debugging

Debugging is a nightmare in cpp no matter what (screams internally). Use lldb to debug segfaults. Otherwise every other error is just `Undefined symbols for x86_64 architecture`.

```sh
# Runs lldb for build then hit r and once done type `quit`
make debug
```

# External code

C++ has an amazing ecosystem of prohects to ease your development. To use external code here is my approach.

```sh
# Create a folder for all external code (name doesn't matter! It can also be lib or external)
mkdir vendor

# Cd into vendor (replace ... with url of git repo of lib)
git submodule add ...
```

now that the source code for the lib exists in our project we need cmake to link it:

add two lines in the CMakeLists.txt

1. above the glob for src files add `add_subdirectory(vendor/...)`
2. below `add_executable` add the line `target_link_libraries(${PROJECT_NAME} ...)`

# Have fun ... (or do your best)
