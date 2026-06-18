# Contributing to joe-my-personal-jarvis

Thanks for your interest in contributing. This document explains the
standards, branch strategy, commit conventions, code review expectations,
and security disclosure process used by this project.

Standards
- Use clear, idiomatic code and follow the language-specific style guides.
- Write tests for new features and bug fixes. Tests should be deterministic.
- Keep commits small and focused; one logical change per commit.

Branch strategy
- `main` contains the stable release-ready code.
- Work in feature branches named `feat/<short-description>`.
- Bugfix branches: `fix/<short-description>`.
- Use pull requests to merge into `main`; PRs must have at least one review.

Commit messages
- Use the conventional commit style briefly:

  - `feat:` A new feature
  - `fix:` A bug fix
  - `docs:` Documentation only changes
  - `chore:` Build process or auxiliary tools

Example:

```
feat: add user authentication adapter
```

Code review
- Provide a clear description of the problem and the change in the PR.
- Link related issues or discussions.
- Address review comments promptly and squash/rebase when requested.

Security
- If you discover a security issue, follow `SECURITY.md` to report it
  privately.

Thank you for contributing!
