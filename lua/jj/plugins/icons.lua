require'nvim-tree'.setup {
   view = {
      mappings = {
         list = {
            { key = "l", cb = require'nvim-tree.config'.nvim_tree_callback('edit') },
            { key = "h", cb = require'nvim-tree.config'.nvim_tree_callback('close_node') },
         },
      },
      show_icons = {
         git = 1,
         folders = 1,
         files = 1,
      },
   },
}

require'nvim-web-devicons'.setup {
   default = true;
}
