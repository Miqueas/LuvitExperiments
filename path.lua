local path = require("path")
local pathjoin = require("pathjoin")

p(path)
p(pathjoin)

local my_path = pathjoin.joinParts(
  path._internal.sep, {
    "foo",
    "bar",
    "baz"
  }
)

print(my_path)
p(pathjoin.splitPath(my_path))