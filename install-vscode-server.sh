#!/bin/bash

# Check if script is executed with root permissions
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script with sudo or as root."
    exit 1
fi

# Function to detect OS type
detect_os() {
    if command -v lsb_release > /dev/null; then
        os=$(lsb_release -si | tr '[:upper:]' '[:lower:]')
    elif [ -e /etc/os-release ]; then
        os=$(awk -F= '$1 == "ID" {print tolower($2)}' /etc/os-release)
    else
        echo "Unsupported OS"
        exit 1
    fi
    echo "$os"
}

# Function to detect architecture
detect_architecture() {
    architecture=$(uname -m)
    case $architecture in
        x86_64)
            echo "amd64"
            ;;
        armv7l)
            echo "armhf"
            ;;
        aarch64)
            echo "arm64"
            ;;
        *)
            echo "Unsupported architecture"
            exit 1
            ;;
    esac
}

# Function to download code-server
download_code_server() {
    local url="$1"
    local download_path="$2"
    echo "Downloading code-server from $url..."
    curl -fL "$url" -o "$download_path"
    if [ $? -ne 0 ]; then
        echo "Failed to download code-server."
        exit 1
    fi
    echo "code-server downloaded successfully."
}

# Function to install code-server package
install_code_server() {
    local package_path="$1"
    local package_manager="$2"
    echo "Installing code-server package..."
    $package_manager -i "$package_path"
    if [ $? -ne 0 ]; then
        echo "Failed to install code-server package."
        exit 1
    fi
    echo "code-server package installed successfully."
}

# Function to check installed version and prompt for upgrade
check_installed_version() {
    local package_name="$1"
    local latest_version="$2"

    local installed_version=""
    if dpkg-query -W "$package_name" >/dev/null 2>&1; then
        installed_version=$(dpkg-query -W -f='${Version}\n' "$package_name")
    elif rpm -q "$package_name" >/dev/null 2>&1; then
        installed_version=$(rpm -q --queryformat '%{VERSION}\n' "$package_name")
    fi

    if [ -n "$installed_version" ]; then
        echo "Installed version of $package_name: $installed_version"
        if [[ "$latest_version" != "$installed_version" ]]; then
            echo "A newer version ($latest_version) of $package_name is available."
            read -p "Do you want to upgrade to the latest version? [y/N]: " choice
            case "$choice" in
                y|Y)
                    return 0
                    ;;
                *)
                    return 1
                    ;;
            esac
        fi
    fi
    return 1
}

# Main function
main() {
    local os=$(detect_os)
    local arch=$(detect_architecture)
    download_vscode_server $os $arch
}

# Execute main function
main
