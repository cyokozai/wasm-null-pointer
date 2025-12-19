# 検証

### WebAssembly Text Format

-	WAT to WASM

	```bash
	wat2wasm ./sample01.wat -o ./sample01.wasm
	```

-	make cwasm

	```bash
	wasmtime compile ./sample01.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump ./sample01.cwasm --addresses --bytes --addrmap
	```

### Clang

- Compile to WASM

	```bash
	clang --target=wasm32 -O3 -nostdlib -Wl,--no-entry -Wl,--export-all -fno-delete-null-pointer-checks -o sample02.wasm sample02.c
	```

-	WASM to WAT

	```bash
	wasm2wat sample02.wasm -o sample02.wat 
	```

-	make cwasm

	```bash
	wasmtime compile ./sample02.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump ./sample02.cwasm --addresses --bytes --addrmap
	```

### Rust

- Compile to WASM

	```bash
	rustc --target wasm32-unknown-unknown -O --crate-type cdylib -o sample03.wasm sample03.rs
	```

-	WASM to WAT

	```bash
	wasm2wat sample03.wasm -o sample03.wat 
	```

-	make cwasm

	```bash
	wasmtime compile ./sample03.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump ./sample03.cwasm --addresses --bytes --addrmap
	```

### TinyGo

- Compile to WASM

	```bash
    tinygo build -o sample04.wasm -target=wasm -no-debug -panic=trap sample04.go
	```

-	WASM to WAT

	```bash
	wasm2wat sample04.wasm -o sample04.wat 
	```

-	make cwasm

	```bash
	wasmtime compile ./sample04.wasm
	```

-	Object dumping

	```bash
	wasmtime objdump ./sample04.cwasm --addresses --bytes --addrmap > output.txt
	```

---

-	Run WASM

	```bash
	wasmtime run sampleXX.wasm
	```
