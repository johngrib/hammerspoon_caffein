# hammerspoon-caffein

Hammerspoon-caffeine prevents mac sleep.

# how to install

Use [luarocks](https://luarocks.org/).

```sh
$ luarocks install johngrib.hammerspoon.caffein --local
```

Place this in your `~/.hammerspoon/init.lua`:

```lua
require('luarocks.loader')
require('johngrib.hammerspoon.caffein'):init({'shift', 'cmd'}, 'f1')    -- This shortcut can be changed
```

# how to use

* Click `☕️🙄`, `😴` icon to toggle.
* Input hotkey to toggle.
