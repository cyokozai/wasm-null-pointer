# 環境構築

- 実行環境

    | 項目      | 詳細 |
    | ------- | -------- |
    | OS      | macOS Tahoe 26.1 |
    | アーキテクチャ | arm64 |
    | 仮想環境    | Docker (OrbStack) 28.5.2 |
    | ディストリビューション | Ubuntu 24.04 LTS |

- WebAssembly

    | ツール | バージョン |
    | -------- | -------- |
    | wasmtime | 39.0.1|
    | wat2wasm / wasm2wat | 1.0.34 |

- 使用した言語・コンパイラ

    | 言語 | コンパイラ / 実装  | バージョン | ターゲット |
    | --- | ---------------- | -------- | -------- |
    | C / C++ | clang | 18.1.3 | aarch64-unknown-linux-gnu |
    | Rust | rustc | 1.92.0 | wasm32-unknown-unknown |
    | Go | TinyGo | 1.25.4 / 0.40.1 | linux/arm64 |

※ DevContainer を使用する場合は以下の作業は不要

- 前提パッケージ

    ```bash
    sudo apt update && sudo apt -y upgrade
    sudo apt install -y curl wget git build-essential ca-certificates
    ```

- C (Clang)

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

- TinyGo

	```bash
	wget https://github.com/tinygo-org/tinygo/releases/download/v0.40.1/tinygo_0.40.1_arm64.deb
    sudo dpkg -i tinygo_0.40.1_arm64.deb
    rm tinygo_0.40.1_arm64.deb
    export PATH=$PATH:/usr/local/bin
    tinygo version
	```
