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
include glfw/tests/CMakeFiles/icon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glfw/tests/CMakeFiles/icon.dir/compiler_depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/icon.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/icon.dir/flags.make

glfw/tests/CMakeFiles/icon.dir/icon.c.obj: glfw/tests/CMakeFiles/icon.dir/flags.make
glfw/tests/CMakeFiles/icon.dir/icon.c.obj: glfw/tests/CMakeFiles/icon.dir/includes_C.rsp
glfw/tests/CMakeFiles/icon.dir/icon.c.obj: ../glfw/tests/icon.c
glfw/tests/CMakeFiles/icon.dir/icon.c.obj: glfw/tests/CMakeFiles/icon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/icon.dir/icon.c.obj"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/icon.dir/icon.c.obj -MF CMakeFiles/icon.dir/icon.c.obj.d -o CMakeFiles/icon.dir/icon.c.obj -c C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests/icon.c

glfw/tests/CMakeFiles/icon.dir/icon.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/icon.dir/icon.c.i"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests/icon.c > CMakeFiles/icon.dir/icon.c.i

glfw/tests/CMakeFiles/icon.dir/icon.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/icon.dir/icon.c.s"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests/icon.c -o CMakeFiles/icon.dir/icon.c.s

glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/icon.dir/flags.make
glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/icon.dir/includes_C.rsp
glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.obj: ../glfw/deps/glad.c
glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/icon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.obj"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.obj -MF CMakeFiles/icon.dir/__/deps/glad.c.obj.d -o CMakeFiles/icon.dir/__/deps/glad.c.obj -c C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/deps/glad.c

glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/icon.dir/__/deps/glad.c.i"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/deps/glad.c > CMakeFiles/icon.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/icon.dir/__/deps/glad.c.s"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/deps/glad.c -o CMakeFiles/icon.dir/__/deps/glad.c.s

# Object files for target icon
icon_OBJECTS = \
"CMakeFiles/icon.dir/icon.c.obj" \
"CMakeFiles/icon.dir/__/deps/glad.c.obj"

# External object files for target icon
icon_EXTERNAL_OBJECTS =

glfw/tests/icon.exe: glfw/tests/CMakeFiles/icon.dir/icon.c.obj
glfw/tests/icon.exe: glfw/tests/CMakeFiles/icon.dir/__/deps/glad.c.obj
glfw/tests/icon.exe: glfw/tests/CMakeFiles/icon.dir/build.make
glfw/tests/icon.exe: glfw/src/libglfw3.a
glfw/tests/icon.exe: glfw/tests/CMakeFiles/icon.dir/linklibs.rsp
glfw/tests/icon.exe: glfw/tests/CMakeFiles/icon.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable icon.exe"
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && "C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/icon.dir/objects.a
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/ar.exe qc CMakeFiles/icon.dir/objects.a @CMakeFiles/icon.dir/objects1.rsp
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && C:/msys64/mingw64/bin/x86_64-w64-mingw32-gcc.exe -g -mwindows -Wl,--whole-archive CMakeFiles/icon.dir/objects.a -Wl,--no-whole-archive -o icon.exe -Wl,--out-implib,libicon.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/icon.dir/linklibs.rsp

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/icon.dir/build: glfw/tests/icon.exe
.PHONY : glfw/tests/CMakeFiles/icon.dir/build

glfw/tests/CMakeFiles/icon.dir/clean:
	cd C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/icon.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/icon.dir/clean

glfw/tests/CMakeFiles/icon.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1 C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/glfw/tests C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests C:/Users/11725/OneDrive/live/6.837/comp_graphics/assignment_handouts/assn0/assn0/6.837_assign1/build/glfw/tests/CMakeFiles/icon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/icon.dir/depend

