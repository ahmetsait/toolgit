#!/usr/bin/env bash

app_name="$(basename "${BASH_SOURCE[0]}")"

print_help() {
	expand -t 4 << EOF
Usage:
	$app_name
		Restore file modes in index and/or worktree.

Options:
	-S, --staged
		File modes in the index are restored. Specifying both --worktree and --staged restores both index and worktree.

	-W, --worktree
		The working tree modes are restored. This is the default.

	-?, --help
		Show this help information and exit.
EOF
}

staged=0
worktree=0

while [[ $# -gt 0 ]]; do
	case "$1" in
		-S|--staged)
			staged=1
			shift
			;;
		-W|--worktree)
			worktree=1
			shift
			;;
		-\?|--help)
			print_help
			exit 0
			;;
		-*)
			echo "Unknown option: $1" >&2
			exit 1
			;;
		*)
			echo "Unexpected argument: $1" >&2
			exit 1
			;;
	esac
done

git in-repo -q || exit $?

if [[ staged -eq 0 && worktree -eq 0 ]]; then
	worktree=1
fi

filemode="$(git config get core.fileMode)"
if [[ "${filemode:-true}" == "true" ]]; then
	if [[ staged -ne 0 && worktree -ne 0 ]]; then
		git_apply_opts="--index"
	elif [[ staged -ne 0 ]]; then
		git_apply_opts="--cached"
	else
		git_apply_opts=""
	fi
	git diff -p -R --no-ext-diff --no-color | grep -E "^old mode (100644|100755)" -C1 --color=never --no-group-separator | git apply --allow-empty $git_apply_opts
fi
