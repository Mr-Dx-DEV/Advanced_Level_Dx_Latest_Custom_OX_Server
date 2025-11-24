local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if "gang" == A1_2 then
    L4_2 = Framework
    L4_2 = L4_2.Server
    L4_2 = L4_2.GetGangs
    L4_2 = L4_2()
    if L4_2 then
      goto lbl_17
    end
  end
  L4_2 = Framework
  L4_2 = L4_2.Server
  L4_2 = L4_2.GetJobs
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = {}
  end
  ::lbl_17::
  L5_2 = GetVehiclePedIsIn
  L6_2 = GetPlayerPed
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L6_2 = Framework
    L6_2 = L6_2.Server
    L6_2 = L6_2.Notify
    L7_2 = A0_2
    L8_2 = Locale
    L8_2 = L8_2.notInsideVehicleError
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = Framework
  L6_2 = L6_2.Server
  L6_2 = L6_2.GetPlate
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L7_2 = debugPrint
    L8_2 = "Framework.Server.GetPlate returned nil."
    L9_2 = "warning"
    L7_2(L8_2, L9_2)
    return
  end
  L7_2 = getVehicleData
  L8_2 = A0_2
  L9_2 = false
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if not L7_2 then
    L7_2 = Framework
    L7_2 = L7_2.Server
    L7_2 = L7_2.Notify
    L8_2 = A0_2
    L9_2 = Locale
    L9_2 = L9_2.vehicleNotOwnedByPlayerError
    L10_2 = "error"
    L7_2(L8_2, L9_2, L10_2)
    return
  end
  if A2_2 then
    L7_2 = L4_2
    if L7_2 then
      L7_2 = L7_2[A2_2]
    end
    if L7_2 then
      goto lbl_84
    end
  end
  L7_2 = Framework
  L7_2 = L7_2.Server
  L7_2 = L7_2.Notify
  L8_2 = A0_2
  if "job" == A1_2 then
    L9_2 = Locale
    L9_2 = L9_2.invalidJobError
    if L9_2 then
      goto lbl_81
    end
  end
  L9_2 = invalidGangError
  ::lbl_81::
  L10_2 = "error"
  L7_2(L8_2, L9_2, L10_2)
  do return end
  ::lbl_84::
  L7_2 = MySQL
  L7_2 = L7_2.update
  L7_2 = L7_2.await
  if "gang" == A1_2 then
    L8_2 = Framework
    L8_2 = L8_2.Queries
    L8_2 = L8_2.SetGangVehicle
    if L8_2 then
      goto lbl_97
    end
  end
  L8_2 = Framework
  L8_2 = L8_2.Queries
  L8_2 = L8_2.SetJobVehicle
  ::lbl_97::
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = Framework
  L10_2 = L10_2.VehiclesTable
  L11_2 = Framework
  L11_2 = L11_2.PlayerIdentifier
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = {}
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = L6_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L7_2(L8_2, L9_2)
  L7_2 = Framework
  L7_2 = L7_2.Server
  L7_2 = L7_2.Notify
  L8_2 = A0_2
  L9_2 = string
  L9_2 = L9_2.gsub
  if "gang" == A1_2 then
    L10_2 = Locale
    L10_2 = L10_2.vehicleAddedToGangGarageSuccess
    if L10_2 then
      goto lbl_124
    end
  end
  L10_2 = Locale
  L10_2 = L10_2.vehicleAddedToJobGarageSuccess
  ::lbl_124::
  L11_2 = "%%{value}"
  L12_2 = A2_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = "success"
  L7_2(L8_2, L9_2, L10_2)
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2
  L3_2 = GetVehiclePedIsIn
  L4_2 = GetPlayerPed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = Framework
    L4_2 = L4_2.Server
    L4_2 = L4_2.Notify
    L5_2 = A0_2
    L6_2 = Locale
    L6_2 = L6_2.notInsideVehicleError
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Framework
  L4_2 = L4_2.Server
  L4_2 = L4_2.GetPlate
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = debugPrint
    L6_2 = "Framework.Server.GetPlate returned nil."
    L7_2 = "warning"
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = getVehicleData
  L6_2 = A0_2
  L7_2 = false
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L5_2 = Framework
    L5_2 = L5_2.Server
    L5_2 = L5_2.Notify
    L6_2 = A0_2
    L7_2 = Locale
    L7_2 = L7_2.vehicleNotOwnedByPlayerError
    L8_2 = "error"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Framework
  L5_2 = L5_2.Server
  L5_2 = L5_2.GetPlayerIdentifier
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = Framework
    L6_2 = L6_2.Server
    L6_2 = L6_2.Notify
    L7_2 = A0_2
    L8_2 = Locale
    L8_2 = L8_2.playerNotOnlineError
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = MySQL
  L6_2 = L6_2.update
  L6_2 = L6_2.await
  L7_2 = Framework
  L7_2 = L7_2.Queries
  L7_2 = L7_2.SetSocietyVehicleAsPlayerOwned
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = Framework
  L9_2 = L9_2.VehiclesTable
  L10_2 = Framework
  L10_2 = L10_2.PlayerIdentifier
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = {}
  L9_2 = L5_2
  L10_2 = L4_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L6_2(L7_2, L8_2)
  L6_2 = Framework
  L6_2 = L6_2.Server
  L6_2 = L6_2.GetPlayerInfo
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = L6_2.name
  end
  L7_2 = Framework
  L7_2 = L7_2.Server
  L7_2 = L7_2.Notify
  L8_2 = A0_2
  L9_2 = string
  L9_2 = L9_2.gsub
  L10_2 = Locale
  L10_2 = L10_2.vehicleTransferSuccess
  L11_2 = "%%{value}"
  L12_2 = L6_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = "success"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Framework
  L7_2 = L7_2.Server
  L7_2 = L7_2.Notify
  L8_2 = L2_2
  L9_2 = string
  L9_2 = L9_2.gsub
  L10_2 = Locale
  L10_2 = L10_2.vehicleReceived
  L11_2 = "%%{value}"
  L12_2 = L4_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = "success"
  L7_2(L8_2, L9_2, L10_2)
end
L2_1 = lib
L2_1 = L2_1.addCommand
L3_1 = Config
L3_1 = L3_1.JobGarageSetVehicleCommand
L4_1 = {}
L5_1 = Locale
L5_1 = L5_1.cmdSetJobVehicle
L4_1.help = L5_1
L5_1 = {}
L6_1 = {}
L6_1.name = "job"
L6_1.type = "string"
L7_1 = Locale
L7_1 = L7_1.cmdArgJobName
L6_1.help = L7_1
L7_1 = {}
L7_1.name = "grade"
L7_1.type = "number"
L8_1 = Locale
L8_1 = L8_1.cmgArgMinJobRank
L7_1.help = L8_1
L7_1.optional = true
L5_1[1] = L6_1
L5_1[2] = L7_1
L4_1.params = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Framework
  L2_2 = L2_2.Server
  L2_2 = L2_2.IsAdmin
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.Server
    L2_2 = L2_2.Notify
    L3_2 = A0_2
    L4_2 = "INSUFFICIENT_PERMISSIONS"
    L5_2 = "error"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1
  L3_2 = A0_2
  L4_2 = "job"
  L5_2 = A1_2.job
  L6_2 = A1_2.grade
  if not L6_2 then
    L6_2 = 0
  end
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1, L5_1)
L2_1 = lib
L2_1 = L2_1.addCommand
L3_1 = Config
L3_1 = L3_1.GangGarageSetVehicleCommand
L4_1 = {}
L5_1 = Locale
L5_1 = L5_1.cmdSetGangVehicle
L4_1.help = L5_1
L5_1 = {}
L6_1 = {}
L6_1.name = "gang"
L6_1.type = "string"
L7_1 = Locale
L7_1 = L7_1.cmdArgGangName
L6_1.help = L7_1
L7_1 = {}
L7_1.name = "grade"
L7_1.type = "number"
L8_1 = Locale
L8_1 = L8_1.cmgArgMinGangRank
L7_1.help = L8_1
L7_1.optional = true
L5_1[1] = L6_1
L5_1[2] = L7_1
L4_1.params = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Framework
  L2_2 = L2_2.Server
  L2_2 = L2_2.IsAdmin
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.Server
    L2_2 = L2_2.Notify
    L3_2 = A0_2
    L4_2 = "INSUFFICIENT_PERMISSIONS"
    L5_2 = "error"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Config
  L2_2 = L2_2.Framework
  L2_2 = "QBCore" ~= L2_2
  L3_2 = Config
  L3_2 = L3_2.Gangs
  L3_2 = "rcore_gangs" ~= L3_2
  if L2_2 and L3_2 then
    L4_2 = Config
    L4_2 = L4_2.GangEnableCustomESXIntegration
    if not L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.Server
      L4_2 = L4_2.Notify
      L5_2 = A0_2
      L6_2 = "Gangs are only compatible with QBCore & Qbox"
      L7_2 = "error"
      L4_2(L5_2, L6_2, L7_2)
      return
    end
  end
  L4_2 = L0_1
  L5_2 = A0_2
  L6_2 = "gang"
  L7_2 = A1_2.gang
  L8_2 = A1_2.grade
  if not L8_2 then
    L8_2 = 0
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L2_1(L3_1, L4_1, L5_1)
L2_1 = lib
L2_1 = L2_1.addCommand
L3_1 = Config
L3_1 = L3_1.JobGarageRemoveVehicleCommand
L4_1 = {}
L5_1 = Locale
L5_1 = L5_1.cmdRemoveJobVehicle
L4_1.help = L5_1
L5_1 = {}
L6_1 = {}
L6_1.name = "id"
L6_1.type = "playerId"
L7_1 = Locale
L7_1 = L7_1.cmdArgPlayerId
L6_1.help = L7_1
L5_1[1] = L6_1
L4_1.params = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Framework
  L2_2 = L2_2.Server
  L2_2 = L2_2.IsAdmin
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.Server
    L2_2 = L2_2.Notify
    L3_2 = A0_2
    L4_2 = "INSUFFICIENT_PERMISSIONS"
    L5_2 = "error"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L1_1
  L3_2 = A0_2
  L4_2 = tonumber
  L5_2 = A1_2.id
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0
  end
  L2_2(L3_2, L4_2)
end
L2_1(L3_1, L4_1, L5_1)
L2_1 = lib
L2_1 = L2_1.addCommand
L3_1 = Config
L3_1 = L3_1.GangGarageRemoveVehicleCommand
L4_1 = {}
L5_1 = Locale
L5_1 = L5_1.cmdRemoveGangVehicle
L4_1.help = L5_1
L5_1 = {}
L6_1 = {}
L6_1.name = "id"
L6_1.type = "playerId"
L7_1 = Locale
L7_1 = L7_1.cmdArgPlayerId
L6_1.help = L7_1
L5_1[1] = L6_1
L4_1.params = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Framework
  L2_2 = L2_2.Server
  L2_2 = L2_2.IsAdmin
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.Server
    L2_2 = L2_2.Notify
    L3_2 = A0_2
    L4_2 = "INSUFFICIENT_PERMISSIONS"
    L5_2 = "error"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L1_1
  L3_2 = A0_2
  L4_2 = tonumber
  L5_2 = A1_2.id
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0
  end
  L2_2(L3_2, L4_2)
end
L2_1(L3_1, L4_1, L5_1)
