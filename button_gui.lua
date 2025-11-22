-- Load Kavo UI Lib (free GitHub, super popular/stable)<grok-card data-id="2672f7" data-type="citation_card"></grok-card><grok-card data-id="1eb026" data-type="citation_card"></grok-card>
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Print Hub Demo 😈", "DarkTheme")

-- YOUR REPO BASE URL (change USERNAME)
local repo = "https://raw.githubusercontent.com/cleofaslyn515-cmyk/PrintHubDemo/main/"

-- Demo Tab
local Tab = Window:NewTab("Buttons")
local Section = Tab:NewSection("Click to Load & Print! 🔥")

-- MAGIC BUTTON: Loads/executes print_script.lua from your repo
Section:NewButton("Load Print Script", "Fetches & runs print_script.lua", function()
    loadstring(game:HttpGet(repo .. "print_script.lua"))()
end)

-- Bonus: Direct print (no load)
Section:NewButton("Direct Print", "Just prints here", function()
    print("Direct from button—no file needed! ⚡")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Direct Print!"; Text = "Console updated!"; Duration = 3;
    })
end)

Section:NewLabel("Repo: PrintHubDemo - Add more .lua files!", true)
