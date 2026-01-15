Judgement = SMODS.current_mod
JudgementPath = SMODS.current_mod.path
JudgementConfig = SMODS.current_mod.config or {}

to_big = to_big or function(x)
	return x
end

if next(SMODS.find_mod("Cryptid")) then
	Judgement.prefix = "cry"
else
	Judgement.prefix = "jud"
end

SMODS.current_mod.optional_features = function()
	return {
		post_trigger = true,
		cardareas = {
			unscored = true,
		},
	}
end


Judgement.Lib = NFS.getDirectoryItems(JudgementPath .. "items/Lib")
Judgement.Misc = NFS.getDirectoryItems(JudgementPath .. "items/Misc")
Judgement.Consumables = NFS.getDirectoryItems(JudgementPath .. "items/Consumables")
Judgement.Jokers = NFS.getDirectoryItems(JudgementPath .. "items/Jokers")


for k, file in ipairs(Judgement.Lib) do
	SMODS.load_file("items/Lib/" .. file)()
end

for k, file in ipairs(Judgement.Misc) do
	SMODS.load_file("items/Misc/" .. file)()
end

for k, file in ipairs(Judgement.Consumables) do
	SMODS.load_file("items/Consumables/" .. file)()
end

for k, file in ipairs(Judgement.Jokers) do
	SMODS.load_file("items/Jokers/" .. file)()
end
