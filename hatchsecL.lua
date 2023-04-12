if game:GetService("CoreGui"):FindFirstChild("ScreenGui") then
game:GetService("CoreGui").ScreenGui:Destroy()
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-backups/main/uwuware-v1.lua"))()
local main = library:CreateWindow("cam guy's pet system")
local folder = main:AddFolder('Pet Spawning')

folder:AddButton({text = "Spawn All Pets", flag = "spawn", callback = function(e)
for i, v in pairs(game:GetService("ReplicatedStorage").GameClient.Assets.PetModels:GetChildren()) do

local ohString1 = "CraftPet"
local ohTable2 = {
    [1] = v.Name,
    [2] = "Gold",
    [3] = {
        [1] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-3",
            ["PetName"] = "Cat"
        },
        [2] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-6",
            ["PetName"] = "Cat"
        },
        [3] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-10",
            ["PetName"] = "Cat"
        },
        [4] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-43",
            ["PetName"] = "Cat"
        },
        [5] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-44",
            ["PetName"] = "Cat"
        },
        [6] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-45",
            ["PetName"] = "Cat"
        },
        [7] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-46",
            ["PetName"] = "Cat"
        },
        [8] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-47",
            ["PetName"] = "Cat"
        },
        [9] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-48",
            ["PetName"] = "Cat"
        },
        [10] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-49",
            ["PetName"] = "Cat"
        }
    }
}

game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.HandlePet:InvokeServer(ohString1, ohTable2)
end
end})

folder:AddButton({text = "Print All Pets", flag = "spawn", callback = function(e)
for i, v in pairs(game:GetService("ReplicatedStorage").GameClient.Assets.PetModels:GetChildren()) do
print(v.Name)
end
end})

folder:AddBox({text = "Spawn A Specific Pet", flag = "spawn", callback = function(e)
local ohString1 = "CraftPet"
local ohTable2 = {
    [1] = e,
    [2] = "Gold",
    [3] = {
        [1] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-3",
            ["PetName"] = "Cat"
        },
        [2] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-6",
            ["PetName"] = "Cat"
        },
        [3] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-10",
            ["PetName"] = "Cat"
        },
        [4] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-43",
            ["PetName"] = "Cat"
        },
        [5] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-44",
            ["PetName"] = "Cat"
        },
        [6] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-45",
            ["PetName"] = "Cat"
        },
        [7] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-46",
            ["PetName"] = "Cat"
        },
        [8] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-47",
            ["PetName"] = "Cat"
        },
        [9] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-48",
            ["PetName"] = "Cat"
        },
        [10] = {
            ["Locked"] = false,
            ["PetID"] = "1783974927-49",
            ["PetName"] = "Cat"
        }
    }
}

game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.HandlePet:InvokeServer(ohString1, ohTable2)
end})

folder:AddBind({text = "Toggle UI", key = "RightShift", callback = function() library:Close() end})

library:Init()