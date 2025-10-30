# Sentinel UI Lib

Credits: [github](https://github.com/MjContiga1) | [scriptblox](https://github.com/MjContiga1)

load the ui lib

```lua
local Library = loadstring(game:HttpGet('https://gist.githubusercontent.com/MjContiga1/5b9535166d60560ac884a871cb0dc418/raw/e7fdb16802d9486d8d04d3e41d3607d89e6b4a1b/Libsuck.lua'))()
```

## Creating the window

```lua
local window = Library:Window('Example UI')
```

## Creating the tabs

replace the id with your own

```lua
local mainTab = window:Tab({"Crafting", "rbxassetid://7734022041"})
local localTab = window:Tab({"LocalPlayer", "rbxassetid://7743875962"})
local settingsTab = window:Tab({"Reward", "rbxassetid://7733673987"})
```
# Elements:
##   label

```lua
mainTab:Label("Welcome to the UI Library!")
```
##   button

```lua
mainTab:Button('Click Me!', function()
    print("Button clicked!")
    game.StarterGui:SetCore("SendNotification", {
        Title = "Notification";
        Text = "Button was clicked!";
        Duration = 3;
    })
end)
```

##   toggle

```lua
mainTab:Toggle('Auto Clicker', false, function(state)
    print("Auto Clicker is now:", state and "ON" or "OFF")
end)
```

##   slider

```lua
mainTab:Slider("Walk Speed", 16, 100, 16, function(value)
    print("Walk Speed set to:", value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
```

##   keybind

```lua
mainTab:Keybind("Toggle UI", Enum.KeyCode.RightShift, function(key)
    print("Key pressed:", key.Name)
end)
```
##   textbox

```lua
mainTab:InputBox("Enter Text", "Type something...", function(text)
    print("Input text:", text)
end)
```

##   single-select dropdown

```lua
local singleDropdown = mainTab:Dropdown("Select Weapon", {"Sword", "Gun", "Knife"}, function(selected)
    print("Selected weapon:", selected)
end)
```

##   multi-select dropdown

```lua
local multiDropdown = mainTab:Dropdown("Select Features", {"ESP", "Aimbot", "Speed", "Jump"}, function(selected)
    print("Selected features:", table.concat(selected, ", "))
end, true) -- true enables multi-select

```

##   button refresh dropdown

```lua
mainTab:Button('Refresh Dropdowns', function()
    singleDropdown:Refresh({"New Sword", "New Gun", "New Knife"})
    multiDropdown:Refresh({"New ESP", "New Aimbot", "New Speed", "New Jump", "New Feature"})
end)
```



