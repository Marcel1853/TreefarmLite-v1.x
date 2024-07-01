game.reload_script()

for _, force in pairs(game.forces) do 
    force.reset_recipes()
    force.reset_technologies()
end

for i, player in ipairs(game.players) do
    player.force.reset_recipes()
    player.force.reset_technologies()
end