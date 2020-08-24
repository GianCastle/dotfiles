# Dotfiles

#### Configurations for development environment on GNU Linux and  macOS.

### Prerequisites ⚠️

- Linux, MacOS or Windows (yeah, you welcome)
- Git, zsh, curl
- Emacs

### Installation 🥳
```sh -c "$(curl -fsSL https://github.com/GianCastle/dotfiles/raw/master/install.sh"```

If wget is installed, you can run it with wget

```sh -c "$(wget https://github.com/GianCastle/dotfiles/raw/master/install.sh -O -)"```

# Keybindings (Spacemacs)

### General
Shortcut | Description 
---|---
`SPC f e d` | Open Configuration
`SPC f e R` | Reload Configuration
`SPC SPC` | Search Emacs 
`SPC h SPC` | Search Spacemacs Layer
`SPC f s` | Save Buffer
`SPC q q` | Quit Emacs w/ Prompt
`SPC q Q` | Quit Emacs w/o Prompt
`SPC f t` | Toggle NeoTree
`SPC TAB` | Switch window to previous buffer
`SPC ?` | Search for Keybinding

### Window Management `SPC w`
Shortcut | Description 
---|---
`SPC w /` | Vertical Split Window
`SPC w -` | Horizontal Split Window
`SPC w d` | Delete Window
`SPC w 2` | Layout Double Columns
`SPC w 3` | Layout Triple Columns
`SPC w h/j/k/l` | Window Navigation
`SPC w =` | Balance Windows
`SPC w m` | toggle maximize window

### File Management `SPC f`
Shortcut | Description 
---|---
`SPC f s` | Save buffer
`SPC f S` | Save all open buffer
`SPC f f` | Find file
`SPC f t` | Show NeoTree Fileexplorer
`SPC f R` | Rename current buffer

### Buffer Management `SPC b`
Shortcut | Description 
---|---
`SPC b b` | list open buffer; show actions with `CTRL z`
`SPC b d` | kill current buffer
`SPC b p` | previous buffer
`SPC b n` | next buffer

### Project Management `SPC p`
Shortcut | Description 
---|---
`SPC p p` | Search Projects
`SPC p f` | Search in Project
`SPC p h` | Search in Project and open buffers

### Helm Lists
Shortcut | Description 
---|---
`CTRL k` | Down
`CTRL j` | Up
`CTRL h` | parent folder (in file view)
`CTRL SPC` | Mark File
`CTRL z` | Open action menu

### Web Mode
#### General
Shortcut | Description 
---|---
`SPC m g p` |	quickly navigate CSS rules using helm
`SPC m e h` |	highlight DOM errors
`SPC m g b`	| go to the beginning of current element
`SPC m g c` |	go to the first child element
`SPC m g p` | go to the parent element
`SPC m g s` |	go to next sibling
`SPC m h p` |	show xpath of the current element
`SPC m r c` |	clone the current element
`SPC m r d` |	delete the current element (does not delete the children)
`SPC m r r` |	rename current element
`SPC m r w` |	wrap current element
`SPC m z` |	fold/unfold current element
`%` |	evil-matchit keybinding to jump to closing tag
`SPC m .` | Transient state with further actions

### Javascript
Meh...
`https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/javascript`

### JS Refactoring
Shortcut | Description 
---|---
`SPC m w`	 | toggle js2-mode warnings and errors
`SPC m r 3 i` | converts ternary operator to if-statement
`SPC m r c a` | converts a multiline array to one line
`SPC m r e a` | converts a one line array to multiline
`SPC m r c o` | converts a multiline object literal to one line
`SPC m r e o` | converts a one line object literal to multiline
`SPC m r l t` | adds a console.log statement for what is at point (or region)
`SPC m r s s` | splits a string
`SPC m x m j` | move line down, while keeping commas correctly placed
`SPC m x m k` | move line up, while keeping commas correctly placed

### Tern
Shortcut | Description
---|---
`SPC m C-g` |	brings you back to last place you were when you pressed M-..
`SPC m g g`	| jump to the definition of the thing under the cursor
`SPC m g G` |	jump to definition for the given name
`SPC m h d` | find docs of the thing under the cursor. Press again to open the associated URL (if any)
`SPC m h t`	| find the type of the thing under the cursor
`SPC m r r V` | rename variable under the cursor using tern

### JS Doc
Shortcut | Description 
---|---
`SPC m r d b` |	insert JSDoc comment for current file
`SPC m r d f` | insert JSDoc comment for function
`SPC m r d t`	| insert tag to comment
`SPC m r d h` |	show list of available jsdoc tags

## GIT
Shortcut | Description 
---|---
`SPC g s`	| open a magit status window 
`SPC g S`	| stage current file 
`SPC g M`	| display the last commit message of the current line in popup
`SPC g t` |	launch the git time machine 
`SPC g U`	| unstage current file 
`SPC m g f U` | show commits from current file

 
## Org Mode
Don't know when.

## ENJOY!
