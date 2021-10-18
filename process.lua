local cpu = process.cpuUsage()
local mem = process.memoryUsage()
local cwd = process.cwd()

p(cpu)
p(mem)
p(cwd)