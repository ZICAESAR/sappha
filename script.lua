_G.KeyCode_Autoclicker = Enum.KeyCode.RightControl

local inputkey = game:GetService("UserInputService"):IsKeyDown(_G.KeyCode_Autoclicker)
repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
local returnfunction = {}
spawn(function() 
    while wait() do
        if inputkey then
            pcall(function()
                for i = 1,2 do
                    (function()
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new(1200,720))
                    end)()
                end
            end)
        else
        end
    end
    warn(error)
    warn('Script is on')
end)
 
local overleygame = game.CoreGui.RobloxPromptGui.promptOverlay
local Tphttp = game:GetService('TeleportService')
while wait(1) do
    overleygame.ChildAdded:connect(function(errpro)
        if errpro.Name == 'ErrorPrompt' then
            Tphttp:Teleport(game.PlaceId)
            wait(2)
        end
    end)
end
pcall(setfpscap,99999)
return returnfunction
