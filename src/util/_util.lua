local function readAll(filePath)
    local f = assert(io.open(filePath, "rb"))
    local content = f:read("*all")
    f:close()
    return content
end

local _mod = json.decode(readAll(ModPath .. "mod.txt"))
log(json.encode(_mod))