return {
  'windwp/nvim-autopairs',
  dependencies = {
    'hrsh7th/nvim-cmp',
  },
  event = { 'InsertEnter' },
  config = function()
    -- configure autopairs
    require('nvim-autopairs').setup({
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { 'string' }, -- don't add pairs in lua string treesitter nodes
        javascript = { 'template_string' }, -- don't add pairs in javascript template_string treesitter nodes
        java = false, -- don't check treesitter on java
      },
    })

    -- import nvim-autopairs completion functionality
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    -- import nvim-cmp plugin (completions plugin)
    local cmp = require('cmp')

    -- make autopairs and completion work together
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
