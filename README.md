# bash_functions
Repository with reusable Bash functions, to be imported inside your scripts.

There are multiple ways to use this repository inside your projects. If you want to use the whole repository, the easiest way would be to use git subtrees. With gitsubtrees, the repository is nested inside your project and can be updated separately when needed. To use a subtree inside your project you can add the remote and subtree with:
```
git remote add -f bash_functions https://github.com/Mr-XOOMY/bash_functions
```
```
git subtree add --prefix bash_functions bash_functions main --squash
```

For updates you would use the commands:
```
git fetch bash_functions
```
```
git subtree pull --prefix .bash_functions bash_functions main --squash
```

If you only need some specific functions, you can always just create a folder inside your project and copy over the functions needed. This makes your project not reliant on the external repo, but you need to update these functions manually if needed.


Another way to use these functions is to copy the code of a function inside your script. This is great if your script must be a single file, but remember to copy ALL needed parts, including global variables, to prevent bugs inside your code.
