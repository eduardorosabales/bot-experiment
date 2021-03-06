X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_phase_boots",
	"item_force_staff",
	"item_orchid",
	"item_ultimate_scepter",
	"item_sphere",
	"item_bloodthorn",
	"item_hurricane_pike",
	"item_monkey_king_bar",
	"item_ultimate_scepter_2",
	"item_mjollnir"
};			

X["builds"] = {
	{2,3,2,1,2,4,2,3,3,3,4,1,1,1,4},
	{3,2,2,1,2,4,2,1,1,1,4,3,3,3,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {2,4,5,8}, talents
);

return X