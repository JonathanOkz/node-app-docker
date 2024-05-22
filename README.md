This project uses Docker Compose to clone a GitHub repository, install dependencies, build, and start a Node.js application.

## Setup

1. **Create a `.env` file at the root of the project:**

   ```env
   GIT_REPO_URL=https://github.com/your/repo.git
   APP_PORT=3000

2. **Create a `.env.app` file at the root of the project:**
This .env.app file will be copied to the root of the cloned Git repository, allowing your Node.js application to run with your environment variables

## Usage

1. **Start the application:**

   ```sh
   docker-compose up --build
   ```

2. **Access the application:**

   Go to `http://localhost:3000` (or the port specified in your `.env` file).
