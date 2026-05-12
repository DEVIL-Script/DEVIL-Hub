local codes = {
    "SUMMERPT2",
    "SUMMERPT1",
    "REVAMP",
    "2020",
    "5000Followers",
    "Slayer",
    "Saber",
    "Legend",
    "ISLANDS",
    "100m",
    "Airstudio",
    "MIRRAWRXD",
    "straw",
    "Update100",
    "PetBoost",
    "VoidGG",
    "weekend",
    "oioi",
    "Yippee",
    "telanthric",
    "defild",
    "melihkardes",
    "mirrorrs",
    "henrydev",
    "mmistaken",
    "cookieclix",
    "cookie",
    "gravy",
    "JS",
    "raven",
    "razor",
    "robzi",
    "subtoaustin",
    "release",
    "calixo",
    "erick",
    "GOLDEN",
    "prez",
    "grim",
    "boss",
    "SEASHORE",
    "HAPPY4TH",
    "AUTOCRAFT",
    "BOSSING",
    "DUNGEONS",
    "DIFFICULTY",
    "CLASSIC",
    "OBBY",
    "600M",
    "CHICKEN"
}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local CheckCode = Events:WaitForChild("CheckCode")

local function redeemCode(code)
    local args = { [1] = code }
    local success, result = pcall(function()
        return CheckCode:InvokeServer(unpack(args))
    end)
end

for i, code in ipairs(codes) do
    redeemCode(code)
    if i < #codes then
        wait(0.1)
    end
end
