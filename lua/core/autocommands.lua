vim.cmd [[
    augroup _general_settings
        autocmd!
        autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
        autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
    augroup end

    augroup _lsp
        autocmd!
        autocmd BufWritePre * lua vim.lsp.buf.format()
    augroup end
]]

-- Markdown wrapping and spelling
--[[ augroup _markdown
autocmd!
autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal spell
augroup end ]]
