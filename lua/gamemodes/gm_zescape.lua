local GAME = {}

GAME.ID			= "zombieescape"
GAME.Name		= "ZombieEscape"
GAME.MapPrefix	= {"ze"}
GAME.MapFileDB	= "map_zombieescape.txt"

GAME.HookEnd	= "ChangeMap"

function GAME:OnInitialize()
	-- This is to prevent the gamemode change the map automatically.
	function GAMEMODE:ChangeMap() return end
end

function GAME:GetEndTime()
	return 30
end

function GAME:OnStartVote()
	GAMEMODE:SendMapMessage( "Changing map in " ..self:GetEndTime().. " seconds." )

	timer.Simple( self:GetEndTime(), GLMVS_EndVote )
end

function GAME:GetPlayerVote( pl )
	local votes = 0

	return votes
end

GLoader.RegisterGamemode( GAME )