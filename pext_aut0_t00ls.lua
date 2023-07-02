_G.AutoTp = true

local Username = {
    [1] = {
        ["Username"] = {
            "Vxy_55576",
            "Vxy_52449",
            "Vxy_83043",
            "Vxy_53208",
            "T0njJB"
        },
        ["Target"] = "VIP_1Bean"
    },
    [2] = {
        ["Username"] = {
            "cN777N",
            "LMOu3p",
            "xBbxie",
            "1oT8hL",
            "13qQkm"
        },
        ["Target"] = "VIP_2Tang"
    },
    [3] = {
        ["Username"] = {
            "vfh9Fg",
            "gPyt34",
            "d7Qft6",
            "qnEvY7",
            "wsYZAw"
        },
        ["Target"] = "VIP_3Searle"
    },
    [4] = {
        ["Username"] = {
            "GuBHCP",
            "XYArvh",
            "y0yPOn",
            "fcu5kT",
            "3PkXjr"
        },
        ["Target"] = "VIP_4Mellor"
    },
    [5] = {
        ["Username"] = {
            "FoJUFC",
            "NmUrH9",
            "bUMJfY",
            "7iTCig",
            "tPZjN6"
        },
        ["Target"] = "VIP_5Oneil"
    },
    [6] = {
        ["Username"] = {
            "JQFmex",
            "MhR5np",
            "Ugjv7z",
            "mQkfY2",
            "0vlG7C"
        },
        ["Target"] = "VIP_6Hood"
    },
    [7] = {
        ["Username"] = {
            "SDBDYO",
            "rGvXbd",
            "BxmgPF",
            "wH79zT",
            "mZmUga"
        },
        ["Target"] = "VIP_7Robin"
    },
    [8] = {
        ["Username"] = {
            "J2SYHq",
            "oYpcU9",
            "25jyJw",
            "BTDCpX",
            "TOZJb8"
        },
        ["Target"] = "VIP_8Reilly"
    },
    [9] = {
        ["Username"] = {
            "Ec97HQ",
            "N4bmC3",
            "X2Nw5j",
            "dHdS3q",
            "vqpmHB"
        },
        ["Target"] = "VIP_9Cairn"
    },
    [10] = {
        ["Username"] = {
            "6PzyqG",
            "DEENz6",
            "5zFcG0",
            "PF85gN",
            "PuNp4h"
        },
        ["Target"] = "VIP_10Vang"
    },
    [11] = {
        ["Username"] = {
            "tuqSmd",
            "3fPcQr",
            "5JQCob",
            "O572su",
            "ao4Os7"
        },
        ["Target"] = "VIP_11Lang"
    },
    [12] = {
        ["Username"] = {
            "3Fiy7A",
            "vnN9LA",
            "KqxvkL",
            "lq2j8v",
            "bcvKwR"
        },
        ["Target"] = "VIP_12Rosa"
    },
    [13] = {
        ["Username"] = {
            "XeZmy1",
            "kDKwhr",
            "l7yY0t",
            "wyHOLu",
            "5TuqzJ"
        },
        ["Target"] = "VIP_13Ryder"
    },
    [14] = {
        ["Username"] = {
            "5xuHE2",
            "eLOvYF",
            "2aD7Qk",
            "IKNlXM",
            "wG0AES"
        },
        ["Target"] = "VIP_14Burrii"
    },
};

repeat wait() until Game:IsLoaded()
function Check()
    local lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
    if lib.Loaded then
        return true
    end
    if not lib.Loaded then
        return false
    end
end
repeat wait() until Check()
repeat wait() until game:GetService("CoreGui"):FindFirstChild("Walker")
wait("10")

local Name = game.Players.LocalPlayer.Name
local DA = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value
local function DMs()
local Target = nil
repeat task.wait() 
    for i, v in pairs(Username) do 
        if table.find(v["Username"], game.Players.LocalPlayer.Name) then 
            Target = v["Target"]
        end
    end
until typeof(Target) ~= "nil"
local UserID = game:GetService("Players"):GetUserIdFromNameAsync(Target) 
local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Fire, Invoke = Network.Fire, Network.Invoke
local old
old = hookfunction(getupvalue(Fire, 1), function(...)
   return true
end)
local old2
old2 = hookfunction(getupvalue(Invoke, 1), function(...)
   return true
end)
local BankID : string = "";
local Respone = Invoke("Get My Banks")
for i, v in pairs(Respone) do
    if v["Owner"] == UserID then 
        BankID = v["BUID"]
    end
end
Invoke("Bank Deposit", BankID, {}, DA)
end

spawn(function()
       while wait(.1) do
       if _G.AutoTp == true then
           pcall(function()

                    wait(.5)
                    local ID = game.Players.LocalPlayer.UserId
                    local A = game.Players.LocalPlayer.Character.HumanoidRootPart
                    local Diamond_Mine_TP = {}
                        for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Loading.Frame:GetChildren()) do
                            if v.ClassName == "Frame" then
                                table.insert(Diamond_Mine_TP,v.Name)
                                if table.find(Diamond_Mine_TP,"Info") then
                                    if v.Location.Text == "Diamond Mine" then
                                                A.CFrame = CFrame.new(8925.47461, -61.6901894, 2564.99097)
                                                if DA >= 10000000000 then
                                                    wait(.7)
                                                    _G.AutoTp = false
                                                    wait(.7)
                                                    A.CFrame = CFrame.new(9248.52344, -15, 2914.09204)
                                                    wait(.7)
                                                    DMs()
                                                    repeat 
                                                    wait()
                                                    DA = 0
                                                    until DA == 0
                                                    _G.AutoTp = true
                                                end
                                    end
                                    if v.Location.Text == "Spawn World" then
											repeat wait()
												print("Found")
													until typeof(game:GetService("Workspace").__MAP.Interactive:FindFirstChild("Diamond Mine Collapsed Sign")) == "nil"
													wait()
													print("Not Found")
												local ts = game:GetService("TeleportService")
                                                local p = game:GetService("Players").LocalPlayer
                                                ts:Teleport(game.PlaceId, p)
                                    end
                                    end
                                end
                            end

            end)
        end
        end
end)