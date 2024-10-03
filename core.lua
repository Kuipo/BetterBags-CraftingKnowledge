local addonName, addon = ...

-- Get reference to BetterBags addon
local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
local categories = BetterBags:GetModule('Categories')
local L = BetterBags:GetModule('Localization')
local Knowledge = addon.Knowledge


for _, itemList in pairs({Knowledge}) do
    for _, ItemID in pairs(itemList) do
        categories:AddItemToCategory(ItemID, L:G("Crafting Knowledge"))
    end
end
