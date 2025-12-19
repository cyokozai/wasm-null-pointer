# 検証

- WAT to WASM

    ```bash
    wat2wasm ./sample01.wat -o ./sample01.wasm


- Clang

    ```bash
    clang --target=wasm32 -O3 -nostdlib -Wl,--no-entry -Wl,--export-all -fno-delete-null-pointer-checks -o sample02.wasm sample02.c
    ```

- WASM to WAT

    ```bash
    wasm2wat sample02.wasm -o sample02.wat 
    ```

- Rust

    ```bash
    rustc --target wasm32-unknown-unknown -O --crate-type cdylib -o sample03.wasm sample03.rs
    ```

- WASM to WAT

    ```bash
    wasm2wat sample03.wasm -o sample03.wat 
    ```

- wasmtime

    ```bash
    wasmtime run sampleXX.wasm
    echo $?
    ```
