# DDLitab Webseite

Link: https://ddlitlab.github.io/

## Notes

- icons: https://microsoft.github.io/vscode-codicons/dist/codicon.html
- simple.css: https://github.com/kevquirk/simple.css/blob/main/simple.css
- modern-normalize.css: https://github.com/sindresorhus/modern-normalize/blob/main/modern-normalize.css


## Getting Started

To run this project locally, you need to have Hugo and Git installed on your machine. Additionally, you can use Visual Studio Code as your code editor.

## Installations

* [Install Hugo](https://gohugo.io/installation/)
* [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* [Install VS Code](https://code.visualstudio.com/download) (gibt es auch in der RRZ Softwareverwaltung)

### macOS

Open a Terminal.
* Install [Homebrew](https://brew.sh/) (Package Manager for macOS): ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
* Install Hugo: `brew install hugo`
* Install Git: `brew install git`

### Windows

* Install [Git](https://git-scm.com/download/win)
* Install Hugo. Follow these instructions: https://gohugo.io/installation/windows/#prebuilt-binaries
    * Download the latest version of Hugo Extended for Windows from the [Release page](https://github.com/gohugoio/hugo/releases/latest). The file should be named something like `hugo_extended_version-number_windows-amd64.zip`.
    * Unzip the downloaded file and move the `hugo.exe` file to a directory that is in your system's PATH. For example, you can create a new folder inside your home directory called `code` (this is where you will store your code repositories and hugo). Inside this new folder, create another folder called `bin` and move the `hugo.exe` file there. The full path to the file should look like this: `C:\Users\<YourUsername>\code\bin\hugo.exe`.
    * Add the `bin` folder to your system's PATH. To do this, follow these steps:
        1. Press Win + S and type "Environment Variables", then open "Edit the system environment variables".
        2. Click "Environment Variables...".
        3. In the "User variables" or "System variables" section (depending on scope), find the PATH variable and click Edit.
        4. Click "New" and add the path to your `bin` folder (e.g., `C:\Users\<YourUsername>\code\bin`).
        5. Click "OK" to close all dialog boxes.

Now you can access Hugo and Git from any terminal window.

## Setting up the local repository

First, Open VS Code. Then, open a terminal window (Terminal > New Terminal).

Switch to a directory where you want to store your code (e.g. `~/code`)

> `~` is your home directory (E.g. `/Users/david` on macOS)

```cd ~/code```

Clone this repository:

```git clone https://github.com/ddlitlab/ddlitlab.github.io.git```

Now you have a local copy of the repository. You can switch to the directory:

```cd ddlitlab.github.io.git```

## Running the website locally

You can run the site locally:

```hugo server```

This starts a local webserver which you can access in your browser at `http://localhost:1313`.


## Making changes

You can make changes to the website in the `content` directory. This is where all the content of the website is stored. You can try to change something in the file `content/about.md`. This is the "About" page of the website. You add some text in this file and save it. The local webserver will automatically reload the page in your browser.

> Edit the file in VS Code. You can open the file by clicking on it in the Explorer view (left sidebar). After editing, save the file by pressing `cmd + s` (macOS) or `ctrl + s` (Windows/Linux). The local webserver will automatically reload the page in your browser.