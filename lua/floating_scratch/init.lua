local M = {}

-- スクラッチバッファをフローティングウィンドウで表示する関数
M.create_floating_scratch = function()
    local buf = vim.api.nvim_create_buf(false, true)

    if buf == 0 then
        print("Failed to create scratch buffer")
        return
    end

    local width = math.floor(vim.o.columns * 0.4)
    local height = math.floor(vim.o.lines * 0.3)
    local row = vim.o.lines - height - 2
    local col = vim.o.columns - width

    local opts = {
        relative = 'editor',
        width = width,
        height = height,
        row = row,
        col = col,
        style = 'minimal',
        border = 'rounded',
        title = "scratch",
    }

    -- フローティングウィンドウを開く
    vim.api.nvim_open_win(buf, true, opts)
end

return M
