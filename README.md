## Installing the Project using Docker

### Setup Steps

1.  **Clone the repository:**
    ```bash
    git clone git@github.com:rozimuhmmadweb/docker-spa.git
    ```

2.  **Navigate into the directory:**
    ```bash
    cd docker-spa
    ```

3.  **Build Docker environment:**
    ```bash
    make build
    ```

4.  **Start the Docker containers:**
    ```bash
    make start
    ```

5.  **Install PHP:**
    ```bash
    make composer-install
    ```

6.  **Install Node.js:**
    ```bash
    make npm-install
    ```

### Running & Building

* **Run frontend dev server:**
    ```bash
    make npm-serve
    ```
    * **Note:** Run this command when you are actively developing the frontend. It is output a network address (e.g., `Network: http://172.21.0.2:8080/`). Open this address in your browser.
    * *(Remember: `172.21.0.2` might be the container's internal IP. You might need to access it via `http://localhost:8080` or similar, depending on port mapping.)*

* **Build the frontend for production:**
    ```bash
    make npm-build
    ```
    * This compiles the frontend assets into the `/dist` folder, ready for deployment(production).

### Container Shells

* **PHP container shell:**
    ```bash
    make php-sh
    ```

* **Frontend container shell:**
    ```bash
    make frontend-ssh 
    ```