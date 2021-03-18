local _utils = {}

function _utils.define_augroups(definitions) -- {{{1
    -- Create autocommand groups based on the passed definitions
    --
    -- The key will be the name of the group, and each definition
    -- within the group should have:
    --    1. Trigger
    --    2. Pattern
    --    3. Text
    -- just like how they would normally be defined from Vim itself
    for group_name, definition in pairs(definitions) do
        vim.cmd('augroup ' .. group_name)
        vim.cmd('autocmd!')

        for _, def in pairs(definition) do
            local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
            vim.cmd(command)
        end

        vim.cmd('augroup END')
    end
end
_utils.define_augroups({
    _general_settings = {
        {
            'TextYankPost', '*',
            'lua require(\'vim.highlight\').on_yank({higroup = \'QuickScopePrimary\', timeout = 200})'
        }, 
        {'BufWinEnter', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufRead', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufNewFile', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        -- {'User', 'GoyoLeave', 'lua require(\'galaxyline\').disable_galaxyline()'},
        -- {'User', 'GoyoEnter', 'lua require(\'galaxyline\').galaxyline_augroup()'},
    },
    numbertoggle = {
        {'BufEnter,FocusGained,InsertLeave', '*', 'set relativenumber'},
        {'BufLeave,FocusLost,InsertEnter', '*', 'set norelativenumber'},
    } 
})

-- Add this to lightbulb, java makes this annoying tho
-- autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

-- lsp

function _utils.add_to_workspace_folder()
    vim.lsp.buf.add_workspace_folder()

end

function _utils.clear_references()
    vim.lsp.buf.clear_references()
end

function _utils.code_action()
    vim.lsp.buf.code_action()
end

function _utils.declaration()
    vim.lsp.buf.declaration()
    vim.lsp.buf.clear_references()
end

function _utils.definition()
    vim.lsp.buf.definition()
    vim.lsp.buf.clear_references()
end

function _utils.document_highlight()
    vim.lsp.buf.document_highlight()
end

function _utils.document_symbol()
    vim.lsp.buf.document_symbol()
end

function _utils.formatting()
    vim.lsp.buf.formatting()
end

function _utils.formatting_sync()
    vim.lsp.buf.formatting_sync()
end

function _utils.hover()
    vim.lsp.buf.hover()
end

function _utils.implementation()
    vim.lsp.buf.implementation()
end

function _utils.incoming_calls()
    vim.lsp.buf.incoming_calls()
end

function _utils.list_workspace_folders()
    vim.lsp.buf.list_workspace_folders()
end

function _utils.outgoing_calls()
    vim.lsp.buf.outgoing_calls()
end

function _utils.range_code_action()
    vim.lsp.buf.range_code_action()
end

function _utils.range_formatting()
    vim.lsp.buf.range_formatting()
end

function _utils.references()
    vim.lsp.buf.references()
    vim.lsp.buf.clear_references()
end

function _utils.remove_workspace_folder()
    vim.lsp.buf.remove_workspace_folder()
end

function _utils.rename()
    vim.lsp.buf.rename()
end

function _utils.signature_help()
    vim.lsp.buf.signature_help()
end

function _utils.type_definition()
    vim.lsp.buf.type_definition()
end

function _utils.workspace_symbol()
    vim.lsp.buf.workspace_symbol()
end

-- diagnostic

function _utils.get_all()
    vim.lsp.diagnostic.get_all()
end

function _utils.get_next()
    vim.lsp.diagnostic.get_next()
end

function _utils.get_prev()
    vim.lsp.diagnostic.get_prev()
end

function _utils.goto_next()
    vim.lsp.diagnostic.goto_next()
end

function _utils.goto_prev()
    vim.lsp.diagnostic.goto_prev()
end

function _utils.show_line_diagnostics()
    vim.lsp.diagnostic.show_line_diagnostics()
end

-- git signs

function _utils.next_hunk()
    require('gitsigns').next_hunk()
end

function _utils.prev_hunk()
    require('gitsigns').prev_hunk()
end

function _utils.stage_hunk()
    require('gitsigns').stage_hunk()
end

function _utils.undo_stage_hunk()
    require('gitsigns').undo_stage_hunk()
end

function _utils.reset_hunk()
    require('gitsigns').reset_hunk()
end

function _utils.reset_buffer()
    require('gitsigns').reset_buffer()
end

function _utils.preview_hunk()
    require('gitsigns').preview_hunk()
end

function _utils.blame_line()
    require('gitsigns').blame_line()
end

-- misc

-- autoformat
-- autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)

return _utils
