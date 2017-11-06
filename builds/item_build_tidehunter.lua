X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_arcane_boots",
	"item_pipe",
	"item_blink",
	"item_combo_breaker",
	"item_ultimate_scepter",
	"item_shivas_guard"
};			

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  {1,3,2,3,3,4,3,2,2,2,4,1,1,1,4}, skills, 
	  {1,4,5,7}, talents
);

return X