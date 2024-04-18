# Envease - Environment Management Tool

Envease is a tool that simplifies environment management by automatically activating and deactivating virtual environments based on a `.env` file in your project directory.

## Introduction

Envease simplifies the process of managing environments for your projects. By placing a `.env` file in your project directory and specifying the folder path and virtual environment name inside, Envease will automatically activate the specified virtual environment when you navigate to that directory using the `cd` command.

## Installation Guide

To install Envease for Bash, follow these steps:

1. Clone the repository to your local machine:

```bash
   git clone https://github.com/yourusername/envease.git
```

2. Change into the cloned directory:

```bash
   cd envease
```

3. Give execute permission to the `write_to_bashrc.sh` script:

```bash
   chmod +x write_to_bashrc.sh
```

4. Execute the `write_to_bashrc.sh` script:

```bash
   ./write_to_bashrc.sh
```

This will add the necessary source command to your Bash configuration file (`.bashrc`) to enable Envease.

### Setting up the `.env` file

To configure Envease, create a `.env` file in your project directory and add the following lines:

```bash
   folder_path="$(pwd)" # Set the folder path to the current directory
   virtual_env_name="venv" # Set the name of your virtual environment folder
```

Make sure to replace `venv` with the name of your virtual environment folder.

## Usage

To use Envease, simply navigate to your project directory containing the `.env` file. Envease will automatically activate the specified virtual environment when you enter the directory using the `cd` command.

## Features

-   Automatically activates a virtual environment based on the `.env` file in your project directory.
-   Simplifies environment management for projects by managing the activation and deactivation of the virtual environment.

## Contribution Guidelines

Contributions to Envease are welcome! If you would like to contribute, please fork the repository, make your changes, and submit a pull request.

## Issue Tracking

If you encounter any issues or have suggestions for improvements, please submit them to the [issue tracker](https://github.com/yourusername/envease/issues).

## License

This project is licensed under the [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) License.
