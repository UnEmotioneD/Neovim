return {
  -- Supports LSP for Rust
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
    ft = 'rust',
    config = function()
      local mason_registry = require('mason-registry')
      local codelldb = mason_registry.get_package('codelldb')
      local extension_path = codelldb:get_install_path() .. '/extension/'
      local codelldb_path = extension_path .. 'adapter/codelldb'
      local liblldb_path = extension_path .. 'lldb/lib/liblldb.dylib' -- For Linux 'lldb/lib/liblldb.so'
      local cfg = require('rustaceanvim.config')

      vim.g.rustaceanvim = {
        dap = {
          adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
        },
      }
    end,
  },

  -- Syntax highlighting and formatting
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  -- Cargo.toml management
  {
    'saecki/crates.nvim',
    ft = { 'toml' },
    config = function()
      require('crates').setup({
        completion = {
          cmp = {
            enabled = true,
          },
        },
      })
      require('cmp').setup.buffer({
        sources = { { name = 'crates' } },
      })
    end,
  },
}
