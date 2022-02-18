local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Rise Of Nations")

local KillingCheats = PhantomForcesWindow:NewSection("ESP")

KillingCheats:CreateToggle("Toggle ESP", function(value)
        tog = value
        local runServ = game:GetService("RunService")
        if tog == true then
            runServ:BindToRenderStep(
                "ffff",
                Enum.RenderPriority.Camera.Value,
                function()
                    for i, v in pairs(game:GetService("Workspace").Units:GetDescendants()) do
                        if v.Name == "Tag" then
                            v.Enabled = true
                        end
                    end
                    wait()
                end
            )
        end

        if tog == false then
            runServ:UnbindFromRenderStep("ffff")
        end
    end)
