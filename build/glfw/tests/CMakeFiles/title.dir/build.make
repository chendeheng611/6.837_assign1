# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/title.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glfw/tests/CMakeFiles/title.dir/compiler_depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/title.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/title.dir/flags.make

glfw/tests/CMakeFiles/title.dir/title.c.obj: glfw/tests/CMakeFiles/title.dir/flags.make
glfw/tests/CMakeFiles/title.dir/title.c.obj: glfw/tests/CMakeFiles/title.dir/includes_C.rsp
glfw/tests/CMakeFiles/title.dir/title.c.obj: ../glfw/tests/title.c
glfw/tests/CMakeFiles/title.dir/title.c.obj: glfw/tests/CMakeFiles/title.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/title.dir/title.c.obj"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/title.dir/title.c.obj -MF CMakeFiles/title.dir/title.c.obj.d -o CMakeFiles/title.dir/title.c.obj -c C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests/title.c

glfw/tests/CMakeFiles/title.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/title.c.i"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests/title.c > CMakeFiles/title.dir/title.c.i

glfw/tests/CMakeFiles/title.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/title.c.s"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests/title.c -o CMakeFiles/title.dir/title.c.s

glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/title.dir/flags.make
glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/title.dir/includes_C.rsp
glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.obj: ../glfw/deps/glad.c
glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/title.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.obj"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.obj -MF CMakeFiles/title.dir/__/deps/glad.c.obj.d -o CMakeFiles/title.dir/__/deps/glad.c.obj -c C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/deps/glad.c

glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/__/deps/glad.c.i"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/deps/glad.c > CMakeFiles/title.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/__/deps/glad.c.s"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/deps/glad.c -o CMakeFiles/title.dir/__/deps/glad.c.s

# Object files for target title
title_OBJECTS = \
"CMakeFiles/title.dir/title.c.obj" \
"CMakeFiles/title.dir/__/deps/glad.c.obj"

# External object files for target title
title_EXTERNAL_OBJECTS =

glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/title.c.obj
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/__/deps/glad.c.obj
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/build.make
glfw/tests/title.exe: glfw/src/libglfw3.a
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/linklibs.rsp
glfw/tests/title.exe: glfw/tests/CMakeFiles/title.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable title.exe"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && "C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/title.dir/objects.a
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/ar.exe qc CMakeFiles/title.dir/objects.a @CMakeFiles/title.dir/objects1.rsp
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe -g -mwindows -Wl,--whole-archive CMakeFiles/title.dir/objects.a -Wl,--no-whole-archive -o title.exe -Wl,--out-implib,libtitle.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/title.dir/linklibs.rsp

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/title.dir/build: glfw/tests/title.exe
.PHONY : glfw/tests/CMakeFiles/title.dir/build

glfw/tests/CMakeFiles/title.dir/clean:
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/title.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/title.dir/clean

glfw/tests/CMakeFiles/title.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1 C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests/CMakeFiles/title.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/title.dir/depend

