local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
  return
end

lsp.preset("recommended")

-- Configure servers
local servers = {
    "pylsp",
    "sumneko_lua",
    "jsonls",
}
lsp.ensure_installed(servers)
local server_opts = {}

for _, server in pairs(servers) do
    -- Allows us to save server configuration in ./settings directory
    local require_ok, conf_opts = pcall(require, "core.lsp.settings." .. server)
    if require_ok then
        server_opts = vim.tbl_deep_extend("force", conf_opts, server_opts)
    end

    lsp.configure(server, server_opts)
end

-- Configure cmp
local require_ok, cmp_opts = pcall(require, "core.cmp")
if not require_ok then
    return
end
lsp.setup_nvim_cmp(cmp_opts)

-- Apply null-ls setup
require "core.lsp.null-ls"

-- Finalize setup
lsp.setup()

