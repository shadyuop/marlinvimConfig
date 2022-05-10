return {
  -- *** Disabling core packages ****
  -- ["declancm/cinnamon.nvim"] = { disable = true },
  -- ["goolord/alpha-nvim"] = { disable = true },

  -- ** Installing packages ***
-- Hop
	{
		"phaazon/hop.nvim",
		as = "hop",
		config = function()
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	},

-- lua completion source
  {
   "hrsh7th/cmp-nvim-lua",
    after = "nvim-cmp",
    config = function()
      require("core.utils").add_user_cmp_source "lua"
    end,
  },
-- lua completion source
  {
  "hrsh7th/cmp-cmdline",
    after = "nvim-cmp",
    config = function()
      require("core.utils").add_user_cmp_source "cmdline"
    end,
  },
    {
    "hrsh7th/cmp-calc",
    after = "nvim-cmp",
    config = function()
      require("core.utils").add_user_cmp_source "calc"
    end,
  },
  {
    "hrsh7th/cmp-emoji",
    after = "nvim-cmp",
    config = function()
      require("core.utils").add_user_cmp_source "emoji"
    end,
  },
  -- treesitter playground InfoBar
  {"nvim-treesitter/playground"},
  -- * Multi-cursor vim integration
  {"mg979/vim-visual-multi"},
  -- * Minimap
  {
    'rinx/nvim-minimap'
  },
  -- * scrollbar
  {
    "petertriho/nvim-scrollbar",
    config =function() require("user.plugins.scrollbar").config() end,
  },
  {
  "EdenEast/nightfox.nvim",
  config = function()
    require("nightfox").setup(require "user.plugins.nightfox")
  end,
  },
  {
    "andymass/vim-matchup",
    opt = true,
    setup = function()
      require("core.utils").defer_plugin "vim-matchup"
    end,
  },
  {
    "danymat/neogen",
    module = "neogen",
    cmd = "Neogen",
    config = function()
      require("neogen").setup(require "user.plugins.neogen")
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  },
}
