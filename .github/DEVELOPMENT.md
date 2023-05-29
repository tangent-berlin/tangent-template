# DEVELOPMENT.md

## Prerequisites

Before you start development, make sure you have installed the following tools:

- [Docker](https://www.docker.com/get-started)
- [Visual Studio Code](https://code.visualstudio.com/)
- [GitHub Account](https://github.com/join)

## Getting Started

1. Clone the repository:  `git clone <https://github.com/><your-github-username>/tangent-template.git`

2. Open the cloned repository with Visual Studio Code.

3. You'll see a pop-up at the bottom right of the screen asking to "Reopen in Container". Click on it. This will start building the Docker image according to the Dockerfile and settings provided in the `.devcontainer` directory.
If you didn't see any pop-up, press `F1`, type `Remote-Containers: Reopen in Container`, and hit `Enter`.

4. After the Docker container is built and running, you're ready to start development.

## Working with Code

This template has been set up with GitHub CodeSpaces and VSCode to provide a feature-rich development environment. Here's how you can use these tools:

### VSCode

The `.devcontainer` directory defines the settings for the VSCode workspace.

- You can modify `devcontainer.json` to adjust the environment (e.g., the Docker image, VSCode settings, extensions, etc.) according to your needs.

- You can find the list of installed extensions in the `extensions` section of `devcontainer.json`. If you want to add a new extension, simply append its ID to the list.

### Bun

Bun is a build tool used for managing TypeScript projects. Run the `bun build` command to build your project, or use the `bun dev` command for development.

### Poetry

Poetry is a tool for Python dependency management. You can install new dependencies by running `poetry add <package-name>`. To update an existing dependency, run `poetry update <package-name>`. To install all dependencies of the project, use `poetry install`.

## Running Tests

You can run the tests using the following commands:

- Python: `poetry run pytest`

- Typescript:  `bun test`

## Linting and Formatting

This template has pre-configured settings for linting and formatting:

- Python: Formatting is handled by Black, and linting is handled by Pylint.

- TypeScript: We use ESLint for linting and Prettier for formatting.

Before committing your changes, it's recommended to format your code and fix any linting issues.

## Git Hooks

There are pre-commit and pre-push hooks set up in the `.githooks` directory. To enable these hooks, move them to the `.git/hooks` directory: `cp .githooks/* .git/hooks/`

The `pre-commit` hook runs the linter, and the `pre-push` hook runs the tests and pushes to dockerhub.

## Environment Variables

If your project needs environment variables, you can add them to the `.env` file in your project's root directory. This file is ignored by Git, so it won't be committed to the repository.

## Debugging

VSCode's built-in debugger is preconfigured for this project.

- For Python, use the "Python: Current File" configuration to debug the currently open Python file.

- For TypeScript, use the "TypeScript: Current TS File" configuration to debug the currently open TypeScript file.

## Troubleshooting

If you're experiencing issues with the Docker container or VSCode, you can rebuild the container.

1. Press `F1` to open the command palette.
2. Type "Remote-Containers: Rebuild Container" and hit `Enter`.

## Project Structure

The project is structured as follows:

- `src/`: This directory contains all your source code.
- `.devcontainer/`: This directory contains the configuration files for the VSCode dev container.
- `tests/`: This directory contains all your test files.

## Building and Running the Application

To build and run your application:

1. Open a terminal in VSCode (`View` -> `Terminal`).
2. Run `bun dev` to start the development server.

## Making a Pull Request

Before making a pull request, make sure your code passes all the tests and doesn't have any linting errors.

1. Push your changes to your fork: `git push origin <your-branch-name>`.
2. Navigate to the original repository you created your fork from.
3. Click on the “Pull request” button.
4. Write a description explaining your changes.
5. Click on the “Create pull request” button.

## Tips

1. Use the built-in terminal in VSCode for running the commands. This terminal shares the same environment as your dev container.
2. If you want to add new dependencies to your project, make sure to add them to the Dockerfile or to install them with a postCreateCommand in the `devcontainer.json` file.

## Conclusion

We've covered how to get started with development, run tests, work with code, and more. Don't hesitate to tweak the settings to make the environment fit your workflow better. Happy coding!
