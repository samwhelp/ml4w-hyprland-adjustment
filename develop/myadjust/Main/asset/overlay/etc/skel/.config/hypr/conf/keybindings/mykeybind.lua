



--------------------------------------------------------------------------------
-- ## Keybindings
--------------------------------------------------------------------------------

--
-- See:
--
-- * https://wiki.hypr.land/configuring/core/dispatchers/
--




--------------------------------------------------------------------------------
-- ## Keybindings / Mousebind
--------------------------------------------------------------------------------

--
-- See:
--
-- https://wiki.hypr.land/configuring/core/binds/devices/mouse/
--


-- Scroll through existing workspaces with mainMod + scroll
-- hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
-- hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
-- hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
-- hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Move window with `Super + [Mouse Left Button Drag]`
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true, description = "move window" })

-- Move window with `Super + [Mouse Right Button Drag]`
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "resize window" })


-- Toggle floating of window with `Super + [Mouse Middle Button Click]`
hl.bind("SUPER + mouse:274", hl.dsp.window.float({ action = "toggle" }), { mouse = true, description = "toggle floating for active window" })

-- Toggle floating of all window with `ALT + [Mouse Middle Button Click]`
hl.bind("ALT + mouse:274", hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-toggle-allfloat"), { mouse = true, description = "toggle floating for all windows of workspace" })



-- Switch workspace with `Super + [Mouse Middle Button Scroll]`
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { mouse = true, description = "switch previous workspace" })
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { mouse = true, description = "switch next workspace" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Terminal
--------------------------------------------------------------------------------

-- Normal

hl.bind("SUPER + Return", hl.dsp.exec_cmd("~/.config/ml4w/settings/terminal.sh"), { description = "open the terminal" })
hl.bind("ALT + Return", hl.dsp.exec_cmd("~/.config/ml4w/settings/terminal.sh"), { description = "open the terminal" })

-- hl.bind("SUPER + Return", hl.dsp.exec_cmd("xfce4-terminal"), { description = "open the terminal" })
-- hl.bind("ALT + Return", hl.dsp.exec_cmd("xfce4-terminal"), { description = "open the terminal" })

hl.bind("ALT + SHIFT + a", hl.dsp.exec_cmd("xfce4-terminal"), { description = "open the terminal" })
hl.bind("ALT + CTRL + a", hl.dsp.exec_cmd("lxterminal"), { description = "open the terminal" })

hl.bind("ALT + SHIFT + t", hl.dsp.exec_cmd("kitty"), { description = "open the terminal" })
hl.bind("ALT + CTRL + t", hl.dsp.exec_cmd("kitty"), { description = "open the terminal" })


-- Drop Down
-- hl.bind("ALT + SHIFT + y", hl.dsp.exec_cmd("xfce4-terminal --drop-down"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / File Mainager
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + f", hl.dsp.exec_cmd("~/.config/ml4w/settings/filemanager"), { description = "open the file manager" })
hl.bind("ALT + SHIFT + g", hl.dsp.exec_cmd("thunar"), { description = "open the file manager" })

-- hl.bind("ALT + SHIFT + f", hl.dsp.exec_cmd("thunar"), { description = "open the file manager" })
-- hl.bind("ALT + SHIFT + g", hl.dsp.exec_cmd("pcmanfm"), { description = "open the file manager" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Text Editor
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("~/.config/ml4w/settings/editor.sh"), { description = "open the text editor" })

-- hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("mousepad"), { description = "open the text editor" })
-- hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("featherpad"), { description = "open the text editor" })
-- hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("geany"), { description = "open the text editor" })
-- hl.bind("ALT + SHIFT + e", hl.dsp.exec_cmd("subl"), { description = "open the text editor" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Web Browser
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + b", hl.dsp.exec_cmd("~/.config/ml4w/settings/browser.sh"), { description = "open the web browser" })

-- hl.bind("ALT + SHIFT + b", hl.dsp.exec_cmd("firefox --new-tab about:blank"), { description = "open the text editor" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / System Settings
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + s", hl.dsp.exec_cmd("nwg-look"), { description = "look and feel settings" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Volume Control
--------------------------------------------------------------------------------

-- hl.bind("ALT + SHIFT + v", hl.dsp.exec_cmd("mate-volume-control"), { description = "open the volume control" })
hl.bind("ALT + SHIFT + v", hl.dsp.exec_cmd("pavucontrol"), { description = "open the volume control" })
-- hl.bind("ALT + SHIFT + v", hl.dsp.exec_cmd("pavucontrol-qt"), { description = "open the volume control" })



--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Application / Network Settings
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + n", hl.dsp.exec_cmd("kitty --class 'nmtui' --title 'Network Settings' nmtui"), { description = "open the nmtui" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Launcher
--------------------------------------------------------------------------------

hl.bind("ALT + F1", hl.dsp.exec_cmd("nwg-drawer -mb 10 -mr 10 -ml 10 -mt 10"), { description = "open application launcher" })
-- hl.bind("ALT + F2", hl.dsp.exec_cmd("pkill wofi || wofi --normal-window --show drun --allow-images"), { description = "open application launcher" })
-- hl.bind("ALT + F2", hl.dsp.exec_cmd("pkill rofi || rofi -show drun -show-icons"), { description = "open application launcher" })


-- Open application launcher
hl.bind("ALT + F2", hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-launcher"), { description = "open application launcher" })


-- Show keybindings
hl.bind("ALT + F3", hl.dsp.exec_cmd("~/.config/hypr/scripts/keybindings.sh"), { description = "show keybindings" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Launcher / Wofi
--------------------------------------------------------------------------------

--
-- See:
--
-- * https://man.archlinux.org/man/wofi.1.en
-- * https://archlinux.org/packages/community/x86_64/wofi/
--

-- hl.bind("ALT + SHIFT + d", hl.dsp.exec_cmd("pkill wofi || wofi --normal-window --show drun --allow-images"))
-- hl.bind("ALT + SHIFT + r", hl.dsp.exec_cmd("pkill wofi || wofi --show run"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Launcher / Rofi
--------------------------------------------------------------------------------

hl.bind("ALT + SHIFT + d", hl.dsp.exec_cmd("pkill rofi || rofi -show drun -show-icons"), { description = "rofi -show drun" })
hl.bind("ALT + SHIFT + r", hl.dsp.exec_cmd("pkill rofi || rofi -show run"), { description = "rofi -show run" })
hl.bind("ALT + SHIFT + w", hl.dsp.exec_cmd("pkill rofi || rofi -show window -show-icons"), { description = "rofi -show window" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / System
--------------------------------------------------------------------------------


-- Reload
hl.bind("ALT + SHIFT + c", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("ALT + CTRL + c", hl.dsp.exec_cmd("hyprctl reload"))


-- Logout
hl.bind("SUPER + SHIFT + x", hl.dsp.exec_cmd("ml4w-powermenu toggle"), { description = "toggle ml4w-powermenu" })
hl.bind("SUPER + CTRL + x", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"), { description = "Logout" })

hl.bind("ALT + SHIFT + x", hl.dsp.exec_cmd("ml4w-powermenu toggle"), { description = "toggle ml4w-powermenu" })
-- hl.bind("ALT + SHIFT + x", hl.dsp.exec_cmd("wlogout"), { description = "show wlogout" })
hl.bind("ALT + CTRL + x", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"), { description = "Logout" })


-- Halt
hl.bind("ALT + SHIFT + z", hl.dsp.exec_cmd("wlogout"), { description = "show wlogout" })
hl.bind("ALT + CTRL + z", hl.dsp.exec_cmd("systemctl -i poweroff"), { description = "Poweroff" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Control
--------------------------------------------------------------------------------

-- Window Close
local closeWindowBind = hl.bind("SUPER + q", hl.dsp.window.close(), { description = "window close" })
-- closeWindowBind:set_enabled(false)


-- Window Toggle Fullscreen
hl.bind("SUPER + f", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }), { description = "window toggle fullscreen" })

-- Window Toggle Maximized
hl.bind("SUPER + w", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }), { description = "window toggle maximized" })

-- Window Toggle Floating
hl.bind("SUPER + Escape", hl.dsp.window.float({ action = "toggle" }), { description = "window toggle floating" })
hl.bind("ALT + Escape", hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-toggle-allfloat"), { description = "toggle floating for all windows of workspace" })

-- Window Move Center
hl.bind("SUPER + m", hl.dsp.window.center(), { description = "window move to screen center" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Focus
--------------------------------------------------------------------------------

-- Focus window with `Super + <Arrow Key>`
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }), { description = "focus up window" })
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }), { description = "focus down window" })
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }), { description = "focus left window" })
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }), { description = "focus right window" })

-- Focus window with `Super + [k,j,h,l]`
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }), { description = "focus up window" })
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down" }), { description = "focus down window" })
hl.bind("SUPER + h", hl.dsp.focus({ direction = "left" }), { description = "focus left window" })
hl.bind("SUPER + l", hl.dsp.focus({ direction = "right" }), { description = "focus right window" })


-- Focus window with `Super + [a,s]`
hl.bind("SUPER + a", function()
	hl.dispatch(hl.dsp.window.cycle_next())
	--hl.dispatch(hl.dsp.window.cycle_next({ next = false }))
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "focus previous window" })

hl.bind("SUPER + s", function()
	hl.dispatch(hl.dsp.window.cycle_next({ next = true }))
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "focus next window" })


-- Focus master window on layout master
hl.bind("SUPER + c", function()
	hl.dispatch(hl.dsp.layout("focusmaster"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "focus master window" })

-- hl.bind("SUPER + a", function()
-- 	hl.dispatch(hl.dsp.layout("cycleprev"))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)

-- hl.bind("SUPER + s", function()
-- 	hl.dispatch(hl.dsp.layout("cyclenext"))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Swap
--------------------------------------------------------------------------------

-- Swap window with `Super + Shift + [a,s]` on layout master
hl.bind("SUPER + SHIFT + a", function()
	hl.dispatch(hl.dsp.layout("swapprev"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "swap with previous window" })

hl.bind("SUPER + SHIFT + s", function()
	hl.dispatch(hl.dsp.layout("swapnext"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "swap with next window" })


-- Swap master window on layout master
hl.bind("SUPER + SHIFT + c", function()
	hl.dispatnch(hl.dsp.layout("swapwithmaster"))
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "swap with master window" })


-- Swap window on layout master with `Super +[grave,Tab]`
-- hl.bind("SUPER + grave", function()
-- 	hl.dispatch(hl.dsp.window.swap({ prev = true }))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)

-- hl.bind("SUPER + Tab", function()
-- 	hl.dispatch(hl.dsp.window.swap({ next = true }))
-- 	hl.dispatch(hl.dsp.window.bring_to_top())
-- end)




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Move
--------------------------------------------------------------------------------

hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ x = 0, y = -50, relative = true }), { repeating = true, description = "Move window up keyboard" })
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ x = 0, y = 50, relative = true }), { repeating = true, description = "Move window down with keyboard" })
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ x = -50, y = 0, relative = true }), { repeating = true, description = "Move window left with keyboard" })
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ x = 50, y = 0, relative = true }), { repeating = true, description = "Move window right with keyboard" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Window / Resize
--------------------------------------------------------------------------------

hl.bind("SUPER + CTRL + up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true, description = "Reduce window height with keyboard" })
hl.bind("SUPER + CTRL + down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true, description = "Increase window height with keyboard" })
hl.bind("SUPER + CTRL + left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true, description = "Reduce window width with keyboard" })
hl.bind("SUPER + CTRL + right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true, description = "Increase window width with keyboard" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Workspace
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Workspace / Control
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Workspace / Focus
--------------------------------------------------------------------------------

-- Switch workspaces with `Alt + [a,s]`
hl.bind("ALT + a",   hl.dsp.focus({ workspace = "e-1" }), { description = "switch to preivous workspace" })
hl.bind("ALT + s", hl.dsp.focus({ workspace = "e+1" }), { description = "switch to preivous workspace" })

-- Switch previous workspaces with `Alt + z`
hl.bind("ALT + z", hl.dsp.focus({ workspace = "previous" }), { description = "switch to period workspace" })


-- Switch worksapce with `Alt + CTRL + [0-9]`
-- Move active window to a workspace with `ALT + SHIFT + [0-9]`
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind("ALT + CTRL + " .. key, hl.dsp.focus({ workspace = i}), { description = "switch to workspace" })
	hl.bind("ALT + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }), { description = "move window workspace" })
end


-- Switch worksapce with `SUPER + [0-9]`
-- Move active window to a workspace with `SUPER + SHIFT + [0-9]`
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i}), { description = "switch to workspace" })
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }), { description = "mosve window workspace" })
end




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Layout
--------------------------------------------------------------------------------




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Layout / Master
--------------------------------------------------------------------------------

-- Switch orientation on layout master with `ALT +[grave,Tab]`
hl.bind("ALT + grave", hl.dsp.layout("orientationprev"))
hl.bind("ALT + Tab", hl.dsp.layout("orientationnext"))

-- Master window number
hl.bind("ALT + o", hl.dsp.layout("removemaster"))
hl.bind("ALT + p", hl.dsp.layout("addmaster"))




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Screenshot
--------------------------------------------------------------------------------

hl.bind("PRINT" , hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh --instant"), { description = "screenshot" })
hl.bind("ALT + PRINT" , hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh"), { description = "screenshot panel" })
hl.bind("CTRL + PRINT" , hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh --instant-area"), { description = "screenshot area" })

hl.bind("ALT + SUPER + PRINT" , hl.dsp.exec_cmd("~/.config/hypr/scripts/text-extractor.sh"), { description = "extract text from an area" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Wallpaper
--------------------------------------------------------------------------------

hl.bind("ALT + w" , hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-wallpaper-app --random"), { description = "change wallpaper" })
hl.bind("ALT + CTRL + w" , hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-wallpaper-app"), { description = "select wallpaper" })
hl.bind("SUPER + CTRL + w" , hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-wallpaper-automation"), { description = "start wallpaper slide" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Panel
--------------------------------------------------------------------------------

-- Open ML4W Sidebar widget
hl.bind("SUPER + SHIFT + m", hl.dsp.exec_cmd("qs ipc call sidebar toggle"), { description = "toggle side bar" })

-- Open ML4W Calendar widget
hl.bind("SUPER + SHIFT + n", hl.dsp.exec_cmd("qs ipc call calendar toggle"), { description = "show calendar" })

-- Open Select Window Menu
hl.bind("SUPER + Tab", hl.dsp.exec_cmd("qs -p ~/.local/share/quickshell-overview ipc call overview toggle"), { description = "show overview" })

-- Open theme switcher
hl.bind("SUPER + SHIFT + t" , hl.dsp.exec_cmd("~/.config/ml4w/themes/themes.sh"), { description = "Open theme switcher" })
hl.bind("SUPER + CTRL + t" , hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-toggle-theme"), { description = "toggle between light and dark mode" })

-- Open waybar theme switcher
hl.bind("SUPER + SHIFT + y" , hl.dsp.exec_cmd("~/.config/waybar/themeswitcher.sh"), { description = "Open waybar theme switcher" })

-- Open clipboard manager
hl.bind("SUPER + SHIFT + p" , hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-cliphist"), { description = "open clipboard manager" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Brightness
--------------------------------------------------------------------------------

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true, description = "brightness up" })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true, description = "brightness down" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Volume
--------------------------------------------------------------------------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true, description = "volume up" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true, description = "volume down" })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true, description = "volume mute" })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true, description = "mic volume mute" })




--------------------------------------------------------------------------------
-- ## Keybindings / Keybind / Player
--------------------------------------------------------------------------------

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, description = "playerctl next" })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, description = "playerctl play-pause" })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, description = "playerctl play-pause" })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true, description = "playerctl previous" })

