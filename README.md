## git-commit-at

Creates a git commit with a specified date

### Usage

```
git-commit-at <date> [<args>]
```

**date** can be the output of the **date** command. For example:

```
git-commit-at "$(date)" -m "this commit will have the current system time"
```

## git-submodule-delete

Deletes a submodule from a git repo, along with all of its files

### Usage

```
git-submodule-delete [-f] [-m <submodule>|<submodule>]
```
