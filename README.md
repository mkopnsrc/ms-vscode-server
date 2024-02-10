# MS VSCode Server

## Installing Microsoft Visual Studio Code Server on Linux
This guide provides instructions on how to use a bash script to automatically detect your Linux distribution and architecture, then download and install the latest version of Microsoft Visual Studio Code Server accordingly.

## Prerequisites

- Linux distribution (e.g., Ubuntu, CentOS)
- Bash shell
- curl
- Internet connection (for downloading the script and Visual Studio Code Server)

## Instructions

### What the script will do?
The script will automatically detect your Linux distribution and architecture, then download the appropriate version of Microsoft Visual Studio Code Server. Follow any on-screen prompts or instructions provided by the script.

### Let's Begin
1. **Download and Automatically Execute the Bash Script**: Please review the script content before running.
   ```bash
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkopnsrc/ms-vscode-server/main/install_vscode_server.sh)"
   ```

2. **Verify Installation**: Once the script completes, verify that Microsoft Visual Studio Code Server has been installed successfully by navigating to the installation directory or by running the server.

## Notes

- The script is designed to work on various Linux distributions. However, if you encounter any issues, feel free to report them or customize the script to suit your specific requirements.

- If you encounter any errors or issues during installation, please refer to this git repository and report an issue or consult the official documentation for Microsoft Visual Studio Code Server.

## Troubleshooting

- **Unsupported OS or Architecture**: If the script detects an unsupported operating system or architecture, it will display an error message and exit. Ensure that you are running the script on a supported Linux distribution and architecture.

- **Failed to Download**: If the script fails to download Microsoft Visual Studio Code Server, verify your internet connection and try running the script again.

- **Permission Denied**: If you encounter permission denied errors when running the script, ensure that you have the necessary permissions to execute the script. You may need to use `sudo` or contact your system administrator.

## Support

For additional assistance or support, please open an issue in this repository or contact the maintainers.

