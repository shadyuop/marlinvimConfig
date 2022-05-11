return {
  -- *** Disabling core packages ****
  -- ["declancm/cinnamon.nvim"] = { disable = true },
  -- ["goolord/alpha-nvim"] = { disable = true },

  -- ** Installing packages ***
 -- Start screen
  {
    "goolord/alpha-nvim",
    cmd = "Alpha",
    module = "alpha",
    config = function()
      require("user.plugins.alpha").config()
    end,
  },

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
  -- Telescope Extenders
  {
    "nvim-telescope/telescope-bibtex.nvim",
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "bibtex"
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "file_browser"
    end,
  },
  {
    "nvim-telescope/telescope-hop.nvim",
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "hop"
    end,
  },
  {
    "nvim-telescope/telescope-media-files.nvim",
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "media_files"
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "project"
    end,
  },

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
  -- Adding annotations easily
  {
    "danymat/neogen",
    module = "neogen",
    cmd = "Neogen",
    config = function()
      require("neogen").setup(require "user.plugins.neogen")
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  },
  -- adding Tagbar requiring ctags in path
  {'majutsushi/tagbar'},
  -- Markdown Preview
  {"davidgranstrom/nvim-markdown-preview"},
  -- -- Nabla
  --
  -- { "jbyuki/nabla.nvim", module = "nabla" },

}
