-- Moonscript example by Nelson "darltrash" Lopez
http = require 'http'

http.createServer((req, self) ->
  contentBody = "<h1>404: Not found!</h1>"
  contentType = "text/html"

  req.url = "/index" if req.url == "/"
  switch req.url
    when "/index"
      contentBody = "<h1> Hello, World! </h1>"

  @setHeader("Content-Type", contentType)
  @setHeader("Content-Length", #contentBody)
  @finish(contentBody)
)\listen(1337, '127.0.0.1')

print('Server running at http://127.0.0.1:1337/')