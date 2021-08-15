local M = {}

function M.is_client_active(name)
  local clients = vim.lsp.get_active_clients()
  for _, client in pairs(clients) do
    if client.name == name then
      return true
    end
  end
  return false
end

function M.get_active_client_by_ft(filetype)
  if not options.lang[filetype] or not options.lang[filetype].lsp then
    return nil
  end

  local clients = vim.lsp.get_active_clients()
  for _, client in pairs(clients) do
    if client.name == options.lang[filetype].lsp.provider then
      return client
    end
  end
  return nil
end

return M