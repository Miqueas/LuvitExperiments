local http = require("http")

local function get_cb(res)
  print("Status code: " .. tostring(res.statusCode))
  print("Status message: " .. tostring(res.statusMessage))

  print("Headers:")
  for i, v in ipairs(res.headers) do
    print((" %02d -> %s: %s"):format(i, v[1], v[2]))
  end
end

http.get("https://www.google.com", get_cb)