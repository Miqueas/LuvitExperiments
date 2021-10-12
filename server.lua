local http = require("http")

function listener(req, res)
  local path = req.url
  print((" -> %s '%s'"):format(req.method, path))
  res:finish(("You're on '%s'"):format(path))
end

server = http.createServer(listener)
server:listen(8080, function()
  print("Listening at: localhost:8080")
end)