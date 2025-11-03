local Library = loadstring(game:HttpGet("https://pastefy.app/FDuJhgIt/raw"))()
local Window = Library.CreateLib("TITLE", "Sun", "TOGGLETEXT", 0.25)

local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("Section Name")
Section:NewLabel("LabelText")
Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)

local Settings = Window:NewTab("Settings")
local SetTab = Settings:NewSection("UI Settings")

SetTab:NewButton("Remove ToggleMobile", "Removes the ToggleMobile", function()
Library:DestroyTog()
end)

SetTab:NewKeybind("Toggle GUI PC", "its for toggling", Enum.KeyCode.F2, function()
	Library:ToggleUI()
end)
