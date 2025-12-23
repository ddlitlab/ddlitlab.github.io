# DDLitab Webseite

Link: https://ddlitlab.github.io/

## Getting Started

To run this project locally, you need to have Hugo and Git installed on your machine. Additionally, you can use Visual Studio Code as your code editor.

## Installations

* [Install VS Code](https://code.visualstudio.com/download) (gibt es auch in der RRZ Softwareverwaltung)
* [Install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) (please follow the detailed instructions down below in this Read-Me file)
* [Install Hugo](https://gohugo.io/installation/) (go to the "latest release"-link in the text and then pick out the version you need (Windows, Mac, etc) from the list - then follow detailed instructions down below in this Read-Me file)

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

# Changing content

You can make changes to the website in the `content` directory. This is where all the content of the website is stored. 

E.g. the content of the lehrlabor pages are in the `content/lehrlabor` directory. There are english and german versions of the pages. The english pages have the suffix `.en` after the file name.

Best way to edit pages is inside Visual Studio Code. First you go to a terminal and clone the git repository with `git clone https://github.com/ddlitlab/ddlitlab.github.io.git`. Then you open the folder `ddlitlab.github.io` in VS Code. You can then see the files on the left side in the File Explorer.

Before changing files, create a new branch for your changes in the terminal with `git checkout -b changes-yourname`.

Then make your changes. You can check which files you have edit by typing `git status`.

To upload your changes, you need to add your changes to staging with `git add .` and then commit your changes with `git commit -m "Brief description of your changes"`.

Then you push your changes to the remote repository with `git push origin changes-yourname`, where `changes-yourname` is the name you gave to your branch.

I will then integrate the changes into the main branch of the directory.
