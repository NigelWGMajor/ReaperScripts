--[[
 * ReaScript Name: Hide all track fx in top 10 tracks other than the requested first fx
 * Description: See title.
 * Instructions: Adjust the constant below for your track. Run.
 * Author: Nigel major
 * Author URI: 
 * Repository: 
 * Repository URI: 
 * Licence: 
 * Forum Thread: 
 * Forum Thread URI: 
 * REAPER: 5.0 RC 14b
 * Extensions: None
 * Version: 1.0.0
--]]
 
--[[
 * Changelog:
 * v1.0 (2017-06-190)
  + Initial Release
--]]

function Msg(text)
  reaper.ShowConsoleMsg(tostring(text).."\n")
end

function Main()
  
  reaper.Undo_BeginBlock()
  -- set target track here : --
  target_track_id = 1 -- zero based target
  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    for i = 0, reaper.CountTracks(0) - 1 do  --B
     -- for each track
      track = reaper.GetTrack(0, i)
      -- hide the track chain
      reaper.TrackFX_Show(track, 0, 0); 
      for j = 0, reaper.TrackFX_GetCount(track) - 1 do -- C
        if  j == 0 and i == target_track_id then
          -- show the first fx
          reaper.TrackFX_SetOpen(track, j, true)     
          Msg("show trk "..i.." fx "..j)  
        else
          -- hide the fx
          reaper.TrackFX_SetOpen(track, j, false)   
          Msg("hide trk "..i.." fx "..j)
        end  
      end
    end  
  reaper.Undo_EndBlock("Leave open only target FX and minimize the others",-1)
end

Main()
