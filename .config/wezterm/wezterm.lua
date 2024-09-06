-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("Ligalex Mono")
config.font_size = 16.0

---- Toggle theme depending on system settings
function Get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
end

function Scheme_for_appearance(appearance)
	-- if appearance:find("Light") then
	-- 	-- return "Atelier Cave Light (base16)"
	-- 	return "AtomOneLight"
	-- else
	-- 	return "Builtin Dark"
	-- end
	--
	return "Builtin Dark"
end

config.color_scheme = Scheme_for_appearance(Get_appearance())

config.window_decorations = "RESIZE"
config.tab_bar_at_bottom = true

-- and finally, return the configuration to wezterm
return config
