local timer = require("timer")

local function cb(...)
  print("Hello!")
end

timer.setTimeout(2000, cb)
print("Bye!")