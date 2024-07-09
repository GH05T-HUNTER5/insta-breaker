# Insta-Breaker

Insta-Breaker is a tool designed for automated login attempts on Instagram using a username and a file containing multiple passwords. It is intended for ethical use only, such as testing the security of your own Instagram account.

## Features

- Automated login attempts on Instagram
- Supports providing passwords from a file
- Includes built-in checks and prompts for a smoother user experience

## Installation

To use Insta-Breaker, ensure you have the necessary dependencies installed. The tool relies on `inpass` for handling the login attempts.

### For Linux Users

```bash
sudo apt-get update
sudo apt-get install python3
pip install inpass==2.0.0
```

### For Termux Users

```bash
pkg update
pkg install python -y
pip install inpass==2.0.0
```

## Usage

Run the script as root for proper functionality. Follow the prompts to enter your Instagram username and the path to your password file.

```bash
bash insta-breaker
```

### Script Workflow

1. The script starts by displaying a banner.
2. It checks if you have root permissions.
3. It ensures `inpass` is installed.
4. It prompts you to enter your Instagram username and the path to your password file.
5. If the provided password file is valid, it uses `inpass` to attempt logging into Instagram.

### Example

`bash
sudo bash insta-breaker.sh
`

You'll be prompted to enter your Instagram username and the path to your password file. Ensure the path is correct, and the file exists.

## Future Features

If this repository gets 5k likes, we will add more features such as:

- Enhanced protection mechanisms
- Automatic IP address addition

## Follow Us

Follow my [GitHub account](https://github.com/your-github-account) for updates and more projects.

## Disclaimer

- This tool is for educational purposes only.
- The developer is not responsible for any misuse of this tool.
- Never use this tool for illegal activities.

## Developer

- **GH05T HUNTER5**
- Version: 7.01
