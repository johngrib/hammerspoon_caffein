package = "johngrib.hammerspoon.caffein"
version = "0.1-1"

local url = "github.com/johngrib/hammerspoon_caffein"
local desc = "hammerspoon caffein"

source = {url = "git://" .. url}
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://" .. url,
  license = "MIT",
}

-- Dependencies:
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
}

-- Build rules:
build = {
  type = "builtin",
  modules = {
    ["johngrib.hammerspoon.caffein"] = "hammerspoon_caffein.lua",
  },
}
