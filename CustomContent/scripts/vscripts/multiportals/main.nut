colors <- [
    [63, 0, 0],
    [127, 0, 0],
    [191, 0, 0],
    [63, 31, 0],
    [127, 63, 0],
    [191, 95, 0],
    [63, 63, 0],
    [127, 127, 0],
    [191, 191, 0],
    [31, 63, 0],
    [63, 127, 0],
    [95, 191, 0],
    [0, 63, 0],
    [0, 127, 0],
    [0, 191, 0],
    [0, 63, 63],
    [0, 127, 127],
    [0, 191, 191],
    [0, 0, 63],
    [0, 0, 127],
    [0, 0, 191],
    [31, 0, 63],
    [63, 0, 127],
    [95, 0, 191]
]

function findColorIndex(R, G, B) {
    if (abs(R - G) <= 10 && abs(G - B) <= 10 && abs(B - R) <= 10)       // Gray
        return 0

    local min_distance = 1000000.0 
    local closest_idx = 0
    
    foreach(index, color in colors){
        local r = color[0]
        local g = color[1]
        local b = color[2]
            
        local distance = sqrt((r - R) * (r - R) + (g - G) * (g - G) + (b - B) * (b - B))
        
        if (distance < min_distance) {
            min_distance = distance
            closest_idx = index
        }
    }

    return closest_idx
}

local color = split(self.GetModelName(), " ")
local p1_ghost_skin = findColorIndex(color[0].tointeger(), color[1].tointeger(), color[2].tointeger())
local p2_ghost_skin = findColorIndex(color[3].tointeger(), color[4].tointeger(), color[5].tointeger())

EntFireByHandle(EntityGroup[0], "SetMaterialVar", p1_ghost_skin.tostring(), 0.1, null, null)
EntFireByHandle(EntityGroup[1], "SetMaterialVar", p2_ghost_skin.tostring(), 0.1, null, null)

if(Entities.FindByName(self, "@MultiPortalsGhosting")) {
    return self.Destroy()
}
    

function ChangePortalPair( pairId ) {
    SendToConsole("change_portalgun_linkage_id " + pairId)
}

EntFireByHandle(self, "runscriptcode", "SendToConsole(\"r_portal_fastpath 0\")", 1, null, null)
EntFireByHandle(self, "runscriptcode", "SendToConsole(\"portal_draw_ghosting 0\")", 1, null, null)
EntFireByHandle(self, "runscriptcode", "SendToConsole(\"hud_saytext_time 0\")", 1, null, null)
EntFireByHandle(self, "runscriptcode", "SendToConsole(\"sv_cheats 1\")", 1, null, null)

printl("\n===================================\nMultiPortals successfully initialized\nAuthor: laVashik\nGitHub: https://github.com/IaVashik\n===================================\n")