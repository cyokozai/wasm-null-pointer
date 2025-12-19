## environment

- Prerequisite Package

    ```bash
    sudo apt update && sudo apt -y upgrade
    sudo apt install -y curl wget git build-essential ca-certificates
    ```

- C/C++ (Native)

    ```bash
    sudo apt install -y gcc g++
    gcc --version
    g++ --version
    ```

- C/C++ (Clang)

    ```bash
    sudo apt install -y clang lld
    clang --version
    ```

- wasmtime

    ```bash
    curl https://wasmtime.dev/install.sh -sSf | bash
    source ~/.bashrc
    wasmtime --version
    ```

- wabt

    ```bash
    sudo apt install -y wabt
    wat2wasm --version
    ```

- Rust

    ```bash
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    # Select 1, ENTER
    source $HOME/.cargo/env
    rustc --version
    rustup target add wasm32-unknown-unknown
    ```

- Go

    ```bash
    wget https://go.dev/dl/go1.25.4.linux-arm64.tar.gz
    sudo tar -C /usr/local -xzf go1.25.4.linux-arm64.tar.gz
    rm go1.25.4.linux-arm64.tar.gz
    echo 'export PATH=/usr/local/go/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc
    go version
    ```
