getgenv().SecureMode = true
local rocordUI = loadstring(game:HttpGet('https://rocord.dev/cdn/apps/rocordUI/loader'))()
local Window = rocordUI:CreateWindow({
    Name = "VerifyHub",
    LoadingTitle = "VerifyHub Loading...",
    LoadingSubtitle = "UI by rocord#0001 and scripts by Alexplayrus1#0746",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "VerifyHub", -- Create a custom folder for your hub/game
       FileName = "SavedConfig"
    },
    Discord = {
       Enabled = true,
       Invite = "SjSgvxNNtE",
       RememberJoins = true 
    },
    KeySystem = false,
    KeySettings = {
       Title = "VerifyHub",
       Subtitle = "Key System",
       Note = "nil",
       FileName = "Key",
       SaveKey = false,
       GrabKeyFromSite = false, 
       Key = "Hello"
    }
 })
-- Create tabs

local safe = Window:CreateTab("Safe", 4483362458) -- Title, Image
local annoying = Window:CreateTab("Annoying", 4483362458) -- Title, Image
local chat = Window:CreateTab("Chat", 4483362458) -- Title, Image
local hatColor = Window:CreateTab("Hat Color", 4483362458) -- Title, Image
local misc = Window:CreateTab("Misc", 4483362458) -- Title, Image


-- Safe


local safePara1 = safe:CreateParagraph({Title = "Welcum", Content = "Welcome to VerifyHub"})
local safePara2 = safe:CreateParagraph({Title = "AlexVR", Content = "a fake vr script, controls can be seen inside the chat"})
local safeButton2 = safe:CreateButton({
    Name = "Execute AlexVR",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/alexvr-rocordUI.lua'))()
    end,
 })


-- Annoying


local annoyingPara1 = annoying:CreateParagraph({Title = "Penis Giver", Content = "Penis Giver will place a penis model on the players you hold Mouse1 on. It is client only meaning only you can see it. You will need to leave the game to deactivate it."})
local annoyingButton1 = annoying:CreateButton({
    Name = "Activate Penis Giver",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/penis.lua'))()
    end,
 })


-- Hat Color


local hatColorPara1 = hatColor:CreateParagraph({Title = "Information", Content = "Hat Color is client only meaning only you can see it, and other players will see it as the default roblox item."})
local hatColorInput1 = hatColor:CreateInput({
    Name = "Hat Color (Hex)",
    PlaceholderText = "#ffffff",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        for _, hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if hat:IsA("Accessory") then
                hat.Handle.Color = Color3.fromHex(Text)
            end
        end        
    end,
 })
 local Button = hatColor:CreateButton({
    Name = "Reset Color",
    Callback = function()
        for _, hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if hat:IsA("Accessory") then
                hat.Handle.Color = Color3.fromRGB(163, 162, 165)
            end
        end        
    end,
 })
