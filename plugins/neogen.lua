
return {
  snippet_engine = "luasnip",
  languages = {
    python = {
      template = {
        annotation_convention = "google_docstrings",
      },
    },
    typescript = {
      template = {
        annotation_convention = "tsdoc",
      },
    },
    typescriptreact = {
      template = {
        annotation_convention = "tsdoc",
      },
    },
    c = {
      template = {
        annotation_convention = "doxygen"
      }
    },
    csharp = {
      template = {
        annotation_convention = "xmldoc"
      }
    },
    lua = {
      template = {
        annotation_convention = "emmylua"
      }
    }
  },
}
