# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.22

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/empty.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include glfw/tests/CMakeFiles/empty.dir/compiler_depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/empty.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/empty.dir/flags.make

glfw/tests/CMakeFiles/empty.dir/empty.c.obj: glfw/tests/CMakeFiles/empty.dir/flags.make
glfw/tests/CMakeFiles/empty.dir/empty.c.obj: glfw/tests/CMakeFiles/empty.dir/includes_C.rsp
glfw/tests/CMakeFiles/empty.dir/empty.c.obj: ../glfw/tests/empty.c
glfw/tests/CMakeFiles/empty.dir/empty.c.obj: glfw/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/empty.dir/empty.c.obj"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/empty.dir/empty.c.obj -MF CMakeFiles\empty.dir\empty.c.obj.d -o CMakeFiles\empty.dir\empty.c.obj -c D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\tests\empty.c

glfw/tests/CMakeFiles/empty.dir/empty.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/empty.c.i"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\tests\empty.c > CMakeFiles\empty.dir\empty.c.i

glfw/tests/CMakeFiles/empty.dir/empty.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/empty.c.s"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\tests\empty.c -o CMakeFiles\empty.dir\empty.c.s

glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: glfw/tests/CMakeFiles/empty.dir/flags.make
glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: glfw/tests/CMakeFiles/empty.dir/includes_C.rsp
glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: ../glfw/deps/tinycthread.c
glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj: glfw/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj -MF CMakeFiles\empty.dir\__\deps\tinycthread.c.obj.d -o CMakeFiles\empty.dir\__\deps\tinycthread.c.obj -c D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\deps\tinycthread.c

glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/tinycthread.c.i"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\deps\tinycthread.c > CMakeFiles\empty.dir\__\deps\tinycthread.c.i

glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/tinycthread.c.s"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\deps\tinycthread.c -o CMakeFiles\empty.dir\__\deps\tinycthread.c.s

glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/empty.dir/flags.make
glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/empty.dir/includes_C.rsp
glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.obj: ../glfw/deps/glad.c
glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.obj: glfw/tests/CMakeFiles/empty.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.obj"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.obj -MF CMakeFiles\empty.dir\__\deps\glad.c.obj.d -o CMakeFiles\empty.dir\__\deps\glad.c.obj -c D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\deps\glad.c

glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/empty.dir/__/deps/glad.c.i"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\deps\glad.c > CMakeFiles\empty.dir\__\deps\glad.c.i

glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/empty.dir/__/deps/glad.c.s"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && C:\MinGW\bin\mingw32-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\deps\glad.c -o CMakeFiles\empty.dir\__\deps\glad.c.s

# Object files for target empty
empty_OBJECTS = \
"CMakeFiles/empty.dir/empty.c.obj" \
"CMakeFiles/empty.dir/__/deps/tinycthread.c.obj" \
"CMakeFiles/empty.dir/__/deps/glad.c.obj"

# External object files for target empty
empty_EXTERNAL_OBJECTS =

glfw/tests/empty.exe: glfw/tests/CMakeFiles/empty.dir/empty.c.obj
glfw/tests/empty.exe: glfw/tests/CMakeFiles/empty.dir/__/deps/tinycthread.c.obj
glfw/tests/empty.exe: glfw/tests/CMakeFiles/empty.dir/__/deps/glad.c.obj
glfw/tests/empty.exe: glfw/tests/CMakeFiles/empty.dir/build.make
glfw/tests/empty.exe: glfw/src/libglfw3.a
glfw/tests/empty.exe: glfw/tests/CMakeFiles/empty.dir/linklibs.rsp
glfw/tests/empty.exe: glfw/tests/CMakeFiles/empty.dir/objects1.rsp
glfw/tests/empty.exe: glfw/tests/CMakeFiles/empty.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable empty.exe"
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\empty.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/empty.dir/build: glfw/tests/empty.exe
.PHONY : glfw/tests/CMakeFiles/empty.dir/build

glfw/tests/CMakeFiles/empty.dir/clean:
	cd /d D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\empty.dir\cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/empty.dir/clean

glfw/tests/CMakeFiles/empty.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0 D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\glfw\tests D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests D:\OneDrive\live\6.837\comp_graphics\assignment_handouts\assn0\assn0\starter0\build\glfw\tests\CMakeFiles\empty.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/empty.dir/depend

