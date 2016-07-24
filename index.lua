-- BIN Theme Manager for Nintendo 3DS

-- By: gnmmarechal

-- Description: Theme Manager for software like Corbenik/Skeith CFW . Luma3DS support and perhaps MenuHax might be added, but Corbenik is love.

-- Application Data
local data =
{
	versionstring = "0.1.0"
	appname = "BIN Theme Manager"
	author = "gnmmarechal"
}

-- Setting current directory to "/"
System.currentDirectory("/")

-- Modes and Paths
local modes =
{
	current = ""
	corbenik =
	{
		corbenik = "Corbenik"
		skeith = "Skeith"
	}
	luma = "Luma3DS"
	menuhax = "MenuHax"
}
local paths =
{
	corbenik =
	{
		-- Legacy Paths (/<cfwpath>/bits/top.bin , for example) won't be supported.
		corbenik =
		{
			self = "/corbenik"
		}
		skeith =
		{
			self = "/skeith"
		}
		top = "/share/top.bin"
		bottom = "/share/bottom.bin"		
		
	}
}

-- Important Functions

function corbenik_install(cfwpath, dir) -- Installer for Corbenik/Skeith backgrounds
	
end

function install(mode, dir) -- Generic installation function, calls actual installation functions
	if mode == modes.corbenik.corbenik then
		corbenik_install(paths.corbenik.corbenik.self, dir)
	elseif mode == modes.corbenik.skeith then
		corbenik_install(paths.corbenik.skeith.self, dir)
	elseif mode == modes.luma then
		luma_install(dir)
	end
end