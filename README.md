# MS VSCode Server

## Installing Microsoft Visual Studio Code Server on Linux

This guide provides instructions on how to use a bash script to automatically detect your Linux distribution and architecture, then download and install the latest version of Microsoft Visual Studio Code Server accordingly.

## Prerequisites

- Linux distribution (e.g., Ubuntu, CentOS)
- Bash shell
- curl
- Internet connection (for downloading the script and Visual Studio Code Server)

## Features

- **Automatic Detection**: Automatically detects the Linux distribution and architecture of your system to download the appropriate version of Microsoft Visual Studio Code Server. The script supports the following Linux distributions:

  - **DEB Based**: Ubuntu, Debian, Pop!_OS, Linux Mint, Raspbian, Kali Linux, Elementary OS, Zorin OS
  - **RPM Based**: CentOS, Fedora, Rocky Linux, AlmaLinux, Red Hat Enterprise Linux (RHEL)

- **Flexible Installation Options**: Offers options to run the script with or without automatic package upgrade, providing a customizable installation experience.

- **Error Handling and Prompts**: Provides error handling for unsupported operating systems or architectures and prompts the user for confirmation before upgrading the package.

## Instructions

### What the script will do?
The script will automatically detect your Linux distribution and architecture, then download the appropriate version of Microsoft Visual Studio Code Server. Follow any on-screen prompts or instructions provided by the script.

### Let's Begin
1. **Download and Automatically Execute the Bash Script**: Please review the script content before running.
   ```bash
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkopnsrc/ms-vscode-server/main/install_vscode_server.sh)"

# Additional Information

## Security

- **Download from Trusted Source**: Ensure that you download the script from a trusted source. Review the script content before executing it on your system to ensure it does not contain any malicious code. Always verify the authenticity of the download source, especially when executing commands with elevated privileges.

## Updating

- **Check for Updates**: Periodically check for updates to the script to ensure you are using the latest version. This can help you benefit from bug fixes, enhancements, and security updates.

## Contributing

- **Contribute to the Project**: If you encounter any issues or have suggestions for improvements, feel free to contribute to the project by opening pull requests or submitting bug reports. Collaboration helps improve the script for everyone.

## License

- **License Information**: Consider including information about the license under which the script is distributed. This helps users understand their rights and responsibilities when using the script.

## Documentation

- **Official Documentation**: Provide links to additional documentation, such as the official documentation for Microsoft Visual Studio Code Server or any specific usage instructions related to your script.

## Feedback

- **User Feedback**: Encourage users to provide feedback on their experience with the script. This can help identify areas for improvement and enhance the usability of the script for all users.
