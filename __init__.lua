include("weapon_list")

function onPlayerConnected(player)
    player:notifyonplayercommand("prevweap", "+smoke")
    player:notifyonplayercommand("nextweap", "+activate")
	local spawnListener = player:onnotify("spawned_player", function() onPlayerSpawned(player) end);
end

function onPlayerSpawned(player)
    player:visionsetnakedforplayer(game:getdvar("mapname"))
    player:freezecontrols(false)
    monitorWeap(player)
end

function monitorWeap(player)
    local elem = game:newclienthudelem(player)
    elem.elemType = "font"
    elem.font = "objective"
    elem.fontscale = 1.85
    elem.x = 115
    elem.y = 30
    elem.alignx = "left"
    elem.aligny = "middle"
    elem.horzalign = "fullscreen"
    elem.vertalign = "fullscreen"
    elem.color = vector:new(1, 0, 0)
    elem.alpha = 1
    elem.glowcolor = vector:new(1,0,0)
    elem.glowalpha = 0.2
    local arrnum = 1
    local weapArray = weap_list
    local weapCount = #weapArray
    player:takeallweapons()
    player:giveweapon(weapArray[arrnum])
    game:ontimeout(function()
        player:switchtoweapon(weapArray[arrnum])
    end, 100)
    elem:settext(arrnum .. " : " .. weapArray[arrnum])

    player:onnotify("prevweap", function()
        arrnum = arrnum-1
        if arrnum < 1 then arrnum = weapCount end
        elem:settext(arrnum .. " : " .. weapArray[arrnum])
        player:takeallweapons()
        player:giveweapon(weapArray[arrnum])
        player:switchtoweapon(weapArray[arrnum])
    end)
    player:onnotify("nextweap", function()
        arrnum = arrnum+1
        if arrnum > weapCount then arrnum = 1 end
        elem:settext(arrnum .. " : " .. weapArray[arrnum])
        player:takeallweapons()
        player:giveweapon(weapArray[arrnum])
        player:switchtoweapon(weapArray[arrnum])
    end)
end

function show_message(player, msg)
    local elem = game:newclienthudelem(player)
    elem.elemType = "font"
    elem.font = "objective"
    elem.fontscale = 1
    elem.x = 0
    elem.y = -230
    elem.alignx = "center"
    elem.aligny = "middle"
    elem.horzalign = "center"
    elem.vertalign = "middle"
    elem.color = vector:new(0, 0.9, 0.1)
    elem.alpha = 1
    elem.glowcolor = vector:new(0,1,1)
    elem.glowalpha = 0.2
    elem:settext(msg)
end

game:setdvar("scr_war_timelimit", 0);
game:setdvar("scr_war_scorelimit", 0);
game:setdvar("player_sustainammo", 1);
level:onnotify("connected", onPlayerConnected);