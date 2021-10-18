local thread = require("thread")
local setTimeout = require("timer").setTimeout

-- Threads are really useful for I/O operations, like
-- reading/writing to disk
local t = thread.start(function ()
  print("Hello from another thread!")
end)

p(t)

-- Keeps the process waiting a bit while the thread
-- finish
setTimeout(2000, function()end)