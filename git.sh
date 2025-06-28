#!/bin/bash

# 관리할 git 저장소 목록 (절대경로나 상대경로)
REPOS=(
  "$HOME/.config/nvim"
  "$HOME/workspace/my_projects"
  "$HOME/workspace/dotfiles"
)



git_status_all() {
  for repo in "${REPOS[@]}"; do
    if [ -d "$repo/.git" ]; then
      echo "[STATUS] $repo"
      git -C "$repo" status -s
      echo
    else
      echo "[SKIP] $repo is not a git repo"
    fi
  done
}

git_pull_all() {
  for repo in "${REPOS[@]}"; do
    echo "[PULL] $repo"
    git -C "$repo" pull
    echo
  done
}

git_push_all() {
  for repo in "${REPOS[@]}"; do
    echo "[PUSH] $repo"
    git -C "$repo" push
    echo
  done
}

git_commit_all() {
  local msg="$1"
  if [ -z "$msg" ]; then
    echo "❌ 커밋 메시지를 입력하세요."
    return 1
  fi
  for repo in "${REPOS[@]}"; do
    echo "[COMMIT] $repo"
    git -C "$repo" add .
    git -C "$repo" commit -m "$msg"
    echo
  done
}

