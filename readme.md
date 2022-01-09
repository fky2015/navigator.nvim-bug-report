### What is the problem?

It seems that the preview-window didn't show up.

![image.png](https://s2.loli.net/2022/01/09/K3w4ZeqAzgvh1XM.png)

(Just ignore the pink background color) (Purple border below the floating window is from my screenshot software)

### How to reproduce?

```BASH

nvim -u init.lua test.py

# First, run :PackerInstall to install newest deps. (I use fastgit due to the slow network in my erea to access github directly)

# In nvim, move cursor to any function then press `gr`
```

### Version

nvim 0.6.1

