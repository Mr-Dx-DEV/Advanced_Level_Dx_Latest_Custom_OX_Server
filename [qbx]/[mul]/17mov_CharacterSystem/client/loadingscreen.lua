local L0_1, L1_1
L0_1 = Config
L0_1 = L0_1.Showcase
if nil ~= L0_1 then
  return
end
L0_1 = Selector
L0_1 = L0_1.Enable
if L0_1 then
  L0_1 = CreateThread
  function L1_1()
    local L0_2, L1_2, L2_2, L3_2
    while true do
      L0_2 = Config
      L0_2 = L0_2.Framework
      if L0_2 then
        break
      end
      L0_2 = Functions
      L0_2 = L0_2.Debug
      L1_2 = "LOADING FRAMEWORK"
      L0_2(L1_2)
      L0_2 = Wait
      L1_2 = 10
      L0_2(L1_2)
    end
    while true do
      L0_2 = Functions
      L0_2 = L0_2.NuiLoaded
      if L0_2 then
        break
      end
      L0_2 = Functions
      L0_2 = L0_2.Debug
      L1_2 = "LOADING NUI"
      L0_2(L1_2)
      L0_2 = Wait
      L1_2 = 10
      L0_2(L1_2)
    end
    L0_2 = Functions
    L0_2 = L0_2.SendNuiMessage
    L1_2 = "SetNuiBlur"
    L2_2 = {}
    L3_2 = Config
    L3_2 = L3_2.NuiBlur
    L2_2.state = L3_2
    L0_2(L1_2, L2_2)
    while true do
      L0_2 = Functions
      L0_2 = L0_2.Debug
      L1_2 = "SESSION: "
      L2_2 = NetworkIsSessionStarted
      L2_2, L3_2 = L2_2()
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = NetworkIsSessionStarted
      L0_2 = L0_2()
      if L0_2 then
        L0_2 = GetGameTimer
        L0_2 = L0_2()
        while true do
          L1_2 = DisableSpawnManager
          if nil ~= L1_2 then
            break
          end
          L1_2 = Citizen
          L1_2 = L1_2.Wait
          L2_2 = 10
          L1_2(L2_2)
          L1_2 = GetGameTimer
          L1_2 = L1_2()
          L1_2 = L1_2 - L0_2
          L2_2 = 1000
          if L1_2 > L2_2 then
            break
          end
        end
        L1_2 = DisableSpawnManager
        if L1_2 then
          L1_2 = DisableSpawnManager
          L1_2()
        else
          L1_2 = Functions
          L1_2 = L1_2.Print
          L2_2 = "THE DisableSpawnManager FUNCTION DOESN'T EXIST. USING FALLBACK - PLEASE UPDATE UR RESOURCE PROPERLY"
          L1_2(L2_2)
          L1_2 = GetResourceState
          L2_2 = "spawnmanager"
          L1_2 = L1_2(L2_2)
          if "started" == L1_2 then
            L1_2 = exports
            L1_2 = L1_2.spawnmanager
            L2_2 = L1_2
            L1_2 = L1_2.setAutoSpawn
            L3_2 = false
            L1_2(L2_2, L3_2)
          end
        end
        L1_2 = Functions
        L1_2 = L1_2.Debug
        L2_2 = "OPENING SELECTOR"
        L1_2(L2_2)
        L1_2 = DoScreenFadeOut
        L2_2 = 10
        L1_2(L2_2)
        L1_2 = Selector
        L1_2 = L1_2.Enter
        L1_2()
        L1_2 = Functions
        L1_2 = L1_2.Debug
        L2_2 = "SELECTOR OPENED"
        L1_2(L2_2)
        L1_2 = Wait
        L2_2 = 100
        L1_2(L2_2)
        L1_2 = ShutDownLoadingScreen
        L1_2()
        L1_2 = Functions
        L1_2 = L1_2.Debug
        L2_2 = "LOADINGSCREEN SHUTDOWN"
        L1_2(L2_2)
        L1_2 = SetNuiFocus
        L2_2 = false
        L3_2 = false
        L1_2(L2_2, L3_2)
        L1_2 = Wait
        L2_2 = 50
        L1_2(L2_2)
        L1_2 = SetNuiFocus
        L2_2 = true
        L3_2 = true
        L1_2(L2_2, L3_2)
        break
      end
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
    end
  end
  L0_1(L1_1)
end
