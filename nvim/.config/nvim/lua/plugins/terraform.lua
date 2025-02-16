return {
  "ANGkeith/telescope-terraform-doc.nvim",
  ft = { "terraform", "hcl" },
  config = function()
    LazyVim.on_load("telescope.nvim", function()
      require("telescope").load_extension("terraform_doc")
    end)
  end,
  keys = {
    { "<leader>tt", "<cmd>Telescope terraform_doc<cr>", desc = "Telescope Terraform Docs" },
    { "<leader>tm", "<cmd>Telescope terraform_doc modules<cr>", desc = "Telescope Terraform Modules" },
    {
      "<leader>ta",
      "<cmd>Telescope terraform_doc full_name=hashicorp/azurerm<cr>",
      desc = "Telescope Terraform Docs Azurerm",
    },
  },
}
