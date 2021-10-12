local fs = require("fs")

local function read_cb(err, file_content)
  if err then error(err) end
  print(file_content)
end

local function open_cb(err, file_descriptor)
  if err then error(err) end
  fs.read(file_descriptor, read_cb)
end

local fd = fs.open("test.txt", open_cb)