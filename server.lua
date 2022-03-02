local http = require("http")

http.createServer(function (req, res)
  local content = {
    body = [[<h1>Error 404: Not Found!</h1>]],
    type = "text/html"
  }

  if req.url == "/" then
    content.body = [[<h1>Hello, world!</h1>]]
  end

  res:setHeader("Content-Type", content.type)
  res:setHeader("Content-Length", #content.body)
  res:finish(content.body)
end):listen(8080)

print("Server listening in http://localhost:8080")