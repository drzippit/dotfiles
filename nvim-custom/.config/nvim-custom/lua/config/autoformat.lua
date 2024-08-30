-- Path to store the state file
local state_file = vim.fn.stdpath("data") .. "/auto_format_on_save_state"

-- Function to save the current state to a file
local function save_state()
  local file = io.open(state_file, "w")
  if file then
    file:write(tostring(_G.auto_format_on_save))
    file:close()
  end
end

-- Function to load the state from the file
local function load_state()
  local file = io.open(state_file, "r")
  if file then
    local state = file:read("*a")
    _G.auto_format_on_save = (state == "true")
    file:close()
  else
    _G.auto_format_on_save = true -- default value
  end
end

-- Load the state when Neovim starts
load_state()

-- Function to toggle auto-format on save
function ToggleAutoFormat()
  _G.auto_format_on_save = not _G.auto_format_on_save
  if _G.auto_format_on_save then
    vim.api.nvim_command("autocmd BufWritePre * lua vim.lsp.buf.format()")
    print("Auto-format on save: ON")
  else
    vim.api.nvim_command("autocmd! BufWritePre * lua vim.lsp.buf.format()")
    print("Auto-format on save: OFF")
  end
  save_state() -- Save the state whenever it changes
end

-- Bind the function to a key, e.g. <Leader>tf
vim.api.nvim_set_keymap('n', '<Leader>tf', ':lua ToggleAutoFormat()<CR>', { noremap = true, silent = true })
