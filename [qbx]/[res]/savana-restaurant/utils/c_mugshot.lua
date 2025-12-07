local MugshotsCache = {}
local Answers = {}
local id = 1

function GetMugShotBase64(Ped,Transparent)
  if not Ped then return "" end
  id = id + 1

  local Handle = RegisterPedheadshot(Ped)

  local timer = 2000
  while ((not Handle or not IsPedheadshotReady(Handle) or not IsPedheadshotValid(Handle)) and timer > 0) do
    Citizen.Wait(10)
    timer = timer - 10
  end

  local MugShotTxd = 'none'
  if (IsPedheadshotReady(Handle) and IsPedheadshotValid(Handle)) then
    MugshotsCache[id] = Handle
    MugShotTxd = GetPedheadshotTxdString(Handle)
  end

  return "https://nui-img/"..MugShotTxd.."/"..MugShotTxd
end

function resetMugshot()
  for k,v in pairs(MugshotsCache) do
    UnregisterPedheadshot(v)
  end
  MugshotsCache = {}
  id = 0
end