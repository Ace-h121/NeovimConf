local client = vim.lsp.start_client{
  name = "testLSP",
  cmd={ "/home/ace/Documents/Programming/Networking/LSP/LSP" },
}

if not client then 
  vim.notify "No client"
  return
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end
})



