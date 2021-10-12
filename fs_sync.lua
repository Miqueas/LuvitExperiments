local fs = require("fs")
local fd = fs.openSync("test.txt")
print(fs.readSync(fd))