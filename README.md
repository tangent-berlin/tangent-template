# tangent-template - A Monorepo Template for Node.js and Python Projects

Welcome to tangent-template, a feature-rich development environment template designed to provide a seamless experience for working with Node.js and Python projects in a monorepo setting. The template provides an out-of-the-box setup for GitHub CodeSpaces, complete with pre-configured settings for VSCode, a custom Docker environment, and advanced configurations for popular developer tools.

## Features

This template offers a rich set of developer tools pre-configured for your convenience:

### Poetry

Manage your Python dependencies in an isolated, deterministic, and easy-to-manage environment with Poetry. It takes care of dependency resolution, package building, publishing, and more.

### Bun

Bun is an experimental build system used in this environment for managing TypeScript projects.

### TurboRepo

With TurboRepo, manage your codebase effectively, with optimized build systems and task execution across projects in your monorepo.

### Fish Shell

Enjoy the benefits of the friendly interactive shell, Fish. The Fish shell comes with features like autosuggestions, tab completions, syntax highlighting, and web-based configuration. To enhance your Fish shell experience, Tangent is equipped with plugins managed by Fisher, a plugin manager for Fish.

![Fish Shell](.github/media/fish.gif)

#### Fish Shell Plugins

Here are the plugins used in the devcontainer to enhance your Fish Shell experience:

##### Fzf

Fzf provides functions to integrate the FZF fuzzy finder with Fish. It allows for interactive directory navigation, file searching, and more. It also uses diff-so-fancy, fd and bat for better previews.
Keybindings:

- fish-fzf-z: `Ctrl-j`
- atuin history: `Ctrl-r`
- git status: `Ctrl-Alt-s`
- git log: `Ctrl-Alt-l`
- search directory: `Ctrl-Alt-f`
- search vars: `Ctrl-Alt-r`
- search processes: `Ctrl-Alt-p`

##### Z

Z allows you to jump quickly to frequent directories (directories that you frequently visit). It builds a list of your most visited directories and facilitates rapid navigation to them.

##### Fisher

Fisher is a plugin manager for Fish Shell. It's lightweight, fast, and easy to use. It helps in installing and managing your shell plugins, keeping them isolated and up to date.

##### Fish-Colored-Man

Fish-Colored-Man colors your man pages, making them easier to read and understand.

##### Autopair

Autopair is a plugin that automatically closes pairs of parentheses, braces, quotes, and other characters as you type. This plugin can be a big help while writing code or scripts in the shell.

##### Puffer Fish

Puffer Fish provides a set of functions to manage Python virtual environments in a Fish shell.
For example, keep typing `.` after `cd ..` to expand

##### Replay

Replay records your shell session, which can be useful for demonstration or debugging purposes.

##### To-Fish

To-Fish provides Fish-style syntax highlighting and autocompletion for the 'to' command-line calculator.

##### Fishtape

Fishtape is a TAP producer and test harness for Fish. It's useful for writing and running tests in the Fish shell.

##### Fish-Direnv

Fish-Direnv integrates the Direnv environment switcher with the Fish shell. Direnv allows you to load and unload environment variables depending on your current directory.

##### Natural Selection

Natural Selection improves Fish's tab completion behaviour, making it more efficient and intuitive.

Each of these plugins provides unique features and enhancements to the Fish shell, making your experience more enjoyable and productive. Enjoy exploring these plugins and their capabilities!

#### External tools

##### Starship

The prompt of your shell is customizable with Starship, a fast, customizable, and feature-rich shell prompt.

##### carapace-bin

Carapace-bin is a powerful and highly extensible tool for enhancing shell command line completion. It provides a dynamic, customizable autocomplete feature that supports a wide range of shells (Bash, Fish, Zsh, and PowerShell) and multiple operating systems.

##### Micro

Experience editing files with Micro, a modern and intuitive terminal-based text editor. Micro is easy to use and comes with features like syntax highlighting and rich keybindings.

Micro is inspired by the easy-to-use and beautiful design of nano and sublime, but aims to provide additional features to support a broad range of text editing tasks. Unlike nano, micro supports full Unicode and doesn't depend on ncurses.
Keybindings: `Ctrl-e` for command, `Ctrl-q` to quit

###### Atuin

Atuin takes care of your shell history in a synchronized, deduplicated, and encrypted way. With Atuin, you can switch between machines and still maintain your command history.

##### NuShell

Experience the next-generation shell environment with NuShell. It comes with first-class data manipulation capabilities, is highly extensible, and works well with existing shells.

### CodeSpaces & VSCode

Template is designed to be used with GitHub CodeSpaces, providing a cloud-based development environment. Inside the CodeSpace, you'll have VSCode as your IDE with predefined settings specifically tailored for Node.js and Python projects. These include formatting and linting settings for Python and auto-import adjustment settings for JavaScript/TypeScript.

### Git Hooks

Git hooks are scripts triggered before or after key Git actions. In this repository, you can activate our pre-commit and pre-push hooks by moving them from the .githooks directory to .git/hooks using cp .githooks/* .git/hooks/.

- `pre-commit` hook is invoked by git commit and is used for linting. It's important to note that you can bypass this hook by adding the --no-verify flag to your git commit command.
- `pre-push` hook is invoked by git push and is used to bump the version and publish to dockerhub.

## Getting Started

Fork this repository.
Open the forked repository on GitHub.
Click the "Code" button and then "Open with CodeSpaces".
Select "New CodeSpace".
GitHub will create a new CodeSpace and automatically build your environment as defined by the .devcontainer configuration. This includes setting up the Docker environment and executing post-create commands. After the build process completes, you'll be placed into a VSCode instance connected to your CodeSpace.

Take a look at [DEVELOPMENT.md](.github/DEVELOPMENT.md) for more info.

## Contributing

Please read through our [contributing guidelines](.github/CONTRIBUTING.md). Included are directions for opening issues, coding standards, and notes on development.

## License

This project is licensed under the terms of the [MIT](.github/LICENSE.md) license.

## Acknowledgements

Thanks to all the open-source projects that made this template possible.
