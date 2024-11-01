<div align="center">

ToolGit  
[![License](https://img.shields.io/github/license/ahmetsait/toolgit)](UNLICENSE.txt)
===
Git Productivity Toolkit
</div>

ToolGit is a collection of scripts that extend Git with various subcommands to make life easier.

| Command                     | Description                                                                           |
| -------                     | -----------                                                                           |
| `git-amend`                 | Amend currently staged changes.                                                       |
| `git-delete-gone-branches`  | Delete local branches that no longer exist on remote.                                 |
| `git-dir`                   | Output .git directory path of this Git repository.                                    |
| `git-force-pull`            | Fetch and force pull remote tracking branch(es) by doing a hard reset.                |
| `git-forward`               | Fetch and fast forward all remote tracking branches.                                  |
| `git-gc-all`                | Expire the reflog and run a full garbage collection on the Git repository.            |
| `git-in-repo`               | Returns 0 if current working directory is a Git repository, non-zero otherwise.       |
| `git-is-branch-remote`      | Returns 0 if the branch(es) refer to a remote branch.                                 |
| `git-is-head-detached`      | Returns 0 if HEAD is in detached state, non-zero otherwise.                           |
| `git-is-worktree-clean`     | Returns 0 if the working tree has no changes or untracked files, non-zero otherwise.  |
| `git-legacy`                | Rebase the whole history of current HEAD on top of <revision>.                        |
| `git-main-branch`           | Get the name of the main (default) branch.                                            |
| `git-mode-restore`          | Restore file modes in index and/or worktree.                                          |
| `git-root`                  | Output root path of this Git repository.                                              |
| `git-xlog`                  | Search history for string only in added or removed lines.                             |

Installing
----------
Extract ToolGit to an appropriate folder of your choice and add the folder path to your PATH environment variable.
