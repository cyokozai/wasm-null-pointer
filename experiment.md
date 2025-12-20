# 検証

### WebAssembly Text Format

-	WAT to WASM

	```bash
	wat2wasm sample01.wat -o sample01.wasm
	```

-	Run WASM

	```bash
	wasmtime run --invoke 'test_zero' sample01.wasm
	```

-	make cwasm

	```bash
	wasmtime compile sample01.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump sample01.cwasm --addresses --bytes --addrmap > output01.dat
	```

### Clang

- Compile to WASM

	```bash
	clang --target=wasm32 -O3 -nostdlib -Wl,--no-entry -Wl,--export-all -fno-delete-null-pointer-checks -o sample02.wasm sample02.c
	```

-	Run WASM

	```bash
	wasmtime run --invoke 'test_zero' sample02.wasm
	```

-	WASM to WAT

	```bash
	wasm2wat sample02.wasm -o sample02.wat
	```

-	make cwasm

	```bash
	wasmtime compile sample02.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump sample02.cwasm --addresses --bytes --addrmap > output02.dat
	```

### Rust

- Compile to WASM

	```bash
	rustc --target wasm32-unknown-unknown -O --crate-type cdylib -o sample03.wasm sample03.rs
	```

-	Run WASM

	```bash
	wasmtime run --invoke 'test_zero' sample03.wasm
	```

-	WASM to WAT

	```bash
	wasm2wat sample03.wasm -o sample03.wat 
	```

-	make cwasm

	```bash
	wasmtime compile sample03.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump sample03.cwasm --addresses --bytes --addrmap > output03.dat
	```

### TinyGo

- Compile to WASM

	```bash
    tinygo build -o sample04.wasm -target=wasm -no-debug -panic=trap sample04.go
	```

-	Run WASM

	```bash
	wasmtime run --invoke 'test_zero' sample04.wasm
	```

-	WASM to WAT

	```bash
	wasm2wat sample04.wasm -o sample04.wat 
	```

-	make cwasm

	```bash
	wasmtime compile sample04.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump sample04.cwasm --addresses --bytes --addrmap > output04.dat
	```

---

- Compile to WASM

	```bash
    clang --target=wasm32 -O3 -nostdlib -Wl,--no-entry -Wl,--export-all -fno-delete-null-pointer-checks -o sample05.wasm sample05.c
	```

-	Run WASM

	```bash
	wasmtime run --invoke 'get_z' sample05.wasm
	```

-	WASM to WAT

	```bash
	wasm2wat sample05.wasm -o sample05.wat 
	```

-	make cwasm

	```bash
	wasmtime compile sample05.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump sample05.cwasm --addresses --bytes --addrmap > output05.dat
	```
