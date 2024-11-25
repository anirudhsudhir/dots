-- hs.loadSpoon("HoldToQuit")
-- spoon.HoldToQuit:start()
--
-- Caffeine
hs.loadSpoon("Caffeine")
hs.hotkey.bind({ "cmd", "alt" }, "C", function()
	spoon.Caffeine:start()
	spoon.Caffeine:setState(true)
end)
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "C", function()
	spoon.Caffeine:stop()
end)

-- Open terminal with opt+return
hs.hotkey.bind({ "alt" }, "return", function()
	local app = hs.application.find("wezterm")

	if app == nil then
		hs.alert.show("Launching wezterm")
		hs.application.launchOrFocus("wezterm")
	elseif app:isFrontmost() then
		app:hide()
	else
		local win = app:mainWindow()
		win:focus()
	end
end)

-- Activate BetterDisplay when using external dsiplays
-- monitorWatcher = nil
--
-- function betterDisplayCallback()
-- 	local screens = hs.screen.allScreens()
-- 	local count = #screens
-- 	if count == 1 then
-- 		app = hs.appfinder.appFromName("BetterDisplay")
-- 		app:kill()
-- 	else
-- 		hs.application.launchOrFocus("BetterDisplay")
-- 	end
-- end
--
-- monitorWatcher = hs.screen.watcher.new(betterDisplayCallback)
-- monitorWatcher:start()
