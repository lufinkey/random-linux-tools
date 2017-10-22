# git-commit-at

Creates a git commit with a specified date

### Usage

```bash
git-commit-at <date> [<args>]
```

**date** can be the output of the **date** command. For example:

```bash
git-commit-at "$(date)" -m "this commit will have the current system time"
```



# git-submodule-delete

Deletes a submodule from a git repo, along with all of its files

### Usage

```bash
git-submodule-delete [-f] [-m <submodule>|<submodule>]
```



# no-internet

Runs a command without an internet connection

### Usage

```bash
no-internet <command>
```



# wifi-password

Looks up your wifi password from NetworkManager

### Usage

```bash
wifi-password <SSID>
```

If an SSID is not specified, this script uses the currently connected SSID.
If no SSID is connected, the script exits with no output
