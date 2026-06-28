## 2026-06-28 - Task: Replace project contact with QQ group
### What was done
- Removed the old sponsor/contact image block from README.md.
- Added 交流 / Contact with QQ group 924211252.
- Added or updated .gitignore so local caches, virtual environments, shortcuts, and generated output are not uploaded.
- Kept the Windows launch batch file in the repository for one-click local startup.

### Testing
- Searched the project for remaining sponsor/contact image strings; only the QQ group contact remains.
- Ran the launch batch file with --self-test; it exited successfully.
- Committed the change locally.
- Attempted to push to the configured GitHub remote, but GitHub returned HTTP 403 because the remote account is suspended.

### Notes
- Changed files: README.md, .gitignore, launch-codex-instruct.bat, progress.md.
- Rollback: revert the latest contact/progress commits with git revert HEAD as needed, or restore README.md to the previous sponsor block from git history.
## 2026-06-28 - Task: Push project to new GitHub repository
### What was done
- Updated origin remote to the new dafage10086 repository.
- Pushed local main branch to GitHub.

### Testing
- git push -u origin main completed successfully.
- Remote repository: https://github.com/dafage10086/codex-config-toolkit

### Notes
- Changed files: progress.md.
- Rollback: reset origin to the previous remote if needed, or delete/archive the new GitHub repository from the GitHub web UI.
## 2026-06-28 - Task: Remove old GitHub contributor from public history
### What was done
- Rewrote the public Git history into a single fresh commit authored by dafage10086.
- Removed historical commit authors that caused the old contributor to appear on GitHub.
- Force-pushed main to replace the previous public history.

### Testing
- Local history after rewrite contains only the new single commit.
- git push --force-with-lease origin main completed successfully.

### Notes
- Changed repository history only; source tree content is kept.
- Rollback: old commits still exist only in local reflog/old clones until garbage-collected; to restore old history, recover the previous main tip from reflog and force-push it.
