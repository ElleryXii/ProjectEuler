-- Utilities

local Utilities =  {}

function SetDefault (t, d)
    local mt = {__index = function () return d end}
    setmetatable(t, mt)
end

return Utilities
