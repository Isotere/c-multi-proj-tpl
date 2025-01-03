init:
	cmake -S . -G "Unix Makefiles" -B cmake && ln -s cmake/compile_commands.json .

build:
	cmake -S . -G "Unix Makefiles" -B cmake

compile_all:
	cmake --build ./cmake

