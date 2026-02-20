return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      prompts = {
        Rename = {
          prompt = 'Please rename the variable correctly in given selection based on context',
          selection = function(source)
            local select = require 'CopilotChat.select'
            return select.visual(source)
          end,
        },
      },
    },
    keys = {
      { '<leader>cc', ':CopilotChat<CR>', mode = 'n', desc = 'Open Copilot Chat' },
      { '<leader>cn', ':CopilotChatRename<CR>', mode = 'v', desc = 'Rename Variable' },
      { '<leader>cl', ':CopilotChatClose<CR>', mode = 'n', desc = 'Close Copilot Chat' },
      { '<C-s>', ':CopilotChatCommit<CR>', mode = 'n', desc = 'Commit Copilot Chat Suggestion' },
      { '<leader>ct', ':CopilotChatTest<CR>', mode = 'n', desc = 'CopilotChat Test' },
      { '<leader>ce', ':CopilotChatExplain<CR>', mode = 'v', desc = 'Copilot Chat Explain' },
      { '<leader>cf', ':CopilotChatFix<CR>', mode = 'v', desc = 'Copilot Chat Fix' },
      { '<leader>co', ':CopilotChatOptimize<CR>', mode = 'v', desc = 'Copilot Chat Optimize' },
      { '<leader>cd', ':CopilotChatDocs<CR>', mode = 'v', desc = 'Copilot Chat Docs' }, -- { '<leader>cm', ':CopilotChatCommit<CR>', mode = 'n', desc = 'Copilot Chat Commit' }, accpt nearest diff
      { '<leader>cy', 'accept_diff', mode = 'n', desc = 'Accept Copilot Chat Suggestion' },
    },
  },
}
