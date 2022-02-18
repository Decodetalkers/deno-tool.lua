local M = {
    deno = {
        lint = true,
    },
}
local function prequire(...)
    local status, lib = pcall(require, ...)
    if status then
        return lib
    end
    --Library failed to load, so perhaps return `nil` or something?
    return nil
end
function M.read()
    local import_map = prequire("settings")
    if import_map then
        M = vim.tbl_deep_extend("force", M, import_map)
    end
    return M["deno"]
end

return M
