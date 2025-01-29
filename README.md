# Dev Environment Setup

A comprehensive collection of scripts to automate the installation and configuration of development tools, frameworks, and programming languages on both Linux (Ubuntu) and Windows systems. These scripts simplify and standardize the setup process for diverse development environments.

---

## 🚀 **Features**

This repository includes scripts for installing and configuring:

- **Programming Languages**: Python, PHP, Node.js, Ruby, Go, etc.
- **Frameworks**: Laravel, Django, Flask, Express.js, etc.
- **Development Tools**: Docker, Docker Compose, ASDF, Git, VS Code, etc.
- **Databases**: PostgreSQL, MySQL, MongoDB
- **Cloud Tools**: AWS CLI, Azure CLI, Google Cloud CLI
- **Testing Tools**: Jest, Pytest, Postman

---

## 📂 **File Structure**

The repository is organized into directories for better clarity and scalability:

dev-environment-setup/ ├── languages/                     # Scripts for programming languages │   ├── ubuntu/                    # Ubuntu scripts for programming languages │   │   ├── install\_python.sh      # Install Python │   │   ├── install\_php.sh         # Install PHP │   │   ├── install\_nodejs.sh      # Install Node.js │   │   ├── install\_ruby.sh        # Install Ruby │   │   └── install\_go.sh          # Install Go │   └── windows/                   # Windows PowerShell scripts for programming languages │       ├── install\_python.ps1     # Install Python │       ├── install\_php.ps1        # Install PHP │       ├── install\_nodejs.ps1     # Install Node.js │       ├── install\_ruby.ps1       # Install Ruby │       └── install\_go.ps1         # Install Go ├── frameworks/                    # Scripts for frameworks and libraries │   ├── ubuntu/                    # Ubuntu scripts for frameworks │   └── windows/                   # Windows PowerShell scripts for frameworks ├── tools/                         # Scripts for development tools │   ├── ubuntu/                    # Ubuntu scripts for tools │   └── windows/                   # Windows PowerShell scripts for tools ├── databases/                     # Scripts for database management systems │   ├── ubuntu/                    # Ubuntu scripts for databases │   └── windows/                   # Windows PowerShell scripts for databases ├── cloud/                         # Scripts for cloud tools and CLI utilities │   ├── ubuntu/                    # Ubuntu scripts for cloud tools │   └── windows/                   # Windows PowerShell scripts for cloud tools ├── testing/                       # Scripts for testing tools │   ├── ubuntu/                    # Ubuntu scripts for testing tools │   └── windows/                   # Windows PowerShell scripts for testing tools ├── README.md                      # Documentation for the repository └── LICENSE                        # License information

```

---

## 🔧 **How to Use**

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/dev-environment-setup.git
cd dev-environment-setup
```

### 2. Navigate to the Desired Directory

Each category of scripts is stored in its respective subdirectory. For example:

* To install a programming language:
  * Ubuntu:
    ```bash
    cd languages/ubuntu
    ```
  * Windows:
    ```powershell
    cd languages/windows
    ```
* To install a development tool:
  * Ubuntu:
    ```bash
    cd tools/ubuntu
    ```
  * Windows:
    ```powershell
    cd tools/windows
    ```

### 3. Run the Script

* **On Ubuntu**: Before running a script, ensure it has executable permissions:

  ```bash
  chmod +x <script-name>.sh
  ```

  Then, run the script:

  ```bash
  ./install_python.sh
  ```
* **On Windows**: Simply run the PowerShell script:

  ```powershell
  .\install_python.ps1
  ```

---

## 📝 **Verification**

After running a script, you can verify the installation by checking the version of the installed tool. Example commands:

* **Python**:
  * Ubuntu:
    ```bash
    python3 --version
    ```
  * Windows:
    ```powershell
    python --version
    ```
* **Docker**:
  * Ubuntu:
    ```bash
    docker --version
    docker compose version
    ```
  * Windows:
    ```powershell
    docker --version
    docker-compose --version
    ```
* **Laravel**:
  * Ubuntu:
    ```bash
    laravel --version
    ```
  * Windows:
    ```powershell
    laravel --version
    ```

---

## ⚠️ **Important Notes**

1. **System Compatibility**: These scripts are designed for both Ubuntu-based Linux distributions and Windows systems. Ensure you are in the appropriate directory for your OS.
2. **Customization**: You can specify the versions of tools and frameworks to install by editing the version variables in the scripts.
3. **Reboot/Logout**: After running some scripts (e.g., Docker installation), you may need to log out and log back in or reboot for changes to take effect.

---

## 📜 **License**

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## 🙋‍♂️ **Support**

If you encounter any issues or have questions:

* Open an issue in the repository.
* Contact me via email at `kangwac3@gmail.com`.

---

## 🌟 **Contributing**

Contributions are welcome! To add a new script:

1. Fork the repository.
2. Add your script in the appropriate subdirectory (or create a new subdirectory if needed).
3. Test your script thoroughly.
4. Submit a pull request with a detailed description of your changes.

---

Happy coding! 🚀

```

### **Explanation of Changes:**
- **File Structure**: I added the `windows/` subdirectory under each category (languages, tools, databases, etc.) to organize the Windows-specific PowerShell scripts. 
- **How to Use**: The README now includes instructions for both Ubuntu and Windows users. Windows users need to run `.ps1` files directly, whereas Ubuntu users need to make the scripts executable (`chmod +x`).
- **Verification**: Provided the verification steps for both Ubuntu and Windows systems.

Let me know if you need any further modifications or if everything looks good for you!
```
