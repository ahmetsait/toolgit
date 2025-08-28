<div align="center">

ToolGit  
[![Platforms](https://img.shields.io/badge/platforms-cygwin%20%7C%20posix-blue)](https://github.com/ahmetsait/toolgit/releases) [![License](https://img.shields.io/github/license/ahmetsait/toolgit)](UNLICENSE.txt) [![Sponsor](https://img.shields.io/badge/Sponsor-black?logo=githubsponsors)](https://github.com/sponsors/ahmetsait)
===
Git Productivity Toolkit
</div>

ToolGit is a collection of scripts that extend Git with various sub-commands to make life easier.

Commands
--------
| Command                     | Description                                                                           |
| -------                     | -----------                                                                           |
| `git amend`                 | (Alias) Amend currently staged changes.                                               |
| `git-gone`                  | Delete local branches that no longer exist on remote.                                 |
| `git dir`                   | (Alias) Output `.git` directory path of this Git repository.                          |
| `git-force-pull`            | Fetch and force pull remote tracking branch(es) by doing a hard reset.                |
| `git-forward`               | Fetch and fast forward all remote tracking branches.                                  |
| `git gc-all`                | (Alias) Expire the reflog and run a full garbage collection on the Git repository.    |
| `git graph`                 | (Alias) Show a pretty commit graph.                                                   |
| `git-in-repo`               | Returns 0 if current working directory is a Git repository, non-zero otherwise.       |
| `git-is-branch-remote`      | Returns 0 if the branch(es) refer to a remote branch.                                 |
| `git-is-head-detached`      | Returns 0 if HEAD is in detached state, non-zero otherwise.                           |
| `git-is-worktree-clean`     | Returns 0 if the working tree has no changes or untracked files, non-zero otherwise.  |
| `git-legacy`                | Rebase the whole history of current HEAD on top of `revision`.                        |
| `git-main-branch`           | Get the name of the main (default) branch.                                            |
| `git-mode-restore`          | Restore file modes in index and/or worktree.                                          |
| `git root`                  | (Alias) Output root path of this Git repository.                                      |
| `git-xlog`                  | Search history for string only in added or removed lines.                             |

Downloads
---------
### [Tarball (Posix)](https://github.com/ahmetsait/toolgit/archive/refs/heads/main.tar.gz)
### [Zip (Windows)](https://github.com/ahmetsait/toolgit/archive/refs/heads/main.zip)

Installing
----------
Extract ToolGit to an appropriate folder of your choice and add the folder path to your `PATH` environment variable. Git will recognize executable `git-*` files in `PATH` and allow using them as sub-commands.

Execute the line below to install aliases as well:
```sh
git config set --append --global include.path path/to/toolgit/aliases.ini
```

Getting Started
---------------
Use `-?` switch to learn about commands and their options. Example:
```
$ git mode-restore -?
usage: git-mode-restore [-s <tree-ish>] [-W] [-S] [-8] [-n] [-q] [-?] path [path ...]

Restore file modes in index and/or worktree.

positional arguments:
  path

options:
  -s <tree-ish>, --source <tree-ish>
                        Restore file modes from the given tree. If not specified, the modes are restored from HEAD if --staged is given, otherwise from the index.
  -W, --worktree        The working tree modes are restored. This is the default.
  -S, --staged          File modes in the index are restored. Specifying both --worktree and --staged restores both index and worktree.
  -8, --octal           Print permissions in octal based numeric format instead of using 'rwx' letters.
  -n, --dry-run         Don’t actually restore file modes, just show what would happen.
  -q, --quiet           Suppress printing file permission changes to standard output.
  -?, --help            Show this help text and exit.
```
Example `mode-restore` usage:
```
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   .editorconfig
        modified:   .gitattributes
        modified:   .vscode/launch.json
        modified:   .vscode/tasks.json
        modified:   README.md
        modified:   UNLICENSE.txt

no changes added to commit (use "git add" and/or "git commit -a")
```
```
$ git diff
diff --git a/.editorconfig b/.editorconfig
old mode 100644
new mode 100755
diff --git a/.gitattributes b/.gitattributes
old mode 100644
new mode 100755
diff --git a/.vscode/launch.json b/.vscode/launch.json
old mode 100644
new mode 100755
diff --git a/.vscode/tasks.json b/.vscode/tasks.json
old mode 100644
new mode 100755
diff --git a/README.md b/README.md
old mode 100644
new mode 100755
diff --git a/UNLICENSE.txt b/UNLICENSE.txt
old mode 100644
new mode 100755
```
```
$ git mode-restore .
rwxrwxr-x -> rw-rw-r--: .editorconfig
rwxrwxr-x -> rw-rw-r--: .gitattributes
rwxrwxr-x -> rw-rw-r--: .vscode/launch.json
rwxrwxr-x -> rw-rw-r--: .vscode/tasks.json
rwxrwxr-x -> rw-rw-r--: README.md
rwxrwxr-x -> rw-rw-r--: UNLICENSE.txt
```
```
$ git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```
