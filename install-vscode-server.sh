#!/bin/bash

# Check if script is executed with root permissions
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script with sudo or as root."
    exit 1
fi

# Function to detect OS type
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "linux"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "darwin"
    else
        echo "Unsupported OS"
        exit 1
    fi
}

# Function to detect architecture
detect_architecture() {
    architecture=$(uname -m)
    case $architecture in
        x86_64)
            echo "x64"
            ;;
        *)
            echo "Unsupported architecture"
            exit 1
            ;;
    esac
}

# Function to download latest version of VS Code Server
download_vscode_server() {
    local os=$1
    local arch=$2
    local latest_url="https://update.code.visualstudio.com/commit:${os}_${arch}/server-linux-${arch}.tar.gz"
    echo "Downloading latest Visual Studio Code Server for $os $arch..."
    curl -fL $latest_url -o vscode_server.tar.gz
    if [ $? -ne 0 ]; then
        echo "Failed to download Visual Studio Code Server."
        exit 1
    fi
    echo "Visual Studio Code Server downloaded successfully."
}

# Main function
main() {
    local os=$(detect_os)
    local arch=$(detect_architecture)
    download_vscode_server $os $arch
}

# Execute main function
main
