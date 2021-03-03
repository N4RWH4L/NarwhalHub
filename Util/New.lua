local function DrawingNew(inst, props)
    local obj = Drawing.new(inst)

    if props and typeof(props) == "table" then
        for i, v in pairs(props) do
            obj[i] = v
        end
    end

    return obj
end

local function InstanceNew(inst, props)
    local obj = Instance.new(inst)

    if props and typeof(props) == "table" then
        for i, v in pairs(props) do
            obj[i] = v
        end
    end

    return obj
end

return InstanceNew, DrawingNew