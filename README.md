# dev-setup-scripts
A collection of scripts to automate the installation and configuration of development tools on Linux systems. These scripts are designed to save time and ensure consistency across environments.

---

```markdown
# Dev Setup Scripts

A collection of scripts to automate the installation and configuration of development tools on Linux systems. These scripts are designed to save time and ensure consistency across environments.

---

## 🚀 **Features**

This repository includes scripts to install:
- **ASDF Version Manager**: Manage multiple versions of programming languages and tools.
- **Erlang**: A functional programming language and runtime for building scalable systems.
- **Elixir**: A programming language built on top of Erlang.
- **Docker and Docker Compose**: Tools for developing, shipping, and running applications in containers.
- More tools coming soon!

---

## 📂 **Repository Structure**

```
dev-setup-scripts/
├── install_asdf.sh               # Script to install ASDF version manager
├── install_erlang_elixir.sh      # Script to install Erlang and Elixir via ASDF
├── install_docker.sh             # Script to install Docker and Docker Compose
├── install_nodejs.sh             # Example: Script to install Node.js (optional)
├── install_python.sh             # Example: Script to install Python (optional)
├── README.md                     # Documentation for the repository
```

---

## 🔧 **Usage Instructions**

### 1. Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/your-username/dev-setup-scripts.git
cd dev-setup-scripts
```

### 2. Make Scripts Executable
Ensure the scripts you want to run have executable permissions:
```bash
chmod +x *.sh
```

### 3. Run the Scripts
Execute the scripts for the tools you need. For example:

#### Install ASDF Version Manager
```bash
./install_asdf.sh
```

#### Install Erlang and Elixir
```bash
./install_erlang_elixir.sh
```

#### Install Docker and Docker Compose
```bash
./install_docker.sh
```

#### (Optional) Install Node.js
```bash
./install_nodejs.sh
```

---

## 📝 **Verification**

After running a script, verify the installation by checking the versions of the installed tools. Examples:

### Check ASDF Installation
```bash
asdf --version
```

### Check Erlang and Elixir
```bash
erl -version
elixir --version
```

### Check Docker and Docker Compose
```bash
docker --version
docker compose version
```

---

## ⚠️ **Important Notes**

1. **System Requirements**: These scripts are tested on Debian/Ubuntu-based systems. Adapt them as needed for other Linux distributions.
2. **Custom Versions**: Update the scripts to install specific versions of tools by modifying the version variables inside each script.
3. **Reboot/Logout**: Some changes (e.g., adding a user to the Docker group) require you to log out and log back in, or reboot the system.

---

## 🛠️ **Adding More Scripts**

To contribute additional setup scripts, follow these steps:
1. Create a new `.sh` script file (e.g., `install_<tool>.sh`).
2. Use bash scripting best practices for error handling and user feedback.
3. Update this `README.md` file to include your new script in the **Repository Structure** section.

---

## 📜 **License**

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## 🙋‍♂️ **Support**

If you encounter any issues or have questions, feel free to open an issue in the repository or contact me via email at `kangwac3@gmail.com`.

---

Happy coding! 🚀
```

---

### **How to Use**

1. Replace `chimfwembeC` with your GitHub username.
2. Update the **Support** section with your contact information.
3. Add more scripts to the repository as needed, following the outlined structure.

This structure is flexible and scalable for multiple scripts while keeping things organized. Let me know if you want to tweak it further!
