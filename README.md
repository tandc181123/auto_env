# Envease - Environment Management Tool

Envease simplifies environment management for Python projects by automatically handling virtual environments based on a `.env` file.

### Key Features

-   Automatic activation and deactivation of virtual environments
-   Easy configuration via the `.env` file
-   Simplifies environment management for Python projects

## Installation Guide

### Option 1: Clone from Repository

Clone the repository to your local machine:

```bash
    git clone https://github.com/tandc181123/envease.git
```

### Option 2: Download from Releases

Alternatively, you can download Envease from the [Releases](https://github.com/tandc181123/envease/releases) page. Simply select the desired version, download the corresponding archive file, and extract it to your preferred location.

### Setting up Envease

1. Change into the project directory:

    Git clone:

    ```bash
       cd envease
    ```

    Releases:

    ```bash
       cd envease-version
    ```

2. Give execute permission to the write_to_bashrc.sh script:

    ```bash
       chmod +x write_to_bashrc.sh
    ```

3. Execute the write_to_bashrc.sh script:

    ```bash
       ./write_to_bashrc.sh
    ```

4. This will add the necessary source command to your Bash configuration file (.bashrc) to enable Envease.

### Setting up the .env file

To configure Envease, create a .env file in your project directory and add the following lines:

```bash
   folder_path="$(pwd)" # Set the folder path to the current directory
   virtual_env_name="venv" # Set the name of your virtual environment folder
```

Make sure to replace venv with the name of your virtual environment folder.

## Usage

Simply navigate to your project directory with the .env file. Envease will automatically activate the virtual environment when you use the cd command.

## Contribution Guidelines

Contributions to Envease are welcome! If you would like to contribute, please fork the repository, make your changes, and submit a pull request.

## Issue Tracking

If you encounter any issues or have suggestions for improvements, please submit them to the [issue tracker](https://github.com/tandc181123/envease/issues).

## License

This project is licensed under the [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) License.
