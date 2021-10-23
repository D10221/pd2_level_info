if not LEVEL_INFO then
    LEVEL_INFO = {
        savePath = SavePath .. "level_info.json",
        data = { levels = tweak_data.levels }
    }

    local function saveJson(filePath, data)
        local f = io.open(filePath, "w")
        f:write(json.encode(data))
        f:close()
    end

    function LEVEL_INFO:save()
        saveJson(self.savePath, self.data)
    end
end

if LEVEL_INFO then LEVEL_INFO:save() end

