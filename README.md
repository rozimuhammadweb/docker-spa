## Installing the Project using Docker

### Prerequisites

To set up the project using Docker, you need:

1.  **Docker:** Make sure Docker is installed and running on your system.
2.  **Docker Compose:** Ensure Docker Compose is also installed (it often comes with Docker Desktop).
    * *(Optional)*: Tools like Docker Desktop can be helpful for managing containers, especially on Windows and macOS. Linux users typically install Docker Engine and Docker Compose directly.

### Setup Steps

1.  **Clone the repository:**
    ```bash
    git clone git@github.com:rozimuhmmadweb/docker-spa.git
    ```

2.  **Navigate into the directory:**
    ```bash
    cd docker-spa
    ```

3.  **Build the Docker environment:**
    ```bash
    make build
    ```

4.  **Start the Docker containers:**
    ```bash
    make start
    ```

5.  **Install PHP dependencies:**
    ```bash
    make composer-install
    ```

6.  **Install Node.js dependencies:**
    ```bash
    make npm-install
    ```

### Running & Building

* **Run the frontend development server:**
    ```bash
    make npm-serve
    ```
    * **Note:** Run this command whenever you are actively developing the frontend. It will output a network address (e.g., `Network: http://172.21.0.2:8080/`). Open this address in your browser.
    * *(Remember: `172.21.0.2` might be the container's internal IP. You might need to access it via `http://localhost:8080` or similar, depending on port mapping.)*

* **Build the frontend for production:**
    ```bash
    make npm-build
    ```
    * This compiles the frontend assets into the `/dist` folder, ready for deployment.

### Accessing Container Shells

* **Access the PHP container shell:**
    ```bash
    make php-sh
    ```

* **Access the Frontend container shell:**
    ```bash
    make frontend-ssh 
    ```
  *(This command likely provides shell access to the frontend container, despite "ssh" in the name)*
