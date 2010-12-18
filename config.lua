
-- // rActionBarStyler
-- // zork - 2010

-----------------------------
-- INIT
-----------------------------

--get the addon namespace
local addon, ns = ...

--generate a holder for the config data
local cfg = CreateFrame('Frame')

-----------------------------
-- CONFIG
-----------------------------

--notice on locking
--keep bars locked, you now have a slash command to lock/unlock your bars ingame
--use '/rabs' to see the command list

cfg.bars = {
	bar1 = {
		buttonsize	= 26,
		buttonspacing	= 5,
		barscale	= 0.82,
		pos		= {
			a1 = 'BOTTOM',
			a2 = 'BOTTOM',
			af = 'UIParent',
			x = -1,
			y = 22
		},
		testmode	= false,
	},
	bar2 = {
		buttonsize	= 26,
		buttonspacing	= 5,
		barscale	= 0.82,
		showonmouseover = false,
		pos		= {
			a1 = 'BOTTOM',
			a2 = 'BOTTOM',
			af = 'UIParent',
			x = -1,
			y = 53
		},
		testmode	= false,
	},
	bar3 = {
		buttonsize	= 26,
		buttonspacing	= 5,
		barscale	= 0.82,
		showonmouseover	= false,
		pos		= {
			a1 = 'BOTTOM',
			a2 = 'BOTTOM',
			af = 'UIParent',
			x = -1,
			y = 92
		},
		testmode	= false,
	},
	bar4 = {
		buttonsize	= 26,
		buttonspacing	= 5,
		barscale	= 0.82,
		showonmouseover = true,
		pos		= {
			a1 = 'RIGHT',
			a2 = 'RIGHT',
			af = 'UIParent',
			x = -10,
			y = 0
		},
		testmode	= false,
	},
	bar5 = {
		buttonsize	= 26,
		buttonspacing	= 5,
		barscale	= 0.82,
		showonmouseover = true,
		pos		= {
			a1 = 'RIGHT',
			a2 = 'RIGHT',
			af = 'UIParent',
			x = -46,
			y = 0
		},
		testmode	= false,
	},
	stancebar = {
		buttonsize	= 26,
		buttonspacing	= 5,
		barscale	= 0.82,
		showonmouseover = false,
		pos		= {
			a1 = 'BOTTOM',
			a2 = 'BOTTOM',
			af = 'UIParent',
			x = -1,
			y = 140
		},
		testmode	= false,
		disable		= false,
	},
	petbar = {
		buttonsize	= 26,
		buttonspacing	= 5,
		barscale	= 0.82,
		showonmouseover = false,
		pos		= {
			a1 = 'BOTTOM',
			a2 = 'BOTTOM',
			af = 'UIParent',
			x = -1,
			y = 140
		},
		testmode	= false,
		disable		= false,
	},
	micromenu = {
		barscale	= 0.82,
		showonmouseover = true,
		pos		= {
			a1 = 'TOP',
			a2 = 'TOP',
			af = 'UIParent',
			x = 0,
			y = -5
		},
		testmode	= false,
		disable		= false,
	},
	bags = {
		barscale	= 0.82,
		showonmouseover = true,
		pos		= {
			a1 = 'BOTTOMRIGHT',
			a2 = 'BOTTOMRIGHT',
			af = 'UIParent',
			x = -10,
			y = 10
		},
		testmode	= false,
		disable		= false,
	},
	totembar = {
		barscale	= 0.82,
		pos		= {
			a1 = 'BOTTOM',
			a2 = 'BOTTOM',
			af = 'UIParent',
			x = -1,
			y = 140
		},
		testmode	= false,
		disable		= false,
	},
	vehicleexit = {
		buttonsize	= 36,
		barscale	= 0.82,
		pos		= {
			a1 = 'BOTTOM',
			a2 = 'BOTTOM',
			af = 'UIParent',
			x = 210,
			y = 135
		},
		testmode	= false,
	},
}

-----------------------------
-- CONFIG END
-----------------------------

local playername, _ = UnitName('player')
local _, playerclass = UnitClass('player')

cfg.playername = playername
cfg.playerclass = playerclass


-----------------------------------
-- SPECIAL CHARACTER CONDITIONS
-----------------------------------
if playername == 'Rothar' then
	cfg.bars.stancebar.disable	= true
end

--font
cfg.font = [=[Interface\AddOns\rActionBarStyler\fonts\DroidSans.ttf]=]

--how many pixels around a bar reserved for dragging?
cfg.barinset = 10

--backdrop settings
cfg.backdrop = {
	bgFile = 'Interface\\Tooltips\\UI-Tooltip-Background',
	edgeFile = '',
	tile = false,
	tileSize = 0,
	edgeSize = 0,
}

-----------------------------
-- HANDOVER
-----------------------------

--hand the config to the namespace for usage in other lua files (remember: those lua files must be called after the cfg.lua)
ns.cfg = cfg
