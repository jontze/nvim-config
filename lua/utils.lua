-- Assign empty table
local Utils = {}

-- Add keymap helper to utils
function Utils.keymap(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)

end

return Utils

