-- put this file inside lua/autorun/server

function AddDir(dir) 
	local list = file.FindDir("../"..dir.."/*")
	for _, fdir in pairs(list) do
		if fdir != ".svn" then 
			AddDir(dir.."/"..fdir)
		end
	end
 
	for k,v in pairs(file.Find(dir.."/*", true)) do
		resource.AddFile(dir.."/"..v)
	end
end
 
AddDir("materials\models\weapons\v_models\go_scar")
resource.AddFile("models\weapons\v_snip_scar20.mdl")
resource.AddFile("models\weapons\w_snip_scar20.mdl")
resource.AddFile("sound\scar20_unsil-1.wav")
resource.AddFile("gamemodes\terrortown\content\materials\VGUI\ttt\scar-20.vmt")
resource.AddFile("gamemodes\terrortown\entities\weapons\weapon_ttt_scar20\shared.lua")
