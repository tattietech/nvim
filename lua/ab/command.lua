vim.api.nvim_create_user_command('BR', function()
  vim.cmd('!./scripts/build_run.sh')
end, {})
