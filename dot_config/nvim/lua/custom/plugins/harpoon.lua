vim.pack.add {
  { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
}

local harpoon = require 'harpoon'

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon add current buffer' })

vim.keymap.set('n', '<leader>1', function() harpoon:list():select(1) end, { desc = 'Harpoon add current buffer' })
vim.keymap.set('n', '<leader>2', function() harpoon:list():select(2) end, { desc = 'Harpoon add current buffer' })
vim.keymap.set('n', '<leader>3', function() harpoon:list():select(3) end, { desc = 'Harpoon add current buffer' })
vim.keymap.set('n', '<leader>4', function() harpoon:list():select(4) end, { desc = 'Harpoon add current buffer' })

vim.keymap.set('n', '<leader>r1', function() harpoon:list():replace_at(1) end, { desc = 'Harpoon replace 1' })
vim.keymap.set('n', '<leader>r2', function() harpoon:list():replace_at(2) end, { desc = 'Harpoon replace 2' })
vim.keymap.set('n', '<leader>r3', function() harpoon:list():replace_at(3) end, { desc = 'Harpoon replace 3' })
vim.keymap.set('n', '<leader>r4', function() harpoon:list():replace_at(4) end, { desc = 'Harpoon replace 4' })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<C-S-P>', function() harpoon:list():prev() end)
vim.keymap.set('n', '<C-S-N>', function() harpoon:list():next() end)
