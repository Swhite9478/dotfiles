-- Get the path to the autocommands folder
local autocommands_path = vim.fn.stdpath("config") .. "/lua/martian/autocommands"

-- Function to require all Lua files in the autocommands folder
local function load_autocommands()
	-- gets all lua files in this directory except this one
	local files = vim.fn.systemlist("find " .. autocommands_path .. " -name '*.lua' | grep -v '/init.lua$'")

	for _, filename in ipairs(files) do
		-- load in the files
		local success, module = pcall(require, "martian.autocommands." .. filename:match("^.*/(.+)%.lua$"))
		if success then
			vim.api.nvim_out_write("Loaded autocommands from " .. filename .. "\n")
		else
			vim.api.nvim_err_write("Error loading autocommands from " .. filename .. ": " .. module .. "\n")
		end
	end
end

-- Call the function to load autocommands when Neovim starts
load_autocommands()
