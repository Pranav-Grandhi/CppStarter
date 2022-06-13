init:
	cmake -S . -B build

run:
	cmake --build build
	cd build
	make
	./build/CppStarter

debug:
	lldb --file build/mantra
