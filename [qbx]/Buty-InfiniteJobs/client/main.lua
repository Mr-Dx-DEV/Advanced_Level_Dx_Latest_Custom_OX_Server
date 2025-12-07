local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
job_incurse = false
L4_1 = 45.5
L5_1 = {}
L6_1 = 1
L7_1 = nil
L8_1 = {}
L9_1 = true
L10_1 = {}
L11_1 = false
L12_1 = nil
L13_1 = 0
L14_1 = {}
L15_1 = false
L16_1 = 0
L17_1 = false
L18_1 = {}
lobby = L18_1
cancel = false
L18_1 = false
L19_1 = false
L20_1 = false
L21_1 = false
L22_1 = false
L23_1 = false
L24_1 = 1
L25_1 = {}
L26_1 = {}
task_blip = L26_1
L26_1 = nil
L27_1 = Citizen
L27_1 = L27_1.CreateThread
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = Config_Sell
  L0_2 = L0_2.activate
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "Buty-InfiniteJobs:server:npcspawn"
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L3_2()
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L0_2 = {}
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = GetHashKey
    L3_3 = A1_3
    L2_3 = L2_3(L3_3)
    L3_3 = RequestModel
    L4_3 = L2_3
    L3_3(L4_3)
    while true do
      L3_3 = HasModelLoaded
      L4_3 = L2_3
      L3_3 = L3_3(L4_3)
      if L3_3 then
        break
      end
      L3_3 = Citizen
      L3_3 = L3_3.Wait
      L4_3 = 1
      L3_3(L4_3)
    end
    L3_3 = CreatePed
    L4_3 = 4
    L5_3 = L2_3
    L6_3 = A0_3.x
    L7_3 = A0_3.y
    L8_3 = A0_3.z
    L8_3 = L8_3 - 1.0
    L9_3 = A0_3.w
    L10_3 = false
    L11_3 = true
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L4_3 = SetEntityAsMissionEntity
    L5_3 = L3_3
    L6_3 = true
    L7_3 = true
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = FreezeEntityPosition
    L5_3 = L3_3
    L6_3 = true
    L4_3(L5_3, L6_3)
    L4_3 = SetBlockingOfNonTemporaryEvents
    L5_3 = L3_3
    L6_3 = true
    L4_3(L5_3, L6_3)
    L4_3 = SetEntityInvincible
    L5_3 = L3_3
    L6_3 = true
    L4_3(L5_3, L6_3)
    L4_3 = TaskStartScenarioInPlace
    L5_3 = L3_3
    L6_3 = "WORLD_HUMAN_CLIPBOARD"
    L7_3 = 0
    L8_3 = true
    L4_3(L5_3, L6_3, L7_3, L8_3)
    return L3_3
  end
  L2_2 = pairs
  L3_2 = JobCenter
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_2
    L9_2 = L7_2.coord
    L10_2 = L7_2.model
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = setblip
    L10_2 = "jobcenter"
    L11_2 = L7_2.coord
    L12_2 = _U
    L13_2 = "JOBS_BLIP_MAIN"
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L0_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L2_2 = Configuration
  L2_2 = L2_2.UseTarget
  if L2_2 then
    L2_2 = ipairs
    L3_2 = L0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = GetEntityCoords
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L9_2 = {}
      L9_2.targetType = "entity"
      L10_2 = "selectjob_"
      L11_2 = L6_2
      L10_2 = L10_2 .. L11_2
      L9_2.identifier = L10_2
      L9_2.entitys = L7_2
      L9_2.distance = 1.2
      L10_2 = {}
      L11_2 = {}
      L12_2 = "selectjob_"
      L13_2 = L6_2
      L12_2 = L12_2 .. L13_2
      L11_2.name = L12_2
      function L12_2()
        local L0_3, L1_3, L2_3
        L0_3 = openjobcenter
        L1_3 = L8_2
        L2_3 = L7_2
        L0_3(L1_3, L2_3)
      end
      L11_2.action = L12_2
      L11_2.icon = "fa-solid fa-comment"
      L12_2 = _U
      L13_2 = "JOBS_TARGET_OPEN"
      L12_2 = L12_2(L13_2)
      L11_2.label = L12_2
      L10_2[1] = L11_2
      L9_2.options = L10_2
      L10_2 = CreateTarget
      L11_2 = L9_2
      L10_2(L11_2)
    end
  else
    while true do
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = GetEntityCoords
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = 1000
      L5_2 = ipairs
      L6_2 = L0_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = L3_2 - L11_2
        L12_2 = #L12_2
        if L12_2 < 5.0 then
          L4_2 = 0
          L13_2 = 1.5
          if L12_2 < L13_2 then
            L13_2 = hintToDisplay
            L14_2 = _U
            L15_2 = "JOBS_DRAWTEXT_OPEN"
            L14_2 = L14_2(L15_2)
            L15_2 = vec3
            L16_2 = L11_2.x
            L17_2 = L11_2.y
            L18_2 = L11_2.z
            L18_2 = L18_2 + 1.0
            L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
            L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
            L13_2 = IsControlJustReleased
            L14_2 = 0
            L15_2 = 38
            L13_2 = L13_2(L14_2, L15_2)
            if L13_2 then
              L13_2 = openjobcenter
              L14_2 = L11_2
              L15_2 = L10_2
              L13_2(L14_2, L15_2)
            end
          end
        end
      end
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = L4_2
      L5_2(L6_2)
    end
  end
end
L27_1(L28_1)
L27_1 = {}
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L2_2 = {}
  filteredJobs = L2_2
  L2_2 = {}
  jobIndexMap = L2_2
  L2_2 = Configuration
  L2_2 = L2_2.Maxlevel
  if not L2_2 then
    L2_2 = 10
  end
  L3_2 = 1
  L4_2 = FreezeEntityPosition
  L5_2 = A1_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = GetEntityCoords
  L6_2 = A1_2
  L7_2 = true
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2 = L5_2(L6_2, L7_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  L7_2 = GetEntityForwardX
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 * 0.6
  L7_2 = L4_2 + L7_2
  L8_2 = GetEntityForwardY
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * 0.6
  L8_2 = L5_2 + L8_2
  L9_2 = L6_2 + 0.62
  L10_2 = vector3
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  camCoords = L10_2
  L10_2 = GetEntityRotation
  L11_2 = A1_2
  L12_2 = 2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = vector3
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 181
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L11_2 = L10_2 + L11_2
  camRotation = L11_2
  L11_2 = Configuration
  L11_2 = L11_2.ZoomandCameras
  if L11_2 then
    L11_2 = CreateCamWithParams
    L12_2 = "DEFAULT_SCRIPTED_CAMERA"
    L13_2 = camCoords
    L14_2 = camRotation
    L15_2 = GetGameplayCamFov
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2 = L15_2()
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
    cam = L11_2
    L11_2 = SetCamFov
    L12_2 = cam
    L13_2 = 45.5
    L11_2(L12_2, L13_2)
    L11_2 = SetCamActive
    L12_2 = cam
    L13_2 = true
    L11_2(L12_2, L13_2)
    L11_2 = RenderScriptCams
    L12_2 = true
    L13_2 = true
    L14_2 = 1000
    L15_2 = true
    L16_2 = false
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = Wait
    L12_2 = 1000
    L11_2(L12_2)
  end
  L11_2 = SetNuiFocus
  L12_2 = true
  L13_2 = true
  L11_2(L12_2, L13_2)
  L11_2 = lib
  L11_2 = L11_2.callback
  L11_2 = L11_2.await
  L12_2 = "Buty-InfiniteJobs:server:loadLevelInfos"
  L13_2 = false
  L11_2 = L11_2(L12_2, L13_2)
  GetDataJobs = L11_2
  L11_2 = lib
  L11_2 = L11_2.callback
  L11_2 = L11_2.await
  L12_2 = "Buty-InfiniteJobs:server:GetJobsFiles"
  L13_2 = false
  L11_2 = L11_2(L12_2, L13_2)
  job = L11_2
  L11_2 = pairs
  L12_2 = JobCenter
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = vector3
    L18_2 = L16_2.coord
    L18_2 = L18_2.x
    L19_2 = L16_2.coord
    L19_2 = L19_2.y
    L20_2 = L16_2.coord
    L20_2 = L20_2.z
    L17_2 = L17_2(L18_2, L19_2, L20_2)
    L18_2 = vector3
    L19_2 = A0_2.x
    L20_2 = A0_2.y
    L21_2 = A0_2.z
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    if L17_2 == L18_2 then
      L17_2 = L16_2.jobs
      L17_2 = #L17_2
      if 0 == L17_2 then
        L17_2 = pairs
        L18_2 = job
        L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2)
        for L21_2, L22_2 in L17_2, L18_2, L19_2, L20_2 do
          L23_2 = job
          L23_2 = L23_2[L21_2]
          L23_2 = L23_2.JobInfo
          L24_2 = tostring
          L25_2 = L21_2
          L24_2 = L24_2(L25_2)
          L25_2 = GetDataJobs
          L25_2 = L25_2[L24_2]
          if L25_2 then
            L26_2 = L25_2.experience
            if not L26_2 then
              L26_2 = 0
            end
            L23_2.xp = L26_2
            L26_2 = L23_2.ExperienceRequired
            if L26_2 then
              L26_2 = L23_2.xp
              L27_2 = L23_2.ExperienceRequired
              L26_2 = L26_2 / L27_2
              L23_2.level = L26_2
            else
              L26_2 = L23_2.xp
              L26_2 = L26_2 / 1000
              L23_2.level = L26_2
            end
          else
            L23_2.xp = 0
            L23_2.level = 0
          end
          L26_2 = math
          L26_2 = L26_2.min
          L27_2 = L23_2.level
          L28_2 = L2_2
          L26_2 = L26_2(L27_2, L28_2)
          L23_2.level = L26_2
          L22_2.filteredIndex = L3_2
          L26_2 = table
          L26_2 = L26_2.insert
          L27_2 = filteredJobs
          L28_2 = L22_2
          L26_2(L27_2, L28_2)
          L26_2 = jobIndexMap
          L26_2[L3_2] = L21_2
          L3_2 = L3_2 + 1
        end
      else
        L17_2 = pairs
        L18_2 = job
        L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2)
        for L21_2, L22_2 in L17_2, L18_2, L19_2, L20_2 do
          L23_2 = pairs
          L24_2 = L16_2.jobs
          L23_2, L24_2, L25_2, L26_2 = L23_2(L24_2)
          for L27_2, L28_2 in L23_2, L24_2, L25_2, L26_2 do
            L29_2 = job
            L29_2 = L29_2[L21_2]
            L29_2 = L29_2.JobInfo
            L29_2 = L29_2.Name
            if L29_2 == L28_2 then
              L29_2 = job
              L29_2 = L29_2[L21_2]
              L29_2 = L29_2.JobInfo
              L30_2 = tostring
              L31_2 = L21_2
              L30_2 = L30_2(L31_2)
              L31_2 = GetDataJobs
              L31_2 = L31_2[L30_2]
              if L31_2 then
                L32_2 = L31_2.experience
                if not L32_2 then
                  L32_2 = 0
                end
                L29_2.xp = L32_2
                L32_2 = L29_2.ExperienceRequired
                if L32_2 then
                  L32_2 = L29_2.xp
                  L33_2 = L29_2.ExperienceRequired
                  L32_2 = L32_2 / L33_2
                  L29_2.level = L32_2
                else
                  L32_2 = L29_2.xp
                  L32_2 = L32_2 / 1000
                  L29_2.level = L32_2
                end
              else
                L29_2.xp = 0
                L29_2.level = 0
              end
              L32_2 = math
              L32_2 = L32_2.min
              L33_2 = L29_2.level
              L34_2 = L2_2
              L32_2 = L32_2(L33_2, L34_2)
              L29_2.level = L32_2
              L22_2.filteredIndex = L3_2
              L32_2 = table
              L32_2 = L32_2.insert
              L33_2 = filteredJobs
              L34_2 = L22_2
              L32_2(L33_2, L34_2)
              L32_2 = jobIndexMap
              L32_2[L3_2] = L21_2
              L3_2 = L3_2 + 1
            end
          end
        end
      end
    end
  end
  L11_2 = {}
  L12_2 = _U
  L13_2 = "JOBS_UI_1"
  L12_2 = L12_2(L13_2)
  L11_2[1] = L12_2
  L12_2 = _U
  L13_2 = "JOBS_UI_2"
  L12_2 = L12_2(L13_2)
  L11_2[2] = L12_2
  L12_2 = _U
  L13_2 = "JOBS_UI_3"
  L12_2 = L12_2(L13_2)
  L11_2[3] = L12_2
  L12_2 = _U
  L13_2 = "JOBS_UI_4"
  L12_2 = L12_2(L13_2)
  L11_2[4] = L12_2
  L12_2 = _U
  L13_2 = "JOBS_UI_5"
  L12_2 = L12_2(L13_2)
  L11_2[5] = L12_2
  L12_2 = _U
  L13_2 = "JOBS_UI_6"
  L12_2 = L12_2(L13_2)
  L11_2[6] = L12_2
  L12_2 = _U
  L13_2 = "JOBS_UI_7"
  L12_2 = L12_2(L13_2)
  L11_2[7] = L12_2
  L12_2 = _U
  L13_2 = "JOBS_UI_8"
  L12_2 = L12_2(L13_2)
  L11_2[8] = L12_2
  L12_2 = SendNUIMessage
  L13_2 = {}
  L13_2.type = "ui"
  L13_2.status = true
  L14_2 = filteredJobs
  L13_2.jobs = L14_2
  L13_2.maxLevel = L2_2
  L14_2 = Configuration
  L14_2 = L14_2.Color_UI
  L13_2.color = L14_2
  L13_2.translate = L11_2
  L12_2(L13_2)
end
openjobcenter = L28_1
L28_1 = RegisterNUICallback
L29_1 = "selectjob"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = tonumber
  L2_2 = A0_2.job
  L1_2 = L1_2(L2_2)
  L2_2 = jobIndexMap
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    L3_2 = print
    L4_2 = "Error: El \195\173ndice seleccionado no es v\195\161lido"
    L3_2(L4_2)
    return
  end
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if A1_3 then
      L2_3 = #A1_3
      if 0 ~= L2_3 then
        goto lbl_8
      end
    end
    L2_3 = false
    do return L2_3 end
    ::lbl_8::
    L2_3 = pairs
    L3_3 = A1_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.job
      if A0_3 == L8_3 then
        L8_3 = true
        return L8_3
      end
    end
    L2_3 = false
    return L2_3
  end
  L4_2 = L3_2
  L5_2 = L2_2
  L6_2 = GetDataJobs
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "Buty-InfiniteJobs:server:AddJobBD"
    L6_2 = GetPlayerServerId
    L7_2 = PlayerId
    L7_2, L8_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = job
  L4_2 = L4_2[L2_2]
  jobs = L4_2
  L4_2 = job
  L4_2 = L4_2[L2_2]
  job_main = L4_2
  id_job = L2_2
  L4_2 = Configuration
  L4_2 = L4_2.JobForID
  if L4_2 then
    L4_2 = playerJob
    L4_2 = L4_2.name
    L5_2 = jobs
    L5_2 = L5_2.JobInfo
    L5_2 = L5_2.JobID
    L5_2 = L5_2[1]
    if L4_2 == L5_2 then
      L4_2 = Notify
      L5_2 = "info"
      L6_2 = _U
      L7_2 = "JOBS_NOTIFICATION_ALREADY_JOB"
      L6_2 = L6_2(L7_2)
      L7_2 = time
      L8_2 = "client"
      L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  else
    L4_2 = npc_creategroup
    if L4_2 then
      L4_2 = DeleteEntity
      L5_2 = npc_creategroup
      L4_2(L5_2)
    end
    L4_2 = RemoveBlip
    L5_2 = menu_group_blip
    L4_2(L5_2)
    L4_2 = true
    L18_1 = L4_2
    L4_2 = canceljob
    L4_2()
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
    L4_2 = false
    L18_1 = L4_2
    while true do
      L4_2 = cancel
      if not L4_2 then
        break
      end
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = 1
      L4_2(L5_2)
    end
    L4_2 = Notify
    L5_2 = "success"
    L6_2 = _U
    L7_2 = "JOBS_NOTIFICATION_JOB_SELECTER"
    L6_2 = L6_2(L7_2)
    L7_2 = time
    L8_2 = "client"
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = Configuration
    L4_2 = L4_2.JobForID
    if L4_2 then
      L4_2 = TriggerServerEvent
      L5_2 = "Buty-InfiniteJobs:setJob"
      L6_2 = GetPlayerServerId
      L7_2 = PlayerId
      L7_2, L8_2 = L7_2()
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = jobs
      L7_2 = L7_2.JobInfo
      L7_2 = L7_2.JobID
      L7_2 = L7_2[1]
      L8_2 = jobs
      L8_2 = L8_2.JobInfo
      L8_2 = L8_2.JobID
      L8_2 = L8_2[2]
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
    L4_2 = jobs
    L4_2 = L4_2.JobConfig
    if nil ~= L4_2 then
      L4_2 = jobs
      L4_2 = L4_2.JobConfig
      L4_2 = L4_2.type
      typejob = L4_2
      L4_2 = StartJob
      L4_2()
    end
    L4_2 = jobs
    L4_2 = L4_2.JobInfo
    L4_2 = L4_2.trigger
    if L4_2 then
      L4_2 = jobs
      L4_2 = L4_2.JobInfo
      L4_2 = L4_2.trigger
      if "" ~= L4_2 then
        L4_2 = TriggerEvent
        L5_2 = jobs
        L5_2 = L5_2.JobInfo
        L5_2 = L5_2.trigger
        L4_2(L5_2)
      end
    end
  end
end
L28_1(L29_1, L30_1)
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = playerJob
  L0_2 = L0_2.name
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "Buty-InfiniteJobs:server:GetJobsFiles"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  job = L1_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "Buty-InfiniteJobs:server:loadLevelInfos"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = job
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.JobInfo
    L8_2 = L8_2.JobID
    L8_2 = L8_2[1]
    if L0_2 == L8_2 then
      L8_2 = L7_2.JobConfig
      if L8_2 then
        L8_2 = L7_2.JobInfo
        L9_2 = 0
        L10_2 = tostring
        L11_2 = L6_2
        L10_2 = L10_2(L11_2)
        L11_2 = L1_2[L10_2]
        if L11_2 then
          L12_2 = L11_2.experience
          if not L12_2 then
            L12_2 = 0
          end
          L13_2 = L8_2.ExperienceRequired
          if L13_2 then
            L13_2 = L8_2.ExperienceRequired
            L13_2 = L12_2 / L13_2
            if L13_2 then
              goto lbl_50
            end
          end
          L13_2 = L12_2 / 1000
          ::lbl_50::
          L14_2 = Configuration
          L14_2 = L14_2.Maxlevel
          if not L14_2 then
            L14_2 = 10
          end
          L15_2 = math
          L15_2 = L15_2.min
          L16_2 = L13_2
          L17_2 = L14_2
          L15_2 = L15_2(L16_2, L17_2)
          L13_2 = L15_2
          L15_2 = L0_1
          L15_2[L6_2] = L13_2
        else
          L12_2 = L0_1
          L12_2[L6_2] = L9_2
        end
        L12_2 = job
        L12_2 = L12_2[L6_2]
        jobs = L12_2
        id_job = L6_2
        L12_2 = StartJob
        L12_2()
        break
      end
    end
  end
end
StartWithJob = L28_1
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = jobs
  L1_2 = L1_2.JobConfig
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = jobs
  L4_2 = L4_2.JobConfig
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2[L2_2]
  randomjob = L1_2
  L1_2 = string
  L1_2 = L1_2.upper
  L2_2 = string
  L2_2 = L2_2.sub
  L3_2 = jobs
  L3_2 = L3_2.JobInfo
  L3_2 = L3_2.Name
  L4_2 = 1
  L5_2 = 1
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = string
  L2_2 = L2_2.sub
  L3_2 = jobs
  L3_2 = L3_2.JobInfo
  L3_2 = L3_2.Name
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 .. L2_2
  L2_2 = setblip
  L3_2 = "menu_group"
  L4_2 = vec3
  L5_2 = randomjob
  L5_2 = L5_2.CreateGroup
  L5_2 = L5_2.x
  L6_2 = randomjob
  L6_2 = L6_2.CreateGroup
  L6_2 = L6_2.y
  L7_2 = randomjob
  L7_2 = L7_2.CreateGroup
  L7_2 = L7_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = _U
  L6_2 = "JOBS_BLIP_CREATEGROUP"
  L7_2 = L1_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = SetNewWaypoint
  L3_2 = randomjob
  L3_2 = L3_2.CreateGroup
  L3_2 = L3_2.x
  L4_2 = randomjob
  L4_2 = L4_2.CreateGroup
  L4_2 = L4_2.y
  L2_2(L3_2, L4_2)
  L2_2 = GetHashKey
  L3_2 = randomjob
  L3_2 = L3_2.CreateGroupPed_model
  L2_2 = L2_2(L3_2)
  L3_2 = RequestModel
  L4_2 = L2_2
  L3_2(L4_2)
  while true do
    L3_2 = HasModelLoaded
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 1
    L3_2(L4_2)
  end
  L3_2 = CreatePed
  L4_2 = 5
  L5_2 = L2_2
  L6_2 = randomjob
  L6_2 = L6_2.CreateGroup
  L6_2 = L6_2.x
  L7_2 = randomjob
  L7_2 = L7_2.CreateGroup
  L7_2 = L7_2.y
  L8_2 = randomjob
  L8_2 = L8_2.CreateGroup
  L8_2 = L8_2.z
  L9_2 = randomjob
  L9_2 = L9_2.CreateGroup
  L9_2 = L9_2.w
  L10_2 = false
  L11_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  npc_creategroup = L3_2
  L3_2 = SetEntityAsMissionEntity
  L4_2 = npc_creategroup
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = FreezeEntityPosition
  L4_2 = npc_creategroup
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetBlockingOfNonTemporaryEvents
  L4_2 = npc_creategroup
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityInvincible
  L4_2 = npc_creategroup
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = TaskStartScenarioInPlace
  L4_2 = npc_creategroup
  L5_2 = "WORLD_HUMAN_CLIPBOARD"
  L6_2 = 0
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Citizen
  L3_2 = L3_2.CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = Configuration
    L0_3 = L0_3.UseTarget
    if L0_3 then
      L0_3 = GetEntityCoords
      L1_3 = npc
      L0_3 = L0_3(L1_3)
      L1_3 = {}
      L1_3.targetType = "entity"
      L1_3.identifier = "creategroup"
      L2_3 = randomjob
      L2_3 = L2_3.CreateGroup
      L1_3.coords = L2_3
      L2_3 = npc_creategroup
      L1_3.entitys = L2_3
      L1_3.distance = 1.5
      L2_3 = {}
      L3_3 = {}
      L3_3.name = "creategroup"
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        opencreategroup = true
        L0_4 = openui
        L1_4 = randomjob
        L1_4 = L1_4.Route
        L2_4 = math
        L2_4 = L2_4.random
        L3_4 = 1
        L4_4 = randomjob
        L4_4 = L4_4.Route
        L4_4 = #L4_4
        L2_4 = L2_4(L3_4, L4_4)
        L1_4 = L1_4[L2_4]
        L2_4 = randomjob
        L0_4(L1_4, L2_4)
      end
      L3_3.action = L4_3
      L3_3.icon = "fa-solid fa-comment"
      L4_3 = _U
      L5_3 = "JOBS_TARGET_CREATE_GROUP"
      L4_3 = L4_3(L5_3)
      L3_3.label = L4_3
      L2_3[1] = L3_3
      L1_3.options = L2_3
      L2_3 = CreateTarget
      L3_3 = L1_3
      L2_3(L3_3)
    else
      while "distMultiplayer" do
        L0_3 = L18_1
        if L0_3 then
          return
        else
          L0_3 = GetEntityCoords
          L1_3 = L0_2
          L0_3 = L0_3(L1_3)
          L1_3 = vec3
          L2_3 = randomjob
          L2_3 = L2_3.CreateGroup
          L2_3 = L2_3.x
          L3_3 = randomjob
          L3_3 = L3_3.CreateGroup
          L3_3 = L3_3.y
          L4_3 = randomjob
          L4_3 = L4_3.CreateGroup
          L4_3 = L4_3.z
          L1_3 = L1_3(L2_3, L3_3, L4_3)
          L0_3 = L0_3 - L1_3
          L0_3 = #L0_3
          distMultiplayer = L0_3
          L0_3 = distMultiplayer
          L1_3 = 1.7
          if L0_3 < L1_3 then
            L0_3 = hintToDisplay
            L1_3 = _U
            L2_3 = "JOBS_DRAWTEXT_CREATE_GROUP"
            L1_3 = L1_3(L2_3)
            L2_3 = vec3
            L3_3 = randomjob
            L3_3 = L3_3.CreateGroup
            L3_3 = L3_3.x
            L4_3 = randomjob
            L4_3 = L4_3.CreateGroup
            L4_3 = L4_3.y
            L5_3 = randomjob
            L5_3 = L5_3.CreateGroup
            L5_3 = L5_3.z
            L5_3 = L5_3 + 2
            L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3, L5_3)
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
            L0_3 = IsControlJustReleased
            L1_3 = 0
            L2_3 = 38
            L0_3 = L0_3(L1_3, L2_3)
            if L0_3 then
              L0_3 = opencreategroup
              if not L0_3 then
                opencreategroup = true
                L0_3 = openui
                L1_3 = randomjob
                L1_3 = L1_3.Route
                L2_3 = math
                L2_3 = L2_3.random
                L3_3 = 1
                L4_3 = randomjob
                L4_3 = L4_3.Route
                L4_3 = #L4_3
                L2_3 = L2_3(L3_3, L4_3)
                L1_3 = L1_3[L2_3]
                L2_3 = randomjob
                L0_3(L1_3, L2_3)
              end
            end
          end
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = distMultiplayer
        L2_3 = 1.7
        if L1_3 < L2_3 then
          L1_3 = 1
          if L1_3 then
            goto lbl_114
          end
        end
        L1_3 = 500
        ::lbl_114::
        L0_3(L1_3)
      end
    end
  end
  L3_2(L4_2)
end
StartJob = L28_1
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = job_incurse
  if L2_2 then
    L2_2 = Notify
    L3_2 = "error"
    L4_2 = _U
    L5_2 = "JOBS_NOTIFICATION_JOB_IN_PROGRESS"
    L4_2 = L4_2(L5_2)
    L5_2 = time
    L6_2 = "client"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    opencreategroup = false
    return
  end
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "Buty-InfiniteJobs:server:CheckLimit"
  L4_2 = false
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2 = L6_2()
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 then
    L3_2 = Notify
    L4_2 = "error"
    L5_2 = _U
    L6_2 = "JOBS_NOTIFICATION_LIMIT"
    L5_2 = L5_2(L6_2)
    L6_2 = time
    L7_2 = "client"
    L3_2(L4_2, L5_2, L6_2, L7_2)
    opencreategroup = false
    return
  end
  ui_group_open = true
  L3_2 = Wait
  L3_2()
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.type = "group_menu"
  L4_2.status = true
  L5_2 = jobs
  L5_2 = L5_2.JobInfo
  L5_2 = L5_2.Name
  L4_2.jobname = L5_2
  L5_2 = Configuration
  L5_2 = L5_2.Color_UI
  L4_2.color = L5_2
  L5_2 = {}
  L6_2 = _U
  L7_2 = "JOBS_UI_19"
  L6_2 = L6_2(L7_2)
  L5_2[1] = L6_2
  L6_2 = _U
  L7_2 = "JOBS_UI_20"
  L6_2 = L6_2(L7_2)
  L5_2[2] = L6_2
  L4_2.translate = L5_2
  L3_2(L4_2)
  L3_2 = TriggerServerEvent
  L4_2 = "Buty-InfiniteJobs:server:createGroup"
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L6_2.Route = A0_2
  L7_2 = id_job
  L6_2.ID = L7_2
  L6_2.jobconfigs = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
openui = L28_1
L28_1 = RegisterNUICallback
L29_1 = "exit"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = EndCam
  L1_2()
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "ui"
  L2_2.status = false
  L1_2(L2_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNUICallback
L29_1 = "close_ui_start"
function L30_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L3_1 = L0_2
  L0_2 = freeSlot
  L1_2 = 1
  L0_2(L1_2)
  L0_2 = freeSlot
  L1_2 = 2
  L0_2(L1_2)
  L0_2 = freeSlot
  L1_2 = 3
  L0_2(L1_2)
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  ui_group_open = false
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "group_menu"
  L1_2.status = false
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  opencreategroup = false
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNUICallback
L29_1 = "check_pending_invites"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = 2
  L5_2 = 3
  L6_2 = 4
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_1
    L9_2 = L9_2[L8_2]
    if true == L9_2 then
      L9_2 = A1_2
      L10_2 = true
      L9_2(L10_2)
      L9_2 = Notify
      L10_2 = "error"
      L11_2 = _U
      L12_2 = "JOBS_NOTIFICATION_PENDING_INVITE"
      L11_2 = L11_2(L12_2)
      L12_2 = time
      L13_2 = "client"
      L9_2(L10_2, L11_2, L12_2, L13_2)
      return
    end
  end
  L3_2 = next
  L4_2 = L3_1
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    L3_2 = A0_2.action
    if "start" == L3_2 then
      L3_2 = A1_2
      L4_2 = true
      L3_2(L4_2)
      L3_2 = Notify
      L4_2 = "error"
      L5_2 = _U
      L6_2 = "JOBS_NOTIFICATION_NO_INVITE"
      L5_2 = L5_2(L6_2)
      L6_2 = time
      L7_2 = "client"
      L3_2(L4_2, L5_2, L6_2, L7_2)
      return
    end
  end
  L3_2 = A1_2
  L4_2 = false
  L3_2(L4_2)
end
L28_1(L29_1, L30_1)
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = ClearFocus
  L0_2()
  L0_2 = RenderScriptCams
  L1_2 = false
  L2_2 = true
  L3_2 = 1000
  L4_2 = true
  L5_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = DestroyCam
  L1_2 = cam
  L2_2 = false
  L0_2(L1_2, L2_2)
  cam = nil
end
EndCam = L28_1
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = FindFirstPed
  L2_2, L3_2 = L2_2()
  L4_2 = L3_2
  if nil ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 and L4_2 ~= L1_2 then
      L5_2 = IsPedAPlayer
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = L0_2
        L7_2 = GetPlayerServerId
        L8_2 = NetworkGetPlayerIndexFromPed
        L9_2 = L4_2
        L8_2, L9_2, L10_2 = L8_2(L9_2)
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      end
    end
  end
  L5_2 = nil
  repeat
    L3_2 = -1
    L6_2 = FindNextPed
    L7_2 = L2_2
    L6_2, L7_2 = L6_2(L7_2)
    L3_2 = L7_2
    L5_2 = L6_2
    L4_2 = L3_2
    if L5_2 and nil ~= L4_2 then
      L6_2 = DoesEntityExist
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if L6_2 and L4_2 ~= L1_2 then
        L6_2 = IsPedAPlayer
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = table
          L6_2 = L6_2.insert
          L7_2 = L0_2
          L8_2 = GetPlayerServerId
          L9_2 = NetworkGetPlayerIndexFromPed
          L10_2 = L4_2
          L9_2, L10_2 = L9_2(L10_2)
          L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
  until not L5_2
  L6_2 = EndFindPed
  L7_2 = L2_2
  L6_2(L7_2)
  return L0_2
end
GetAllPlayers = L28_1
function L28_1(A0_2)
  local L1_2
  L1_2 = L1_1
  L1_2[A0_2] = true
end
occupySlot = L28_1
function L28_1(A0_2)
  local L1_2
  L1_2 = L1_1
  L1_2[A0_2] = nil
end
freeSlot = L28_1
function L28_1(A0_2)
  local L1_2
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  L1_2 = true == L1_2
  return L1_2
end
isSlotOccupied = L28_1
L28_1 = RegisterNUICallback
L29_1 = "send_invite"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = nil
  L2_2 = Configuration
  L2_2 = L2_2.UseCitizenID
  if L2_2 then
    L2_2 = tostring
    L3_2 = A0_2.inputValue
    L2_2 = L2_2(L3_2)
    L3_2 = lib
    L3_2 = L3_2.callback
    L3_2 = L3_2.await
    L4_2 = "Buty-InfiniteJobs:server:GetSourceFromCitizenID"
    L5_2 = false
    L6_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2 = L3_2
  else
    L2_2 = tonumber
    L3_2 = A0_2.inputValue
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = GetAllPlayers
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = nil
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L6_2 = isSlotOccupied
  L7_2 = tonumber
  L8_2 = A0_2.slot
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  if L6_2 then
    L6_2 = Notify
    L7_2 = "error"
    L8_2 = _U
    L9_2 = "JOBS_NOTIFICATION_SLOT_OCCUPIED"
    L8_2 = L8_2(L9_2)
    L9_2 = time
    L10_2 = "client"
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = L2_2[1]
  if nil == L6_2 then
    L6_2 = Notify
    L7_2 = "error"
    L8_2 = _U
    L9_2 = "JOBS_NOTIFICATION_NO_NEARBY"
    L8_2 = L8_2(L9_2)
    L9_2 = time
    L10_2 = "client"
    L6_2(L7_2, L8_2, L9_2, L10_2)
    return
  end
  L6_2 = lib
  L6_2 = L6_2.callback
  L6_2 = L6_2.await
  L7_2 = "Buty-InfiniteJobs:server:CheckLimit"
  L8_2 = false
  L9_2 = L1_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L7_2 = Notify
    L8_2 = "error"
    L9_2 = _U
    L10_2 = "JOBS_NOTIFICATION_LIMIT2"
    L9_2 = L9_2(L10_2)
    L10_2 = time
    L11_2 = "client"
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return
  end
  L7_2 = false
  L8_2 = ipairs
  L9_2 = L2_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    if L13_2 == L1_2 then
      L7_2 = true
      L14_2 = Configuration
      L14_2 = L14_2.RequireJobFromAllGroup
      if L14_2 then
        L14_2 = Configuration
        L14_2 = L14_2.JobForID
        if L14_2 then
          L14_2 = GetJob
          L15_2 = L1_2
          L14_2 = L14_2(L15_2)
          L15_2 = jobs
          L15_2 = L15_2.JobInfo
          L15_2 = L15_2.JobID
          L15_2 = L15_2[1]
          if L14_2 ~= L15_2 then
            L14_2 = Notify
            L15_2 = "error"
            L16_2 = _U
            L17_2 = "JOBS_NOTIFICATION_NO_JOB_REQUIRED"
            L16_2 = L16_2(L17_2)
            L17_2 = time
            L18_2 = "client"
            L14_2(L15_2, L16_2, L17_2, L18_2)
            return
          end
        end
      end
      if L13_2 ~= L5_2 then
        L14_2 = false
        L15_2 = ipairs
        L16_2 = L3_1
        L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
        for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
          if L20_2 == L1_2 then
            L14_2 = true
            break
          end
        end
        if L14_2 then
          L15_2 = Notify
          L16_2 = "error"
          L17_2 = _U
          L18_2 = "JOBS_NOTIFICATION_PLAYER_IN_GROUP"
          L17_2 = L17_2(L18_2)
          L18_2 = time
          L19_2 = "client"
          L15_2(L16_2, L17_2, L18_2, L19_2)
          break
        end
        L15_2 = GetPlayerPed
        L16_2 = GetPlayerFromServerId
        L17_2 = L1_2
        L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L16_2(L17_2)
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        L16_2 = GetEntityCoords
        L17_2 = L15_2
        L16_2 = L16_2(L17_2)
        L17_2 = L4_2 - L16_2
        L17_2 = #L17_2
        if L17_2 < 20.0 then
          L18_2 = occupySlot
          L19_2 = tonumber
          L20_2 = A0_2.slot
          L19_2, L20_2, L21_2, L22_2, L23_2 = L19_2(L20_2)
          L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
          L18_2 = tonumber
          L19_2 = A0_2.slot
          L18_2 = L18_2(L19_2)
          L19_2 = L2_1
          L19_2[L18_2] = true
          L18_2 = Notify
          L19_2 = "success"
          L20_2 = _U
          L21_2 = "JOBS_NOTIFICATION_INVITED_SEND"
          L20_2 = L20_2(L21_2)
          L21_2 = time
          L22_2 = "client"
          L18_2(L19_2, L20_2, L21_2, L22_2)
          L18_2 = TriggerServerEvent
          L19_2 = "Buty-InfiniteJobs:server:invitePlayer"
          L20_2 = L1_2
          L21_2 = L5_2
          L22_2 = tonumber
          L23_2 = A0_2.slot
          L22_2 = L22_2(L23_2)
          L23_2 = jobs
          L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
          L18_2 = SetTimeout
          L19_2 = 10000
          function L20_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
            L0_3 = tonumber
            L1_3 = A0_2.slot
            L0_3 = L0_3(L1_3)
            L1_3 = L2_1
            L0_3 = L1_3[L0_3]
            if L0_3 then
              L0_3 = tonumber
              L1_3 = A0_2.slot
              L0_3 = L0_3(L1_3)
              L1_3 = L2_1
              L1_3[L0_3] = false
              L0_3 = Notify
              L1_3 = "error"
              L2_3 = _U
              L3_3 = "JOBS_NOTIFICATION_INVITED_SLOT"
              L2_3 = L2_3(L3_3)
              L3_3 = tonumber
              L4_3 = A0_2.slot
              L3_3 = L3_3(L4_3)
              L4_3 = _U
              L5_3 = "JOBS_NOTIFICATION_EXPIRED"
              L4_3 = L4_3(L5_3)
              L2_3 = L2_3 .. L3_3 .. L4_3
              L3_3 = time
              L4_3 = "client"
              L0_3(L1_3, L2_3, L3_3, L4_3)
              L0_3 = freeSlot
              L1_3 = A0_2.slot
              L0_3(L1_3)
              L0_3 = TriggerServerEvent
              L1_3 = "Buty-InfiniteJobs:server:removeInvitation"
              L2_3 = L1_2
              L0_3(L1_3, L2_3)
            end
          end
          L18_2(L19_2, L20_2)
          break
        end
        L18_2 = Notify
        L19_2 = "error"
        L20_2 = _U
        L21_2 = "JOBS_NOTIFICATION_PLAYER_FAR"
        L20_2 = L20_2(L21_2)
        L21_2 = time
        L22_2 = "client"
        L18_2(L19_2, L20_2, L21_2, L22_2)
      end
      break
    end
  end
  if not L7_2 then
    L8_2 = Notify
    L9_2 = "error"
    L10_2 = _U
    L11_2 = "JOBS_NOTIFICATION_NO_ID"
    L10_2 = L10_2(L11_2)
    L11_2 = time
    L12_2 = "client"
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:invetePlayer"
function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  owner = A1_2
  L4_2 = job_incurse
  if L4_2 then
    return
  end
  jobs = A3_2
  L4_2 = SetNuiFocus
  L5_2 = true
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = ui_group_open
  if L4_2 then
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.type = "group_menu"
    L5_2.status = false
    L4_2(L5_2)
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.type = "exit_multimenu"
    L4_2(L5_2)
    opencreategroup = false
  end
  L4_2 = ui_open
  if L4_2 then
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.type = "sell"
    L5_2.status = false
    L4_2(L5_2)
  end
  L4_2 = Wait
  L5_2 = 400
  L4_2(L5_2)
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.type = "invite"
  L5_2.status = true
  L5_2.ownerLobby = A0_2
  L5_2.slot = A2_2
  L6_2 = Configuration
  L6_2 = L6_2.Color_UI
  L5_2.color = L6_2
  L4_2(L5_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNUICallback
L29_1 = "invite"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "invite"
  L2_2.status = false
  L1_2(L2_2)
  opencreategroup = true
  L1_2 = A0_2.data
  if "accept" == L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "Buty-InfiniteJobs:server:acceptInvite"
    L3_2 = owner
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = tonumber
    L6_2 = A0_2.slot_use
    L5_2, L6_2 = L5_2(L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = TriggerServerEvent
    L2_2 = "Buty-InfiniteJobs:server:declineInvite"
    L3_2 = owner
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2 = L5_2()
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = tonumber
    L6_2 = A0_2.slot_use
    L5_2, L6_2 = L5_2(L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:acceptInvite"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Notify
  L3_2 = "success"
  L4_2 = _U
  L5_2 = "JOBS_NOTIFICATION_PLAYER_ID"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2
  L6_2 = _U
  L7_2 = "JOBS_NOTIFICATION_ADD_GROUP"
  L6_2 = L6_2(L7_2)
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = time
  L6_2 = "client"
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:declineInvite"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Notify
  L3_2 = "success"
  L4_2 = _U
  L5_2 = "JOBS_NOTIFICATION_PLAYER_ID"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2
  L6_2 = _U
  L7_2 = "JOBS_NOTIFICATION_REJECT_GROUP"
  L6_2 = L6_2(L7_2)
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = time
  L6_2 = "client"
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:declineInviteSlot"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L3_2[L2_2] = false
  L2_2 = freeSlot
  L3_2 = A1_2
  L2_2(L3_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:removeInvitation"
function L30_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "invite"
  L1_2.status = false
  L0_2(L1_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:update-ui"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L3_1
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L3_2[L2_2] = false
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.type = "updateui"
  L3_2.status = true
  L3_2.addPlayer = A0_2
  L3_2.slot = A1_2
  L4_2 = Configuration
  L4_2 = L4_2.Color_UI
  L3_2.color = L4_2
  L2_2(L3_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNUICallback
L29_1 = "startjob"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  opencreategroup = false
  L0_2 = TriggerServerEvent
  L1_2 = "Buty-InfiniteJobs:server:startjob"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = jobs
  L3_2 = L3_2.JobConfig
  L4_2 = jobs
  L4_2 = L4_2.JobInfo
  L4_2 = L4_2.Name
  L0_2(L1_2, L2_2, L3_2, L4_2)
  while true do
    L0_2 = job_incurse
    if false ~= L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1
    L0_2(L1_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "Buty-InfiniteJobs:server:CreateRoute"
  L2_2 = lobby
  L2_2 = L2_2.owner
  L3_2 = lobby
  L0_2(L1_2, L2_2, L3_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:startjob"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  typejob = A1_2
  lobby = A0_2
  L2_2 = pairs
  L3_2 = lobby
  L3_2 = L3_2.users
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = TriggerServerEvent
    L8_2 = "Buty-InfiniteJobs:server:update"
    L9_2 = L6_2
    L10_2 = "none"
    L11_2 = true
    L12_2 = lobby
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  job_incurse = true
  injob = true
  L2_2 = 0
  L13_1 = L2_2
  L2_2 = Notify
  L3_2 = "success"
  L4_2 = _U
  L5_2 = "JOBS_NOTIFICATION_START_JOB"
  L4_2 = L4_2(L5_2)
  L5_2 = time
  L6_2 = "client"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = interactive
  L2_2()
end
L28_1(L29_1, L30_1)
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L0_2 = string
  L0_2 = L0_2.upper
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = jobs
  L2_2 = L2_2.JobInfo
  L2_2 = L2_2.Name
  L3_2 = 1
  L4_2 = 1
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L1_2(L2_2, L3_2, L4_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = jobs
  L2_2 = L2_2.JobInfo
  L2_2 = L2_2.Name
  L3_2 = 2
  L1_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2 .. L1_2
  L1_2 = Configuration
  L1_2 = L1_2.UseClothes
  if L1_2 then
    wait_clothes = false
    L1_2 = vec3
    L2_2 = lobby
    L2_2 = L2_2.jobconfig
    L2_2 = L2_2.Workclothes
    L2_2 = L2_2.x
    L3_2 = lobby
    L3_2 = L3_2.jobconfig
    L3_2 = L3_2.Workclothes
    L3_2 = L3_2.y
    L4_2 = lobby
    L4_2 = L4_2.jobconfig
    L4_2 = L4_2.Workclothes
    L4_2 = L4_2.z
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    WorkclothesCoord = L1_2
    L1_2 = CreateObject
    L2_2 = GetHashKey
    L3_2 = "prop_portaloo_01a"
    L2_2 = L2_2(L3_2)
    L3_2 = WorkclothesCoord
    L4_2 = false
    L5_2 = true
    L6_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    WorkclothesPROP = L1_2
  end
  L1_2 = vec3
  L2_2 = lobby
  L2_2 = L2_2.jobconfig
  L2_2 = L2_2.Vehicle
  L2_2 = L2_2.coord
  L2_2 = L2_2.x
  L3_2 = lobby
  L3_2 = L3_2.jobconfig
  L3_2 = L3_2.Vehicle
  L3_2 = L3_2.coord
  L3_2 = L3_2.y
  L4_2 = lobby
  L4_2 = L4_2.jobconfig
  L4_2 = L4_2.Vehicle
  L4_2 = L4_2.coord
  L4_2 = L4_2.z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  VehicleCoord = L1_2
  L1_2 = typejob
  if 1 ~= L1_2 then
    L1_2 = vec3
    L2_2 = lobby
    L2_2 = L2_2.jobconfig
    L2_2 = L2_2.ProcessCoord
    L2_2 = L2_2.x
    L3_2 = lobby
    L3_2 = L3_2.jobconfig
    L3_2 = L3_2.ProcessCoord
    L3_2 = L3_2.y
    L4_2 = lobby
    L4_2 = L4_2.jobconfig
    L4_2 = L4_2.ProcessCoord
    L4_2 = L4_2.z
    L4_2 = L4_2 - 1.0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    ProcessCoord = L1_2
    L1_2 = CreateObject
    L2_2 = GetHashKey
    L3_2 = "fury-conveyor_prop"
    L2_2 = L2_2(L3_2)
    L3_2 = ProcessCoord
    L4_2 = false
    L5_2 = true
    L6_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    ProcessPROP = L1_2
    L1_2 = SetEntityHeading
    L2_2 = ProcessPROP
    L3_2 = lobby
    L3_2 = L3_2.jobconfig
    L3_2 = L3_2.ProcessCoord
    L3_2 = L3_2.w
    L1_2(L2_2, L3_2)
    L1_2 = FreezeEntityPosition
    L2_2 = ProcessPROP
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = CreateObject
    L2_2 = GetHashKey
    L3_2 = "fury-belt_2"
    L2_2 = L2_2(L3_2)
    L3_2 = ProcessCoord
    L4_2 = false
    L5_2 = true
    L6_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    ProcessPROP2 = L1_2
    L1_2 = FreezeEntityPosition
    L2_2 = ProcessPROP
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = AttachEntityToEntity
    L2_2 = ProcessPROP2
    L3_2 = ProcessPROP
    L4_2 = 0
    L5_2 = 0.0
    L6_2 = 3.3
    L7_2 = 0.9
    L8_2 = 0.0
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = 1
    L12_2 = 1
    L13_2 = 0
    L14_2 = 1
    L15_2 = 0
    L16_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
    L1_2 = DetachEntity
    L2_2 = ProcessPROP2
    L1_2(L2_2)
  end
  L1_2 = Configuration
  L1_2 = L1_2.UseClothes
  if L1_2 then
    L1_2 = SetEntityHeading
    L2_2 = WorkclothesPROP
    L3_2 = lobby
    L3_2 = L3_2.jobconfig
    L3_2 = L3_2.Workclothes
    L3_2 = L3_2.w
    L1_2(L2_2, L3_2)
    L1_2 = FreezeEntityPosition
    L2_2 = WorkclothesPROP
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = setblip
    L2_2 = "workclothes"
    L3_2 = WorkclothesCoord
    L4_2 = _U
    L5_2 = "JOBS_BLIP_CLOTHES"
    L6_2 = L0_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L4_2(L5_2, L6_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  end
  L1_2 = CreateObject
  L2_2 = GetHashKey
  L3_2 = "prop_park_ticket_01"
  L2_2 = L2_2(L3_2)
  L3_2 = VehicleCoord
  L4_2 = false
  L5_2 = true
  L6_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  VehiclePROP = L1_2
  L1_2 = SetEntityHeading
  L2_2 = VehiclePROP
  L3_2 = lobby
  L3_2 = L3_2.jobconfig
  L3_2 = L3_2.Vehicle
  L3_2 = L3_2.coord
  L3_2 = L3_2.w
  L1_2(L2_2, L3_2)
  L1_2 = FreezeEntityPosition
  L2_2 = VehiclePROP
  L3_2 = true
  L1_2(L2_2, L3_2)
  getvehicle = false
  L1_2 = setblip
  L2_2 = "VehicleBlip"
  L3_2 = VehicleCoord
  L4_2 = _U
  L5_2 = "JOBS_BLIP_VEHICLE"
  L6_2 = L0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L4_2(L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L1_2 = lobby
  L1_2 = L1_2.jobconfig
  L1_2 = L1_2.Finish
  L2_2 = RequestModel
  L3_2 = GetHashKey
  L4_2 = L1_2.model
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = GetHashKey
    L4_2 = L1_2.model
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 1
    L2_2(L3_2)
  end
  L2_2 = CreatePed
  L3_2 = 4
  L4_2 = GetHashKey
  L5_2 = L1_2.model
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2.coord
  L5_2 = L5_2.x
  L6_2 = L1_2.coord
  L6_2 = L6_2.y
  L7_2 = L1_2.coord
  L7_2 = L7_2.z
  L8_2 = L1_2.coord
  L8_2 = L8_2.w
  L9_2 = false
  L10_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  npcpay = L2_2
  L2_2 = SetEntityAsMissionEntity
  L3_2 = npcpay
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = FreezeEntityPosition
  L3_2 = npcpay
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetBlockingOfNonTemporaryEvents
  L3_2 = npcpay
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = npcpay
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = TaskStartScenarioInPlace
  L3_2 = npcpay
  L4_2 = "WORLD_HUMAN_CLIPBOARD"
  L5_2 = 0
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  changeclothes = false
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = Configuration
  L3_2 = L3_2.UseTarget
  if L3_2 then
    L3_2 = {}
    L3_2.targetType = "entity"
    L3_2.identifier = "vehicle"
    L4_2 = VehicleCoord
    L3_2.coords = L4_2
    L4_2 = VehiclePROP
    L3_2.entitys = L4_2
    L3_2.distance = 1.2
    L4_2 = {}
    L5_2 = {}
    L5_2.name = "vehicle"
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = wait_vehicle
      if not L0_3 then
        L0_3 = getvehicle
        if not L0_3 then
          L0_3 = TriggerServerEvent
          L1_3 = "Buty-InfiniteJobs:server:tryGetVehicle"
          L2_3 = lobby
          L0_3(L1_3, L2_3)
        end
      end
    end
    L5_2.action = L6_2
    L5_2.icon = "fa-solid fa-comment"
    L6_2 = _U
    L7_2 = "JOBS_TARGET_GETVEHICLE"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L4_2[1] = L5_2
    L3_2.options = L4_2
    L4_2 = CreateTarget
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = Configuration
    L4_2 = L4_2.UseClothes
    if L4_2 then
      L4_2 = {}
      L4_2.targetType = "entity"
      L4_2.identifier = "workclothes"
      L5_2 = WorkclothesPROP
      L4_2.entitys = L5_2
      L5_2 = WorkclothesCoord
      L4_2.coords = L5_2
      L4_2.distance = 1.2
      L5_2 = {}
      L6_2 = {}
      L6_2.name = "workclothes"
      L6_2.event = "Buty-InfiniteJobs:client:workclothes"
      L6_2.icon = "fa-solid fa-comment"
      L7_2 = _U
      L8_2 = "JOBS_TARGET_CLOTHES"
      L7_2 = L7_2(L8_2)
      L6_2.label = L7_2
      L5_2[1] = L6_2
      L4_2.options = L5_2
      L5_2 = CreateTarget
      L6_2 = L4_2
      L5_2(L6_2)
    end
    L4_2 = typejob
    if 1 ~= L4_2 then
      L4_2 = {}
      L4_2.targetType = "entity"
      L4_2.identifier = "process"
      L5_2 = ProcessPROP
      L4_2.entitys = L5_2
      L4_2.distance = 1.2
      L5_2 = {}
      L6_2 = {}
      L6_2.name = "process"
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
        L0_3 = wait_process
        if not L0_3 then
          L0_3 = L15_1
          if L0_3 then
            wait_process = true
            L0_3 = ClearPedTasks
            L1_3 = L2_2
            L0_3(L1_3)
            L0_3 = pairs
            L1_3 = lobby
            L1_3 = L1_3.users
            L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
            for L4_3 in L0_3, L1_3, L2_3, L3_3 do
              L5_3 = TriggerServerEvent
              L6_3 = "Buty-InfiniteJobs:server:update"
              L7_3 = L4_3
              L8_3 = "wait_process"
              L9_3 = true
              L10_3 = lobby
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
            end
            L0_3 = taketool
            if not L0_3 then
              L0_3 = true
              L9_1 = L0_3
            end
            L0_3 = TriggerEvent
            L1_3 = "Buty-InfiniteJobs:client:Process"
            L0_3(L1_3)
          end
        end
      end
      L6_2.action = L7_2
      L6_2.icon = "fa-solid fa-comment"
      L6_2.label = "PROCESS"
      L5_2[1] = L6_2
      L4_2.options = L5_2
      L5_2 = CreateTarget
      L6_2 = L4_2
      L5_2(L6_2)
    end
    while true do
      L4_2 = cancel
      if L4_2 then
        return
      else
        L4_2 = GetEntityCoords
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = vector3
        L6_2 = 0.0
        L7_2 = -1.7
        L8_2 = 1.5
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L6_2 = GetOffsetFromEntityInWorldCoords
        L7_2 = ProcessPROP
        L8_2 = L5_2.x
        L9_2 = L5_2.y
        L10_2 = L5_2.z
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        coordProcess = L6_2
        L6_2 = vector3
        L7_2 = VehicleCoord
        L7_2 = L7_2.x
        L8_2 = VehicleCoord
        L8_2 = L8_2.y
        L9_2 = VehicleCoord
        L9_2 = L9_2.z
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L6_2 = L4_2 - L6_2
        L6_2 = #L6_2
        L7_2 = nil
        L8_2 = typejob
        if 1 ~= L8_2 then
          L8_2 = vector3
          L9_2 = coordProcess
          L9_2 = L9_2.x
          L10_2 = coordProcess
          L10_2 = L10_2.y
          L11_2 = coordProcess
          L11_2 = L11_2.z
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          L8_2 = L4_2 - L8_2
          L7_2 = #L8_2
        end
        L8_2 = WorkclothesCoord
        if L8_2 then
          L8_2 = vector3
          L9_2 = WorkclothesCoord
          L9_2 = L9_2.x
          L10_2 = WorkclothesCoord
          L10_2 = L10_2.y
          L11_2 = WorkclothesCoord
          L11_2 = L11_2.z
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          L8_2 = L4_2 - L8_2
          L8_2 = #L8_2
          if L8_2 then
            goto lbl_408
          end
        end
        L8_2 = nil
        ::lbl_408::
        L9_2 = typejob
        if 1 ~= L9_2 and L7_2 < 8.0 then
          L9_2 = 1.3
          if L7_2 > L9_2 then
            L9_2 = L17_1
            if L9_2 then
              L9_2 = wait_process
              if not L9_2 then
                sleep = 1
                L9_2 = DrawMarker
                L10_2 = 2
                L11_2 = coordProcess
                L12_2 = 0.0
                L13_2 = 0.0
                L14_2 = 0.0
                L15_2 = 0.0
                L16_2 = 180.0
                L17_2 = 0.0
                L18_2 = 0.3
                L19_2 = 0.3
                L20_2 = 0.3
                L21_2 = Configuration
                L21_2 = L21_2.Color_Marker
                L21_2 = L21_2[1]
                L22_2 = Configuration
                L22_2 = L22_2.Color_Marker
                L22_2 = L22_2[2]
                L23_2 = Configuration
                L23_2 = L23_2.Color_Marker
                L23_2 = L23_2[3]
                L24_2 = 100
                L25_2 = false
                L26_2 = true
                L27_2 = 2
                L28_2 = true
                L29_2 = false
                L30_2 = false
                L31_2 = false
                L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
            end
          end
        end
        else
          if L8_2 and L8_2 < 8.0 then
            L9_2 = 1.3
            if L8_2 > L9_2 then
              sleep = 1
              L9_2 = DrawMarker
              L10_2 = 2
              L11_2 = vec3
              L12_2 = WorkclothesCoord
              L12_2 = L12_2.x
              L13_2 = WorkclothesCoord
              L13_2 = L13_2.y
              L14_2 = WorkclothesCoord
              L14_2 = L14_2.z
              L14_2 = L14_2 + 3.0
              L11_2 = L11_2(L12_2, L13_2, L14_2)
              L12_2 = 0.0
              L13_2 = 0.0
              L14_2 = 0.0
              L15_2 = 0.0
              L16_2 = 180.0
              L17_2 = 0.0
              L18_2 = 0.3
              L19_2 = 0.3
              L20_2 = 0.3
              L21_2 = Configuration
              L21_2 = L21_2.Color_Marker
              L21_2 = L21_2[1]
              L22_2 = Configuration
              L22_2 = L22_2.Color_Marker
              L22_2 = L22_2[2]
              L23_2 = Configuration
              L23_2 = L23_2.Color_Marker
              L23_2 = L23_2[3]
              L24_2 = 100
              L25_2 = false
              L26_2 = true
              L27_2 = 2
              L28_2 = true
              L29_2 = false
              L30_2 = false
              L31_2 = false
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          end
          else
            if L6_2 < 8.0 then
              L9_2 = 1.3
              if L6_2 > L9_2 then
                L9_2 = currentStep
                if not L9_2 then
                  sleep = 1
                  L9_2 = DrawMarker
                  L10_2 = 2
                  L11_2 = vec3
                  L12_2 = VehicleCoord
                  L12_2 = L12_2.x
                  L13_2 = VehicleCoord
                  L13_2 = L13_2.y
                  L14_2 = VehicleCoord
                  L14_2 = L14_2.z
                  L14_2 = L14_2 + 2.0
                  L11_2 = L11_2(L12_2, L13_2, L14_2)
                  L12_2 = 0.0
                  L13_2 = 0.0
                  L14_2 = 0.0
                  L15_2 = 0.0
                  L16_2 = 180.0
                  L17_2 = 0.0
                  L18_2 = 0.3
                  L19_2 = 0.3
                  L20_2 = 0.3
                  L21_2 = Configuration
                  L21_2 = L21_2.Color_Marker
                  L21_2 = L21_2[1]
                  L22_2 = Configuration
                  L22_2 = L22_2.Color_Marker
                  L22_2 = L22_2[2]
                  L23_2 = Configuration
                  L23_2 = L23_2.Color_Marker
                  L23_2 = L23_2[3]
                  L24_2 = 100
                  L25_2 = false
                  L26_2 = true
                  L27_2 = 2
                  L28_2 = true
                  L29_2 = false
                  L30_2 = false
                  L31_2 = false
                  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
              end
            end
            else
              sleep = 1000
            end
          end
        end
      end
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = sleep
      L4_2(L5_2)
    end
  else
    while true do
      L3_2 = cancel
      if L3_2 then
        return
      else
        L3_2 = GetEntityCoords
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = Configuration
        L4_2 = L4_2.UseClothes
        if L4_2 then
          L4_2 = WorkclothesCoord
          L4_2 = L3_2 - L4_2
          L4_2 = #L4_2
          distClothes = L4_2
        end
        L4_2 = VehicleCoord
        L4_2 = L3_2 - L4_2
        L4_2 = #L4_2
        L5_2 = GetEntityHeading
        L6_2 = ProcessPROP
        L5_2 = L5_2(L6_2)
        L6_2 = vector3
        L7_2 = 0.0
        L8_2 = -1.7
        L9_2 = 1.5
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = GetOffsetFromEntityInWorldCoords
        L8_2 = ProcessPROP
        L9_2 = L6_2.x
        L10_2 = L6_2.y
        L11_2 = L6_2.z
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        coordProcess = L7_2
        L7_2 = typejob
        if 1 ~= L7_2 then
          L7_2 = coordProcess
          L7_2 = L3_2 - L7_2
          L7_2 = #L7_2
          distProcess = L7_2
        end
        L7_2 = Configuration
        L7_2 = L7_2.UseClothes
        if L7_2 then
          L7_2 = distClothes
          L8_2 = 1.7
          if L7_2 < L8_2 then
            L7_2 = wait_clothes
            if not L7_2 then
              L7_2 = hintToDisplay
              L8_2 = _U
              L9_2 = "JOBS_DRAWTEXT_CLOTHES"
              L8_2 = L8_2(L9_2)
              L9_2 = WorkclothesCoord
              L10_2 = vec3
              L11_2 = 0
              L12_2 = 0
              L13_2 = 1.0
              L10_2 = L10_2(L11_2, L12_2, L13_2)
              L9_2 = L9_2 + L10_2
              L7_2(L8_2, L9_2)
              L7_2 = IsControlJustReleased
              L8_2 = 0
              L9_2 = 38
              L7_2 = L7_2(L8_2, L9_2)
              if L7_2 then
                use_clothes = true
                L7_2 = TriggerEvent
                L8_2 = "Buty-InfiniteJobs:client:workclothes"
                L7_2(L8_2)
              end
            else
              L7_2 = use_clothes
              if not L7_2 then
                L7_2 = hintToDisplay
                L8_2 = _U
                L9_2 = "JOBS_DRAWTEXT_BUSY"
                L8_2 = L8_2(L9_2)
                L9_2 = WorkclothesCoord
                L10_2 = vec3
                L11_2 = 0
                L12_2 = 0
                L13_2 = 1.0
                L10_2 = L10_2(L11_2, L12_2, L13_2)
                L9_2 = L9_2 + L10_2
                L7_2(L8_2, L9_2)
              end
            end
            sleep = 1
        end
        else
          L7_2 = 1.7
          if L4_2 < L7_2 then
            L7_2 = currentStep
            if not L7_2 then
              sleep = 1
              L7_2 = hintToDisplay
              L8_2 = _U
              L9_2 = "JOBS_DRAWTEXT_GET_VEHICLE"
              L8_2 = L8_2(L9_2)
              L9_2 = VehicleCoord
              L10_2 = vec3
              L11_2 = 0
              L12_2 = 0
              L13_2 = 1.0
              L10_2 = L10_2(L11_2, L12_2, L13_2)
              L9_2 = L9_2 + L10_2
              L7_2(L8_2, L9_2)
              L7_2 = IsControlJustReleased
              L8_2 = 0
              L9_2 = 38
              L7_2 = L7_2(L8_2, L9_2)
              if L7_2 then
                L7_2 = wait_vehicle
                if not L7_2 then
                  L7_2 = getvehicle
                  if not L7_2 then
                    L7_2 = true
                    L8_2 = Configuration
                    L8_2 = L8_2.UseClothes
                    if L8_2 then
                      L8_2 = pairs
                      L9_2 = lobby
                      L9_2 = L9_2.users
                      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
                      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
                        L14_2 = L13_2.isdressed
                        if false == L14_2 then
                          L7_2 = false
                        end
                      end
                    end
                    if L7_2 then
                      L8_2 = TriggerServerEvent
                      L9_2 = "Buty-InfiniteJobs:server:tryGetVehicle"
                      L10_2 = lobby
                      L8_2(L9_2, L10_2)
                    else
                      L8_2 = changeclothes
                      if L8_2 then
                        L8_2 = Notify
                        L9_2 = "error"
                        L10_2 = _U
                        L11_2 = "JOBS_NOTIFICATION_NO_DRESSED_FRIENDS"
                        L10_2 = L10_2(L11_2)
                        L11_2 = time
                        L12_2 = "client"
                        L8_2(L9_2, L10_2, L11_2, L12_2)
                      else
                        L8_2 = Notify
                        L9_2 = "error"
                        L10_2 = _U
                        L11_2 = "JOBS_NOTIFICATION_NO_DRESSED"
                        L10_2 = L10_2(L11_2)
                        L11_2 = time
                        L12_2 = "client"
                        L8_2(L9_2, L10_2, L11_2, L12_2)
                      end
                    end
                  end
                end
              end
          end
          else
            L7_2 = typejob
            if 1 ~= L7_2 then
              L7_2 = distProcess
              if L7_2 < 5.0 then
                L7_2 = distProcess
                L8_2 = 1.3
                if L7_2 > L8_2 then
                  L7_2 = L17_1
                  if L7_2 then
                    L7_2 = wait_process
                    if not L7_2 then
                      sleep = 1
                      L7_2 = DrawMarker
                      L8_2 = 2
                      L9_2 = coordProcess
                      L10_2 = 0.0
                      L11_2 = 0.0
                      L12_2 = 0.0
                      L13_2 = 0.0
                      L14_2 = 180.0
                      L15_2 = 0.0
                      L16_2 = 0.3
                      L17_2 = 0.3
                      L18_2 = 0.3
                      L19_2 = Configuration
                      L19_2 = L19_2.Color_Marker
                      L19_2 = L19_2[1]
                      L20_2 = Configuration
                      L20_2 = L20_2.Color_Marker
                      L20_2 = L20_2[2]
                      L21_2 = Configuration
                      L21_2 = L21_2.Color_Marker
                      L21_2 = L21_2[3]
                      L22_2 = 100
                      L23_2 = false
                      L24_2 = true
                      L25_2 = 2
                      L26_2 = true
                      L27_2 = false
                      L28_2 = false
                      L29_2 = false
                      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                end
              end
            end
            else
              L7_2 = Configuration
              L7_2 = L7_2.UseClothes
              if L7_2 then
                L7_2 = distClothes
                if L7_2 < 8.0 then
                  L7_2 = distClothes
                  L8_2 = 1.3
                  if L7_2 > L8_2 then
                    sleep = 1
                    L7_2 = DrawMarker
                    L8_2 = 2
                    L9_2 = vec3
                    L10_2 = WorkclothesCoord
                    L10_2 = L10_2.x
                    L11_2 = WorkclothesCoord
                    L11_2 = L11_2.y
                    L12_2 = WorkclothesCoord
                    L12_2 = L12_2.z
                    L12_2 = L12_2 + 3.0
                    L9_2 = L9_2(L10_2, L11_2, L12_2)
                    L10_2 = 0.0
                    L11_2 = 0.0
                    L12_2 = 0.0
                    L13_2 = 0.0
                    L14_2 = 180.0
                    L15_2 = 0.0
                    L16_2 = 0.3
                    L17_2 = 0.3
                    L18_2 = 0.3
                    L19_2 = Configuration
                    L19_2 = L19_2.Color_Marker
                    L19_2 = L19_2[1]
                    L20_2 = Configuration
                    L20_2 = L20_2.Color_Marker
                    L20_2 = L20_2[2]
                    L21_2 = Configuration
                    L21_2 = L21_2.Color_Marker
                    L21_2 = L21_2[3]
                    L22_2 = 100
                    L23_2 = false
                    L24_2 = true
                    L25_2 = 2
                    L26_2 = true
                    L27_2 = false
                    L28_2 = false
                    L29_2 = false
                    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                end
              end
              else
                if L4_2 < 8.0 then
                  L7_2 = 1.3
                  if L4_2 > L7_2 then
                    L7_2 = currentStep
                    if not L7_2 then
                      sleep = 1
                      L7_2 = DrawMarker
                      L8_2 = 2
                      L9_2 = vec3
                      L10_2 = VehicleCoord
                      L10_2 = L10_2.x
                      L11_2 = VehicleCoord
                      L11_2 = L11_2.y
                      L12_2 = VehicleCoord
                      L12_2 = L12_2.z
                      L12_2 = L12_2 + 2.0
                      L9_2 = L9_2(L10_2, L11_2, L12_2)
                      L10_2 = 0.0
                      L11_2 = 0.0
                      L12_2 = 0.0
                      L13_2 = 0.0
                      L14_2 = 180.0
                      L15_2 = 0.0
                      L16_2 = 0.3
                      L17_2 = 0.3
                      L18_2 = 0.3
                      L19_2 = Configuration
                      L19_2 = L19_2.Color_Marker
                      L19_2 = L19_2[1]
                      L20_2 = Configuration
                      L20_2 = L20_2.Color_Marker
                      L20_2 = L20_2[2]
                      L21_2 = Configuration
                      L21_2 = L21_2.Color_Marker
                      L21_2 = L21_2[3]
                      L22_2 = 100
                      L23_2 = false
                      L24_2 = true
                      L25_2 = 2
                      L26_2 = true
                      L27_2 = false
                      L28_2 = false
                      L29_2 = false
                      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
                  end
                end
                else
                  L7_2 = typejob
                  if 1 ~= L7_2 then
                    L7_2 = distProcess
                    L8_2 = 1.3
                    if L7_2 < L8_2 then
                      L7_2 = L17_1
                      if L7_2 then
                        L7_2 = wait_process
                        if not L7_2 then
                          sleep = 1
                          L7_2 = hintToDisplay
                          L8_2 = _U
                          L9_2 = "JOBS_DRAWTEXT_PROCESS"
                          L8_2 = L8_2(L9_2)
                          L9_2 = coordProcess
                          L7_2(L8_2, L9_2)
                          L7_2 = IsControlJustReleased
                          L8_2 = 0
                          L9_2 = 38
                          L7_2 = L7_2(L8_2, L9_2)
                          if L7_2 then
                            L7_2 = L15_1
                            if L7_2 then
                              L7_2 = wait_process
                              if not L7_2 then
                                wait_process = true
                                L7_2 = ClearPedTasks
                                L8_2 = L2_2
                                L7_2(L8_2)
                                L7_2 = pairs
                                L8_2 = lobby
                                L8_2 = L8_2.users
                                L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
                                for L11_2 in L7_2, L8_2, L9_2, L10_2 do
                                  L12_2 = TriggerServerEvent
                                  L13_2 = "Buty-InfiniteJobs:server:update"
                                  L14_2 = L11_2
                                  L15_2 = "wait_process"
                                  L16_2 = true
                                  L17_2 = lobby
                                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
                                end
                                L7_2 = TriggerEvent
                                L8_2 = "Buty-InfiniteJobs:client:Process"
                                L7_2(L8_2)
                              end
                            end
                          end
                      end
                    end
                  end
                  else
                    L7_2 = typejob
                    if 1 ~= L7_2 then
                      L7_2 = distProcess
                      L8_2 = 1.3
                      if L7_2 < L8_2 then
                        L7_2 = L17_1
                        if L7_2 then
                          L7_2 = wait_process
                          if L7_2 then
                            sleep = 1
                            L7_2 = hintToDisplay
                            L8_2 = _U
                            L9_2 = "JOBS_DRAWTEXT_PROCESS_IN"
                            L8_2 = L8_2(L9_2)
                            L9_2 = coordProcess
                            L7_2(L8_2, L9_2)
                        end
                      end
                    end
                    else
                      sleep = 1000
                    end
                  end
                end
              end
            end
          end
        end
      end
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = sleep
      L3_2(L4_2)
    end
  end
end
interactive = L28_1
L28_1 = AddEventHandler
L29_1 = "Buty-InfiniteJobs:client:workclothes"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L0_2 = WorkclothesPROP
  L1_2 = wait_clothes
  if not L1_2 then
    L1_2 = getvehicle
    if L1_2 then
      L1_2 = Notify
      L2_2 = "error"
      L3_2 = _U
      L4_2 = "JOBS_NOTIFICATION_NO_CHANGE_CLOTHES"
      L3_2 = L3_2(L4_2)
      L4_2 = time
      L5_2 = "client"
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      wait_clothes = true
      L1_2 = pairs
      L2_2 = lobby
      L2_2 = L2_2.users
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2 in L1_2, L2_2, L3_2, L4_2 do
        L6_2 = TriggerServerEvent
        L7_2 = "Buty-InfiniteJobs:server:update"
        L8_2 = L5_2
        L9_2 = "wait_clothes"
        L10_2 = true
        L11_2 = lobby
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
      L1_2 = GetResourceState
      L2_2 = "qs-inventory"
      L1_2 = L1_2(L2_2)
      L1_2 = "started" == L1_2
      if L1_2 then
        L2_2 = pcall
        function L3_2()
          local L0_3, L1_3, L2_3
          L0_3 = exports
          L0_3 = L0_3["qs-inventory"]
          L1_3 = L0_3
          L0_3 = L0_3.setInClothing
          L2_3 = true
          L0_3(L1_3, L2_3)
        end
        L2_2, L3_2 = L2_2(L3_2)
      end
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = table
      L3_2 = L3_2.unpack
      L4_2 = GetEntityCoords
      L5_2 = L0_2
      L6_2 = true
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L4_2(L5_2, L6_2)
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
      L6_2 = GetEntityForwardX
      L7_2 = L0_2
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2 * -1.0
      L6_2 = L3_2 + L6_2
      L7_2 = GetEntityForwardY
      L8_2 = L0_2
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2 * -1.0
      L7_2 = L4_2 + L7_2
      L8_2 = GetEntityForwardX
      L9_2 = L0_2
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2 * -3.6
      L8_2 = L3_2 + L8_2
      L9_2 = GetEntityForwardY
      L10_2 = L0_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2 * -3.6
      L9_2 = L4_2 + L9_2
      L10_2 = L5_2 + 1.62
      L11_2 = vector3
      L12_2 = L8_2
      L13_2 = L9_2
      L14_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      camCoords = L11_2
      L11_2 = GetEntityRotation
      L12_2 = L0_2
      L13_2 = 2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = vector3
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = 0.0
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L12_2 = L11_2 + L12_2
      camRotation = L12_2
      L12_2 = Configuration
      L12_2 = L12_2.ZoomandCameras
      if L12_2 then
        L12_2 = CreateCamWithParams
        L13_2 = "DEFAULT_SCRIPTED_CAMERA"
        L14_2 = camCoords
        L15_2 = camRotation
        L16_2 = GetGameplayCamFov
        L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L16_2()
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
        cam = L12_2
        L12_2 = SetCamFov
        L13_2 = cam
        L14_2 = L4_1
        L12_2(L13_2, L14_2)
        L12_2 = SetCamActive
        L13_2 = cam
        L14_2 = true
        L12_2(L13_2, L14_2)
        L12_2 = RenderScriptCams
        L13_2 = true
        L14_2 = true
        L15_2 = 1000
        L16_2 = true
        L17_2 = false
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
        L12_2 = ShakeCam
        L13_2 = cam
        L14_2 = "HAND_SHAKE"
        L15_2 = 1.0
        L12_2(L13_2, L14_2, L15_2)
      end
      L12_2 = GetGroundZFor_3dCoord
      L13_2 = L6_2
      L14_2 = L7_2
      L15_2 = L10_2
      L16_2 = false
      L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L14_2 = SetEntityCoords
      L15_2 = L2_2
      L16_2 = vec3
      L17_2 = L6_2
      L18_2 = L7_2
      L19_2 = L13_2
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L17_2 = false
      L18_2 = false
      L19_2 = false
      L20_2 = true
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L14_2 = TurnPedToFaceCoordAndWait
      L15_2 = L2_2
      L16_2 = GetEntityCoords
      L17_2 = WorkclothesPROP
      L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L16_2(L17_2)
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
      L14_2 = FreezeEntityPosition
      L15_2 = L2_2
      L16_2 = true
      L14_2(L15_2, L16_2)
      L14_2 = GetEntityCoords
      L15_2 = L2_2
      L14_2 = L14_2(L15_2)
      L15_2 = Animation
      L16_2 = "timetable@jimmy@doorknock@"
      L17_2 = "knockdoor_idle"
      L18_2 = L2_2
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = Wait
      L16_2 = GetAnimDuration
      L17_2 = "timetable@jimmy@doorknock@"
      L18_2 = "knockdoor_idle"
      L16_2 = L16_2(L17_2, L18_2)
      L16_2 = L16_2 * 1000
      L16_2 = L16_2 / 2
      L15_2(L16_2)
      L15_2 = Configuration
      L15_2 = L15_2.ZoomandCameras
      if L15_2 then
        L15_2 = GetEntityForwardX
        L16_2 = L0_2
        L15_2 = L15_2(L16_2)
        L15_2 = L15_2 * -0.9
        L15_2 = L3_2 + L15_2
        L16_2 = GetEntityForwardY
        L17_2 = L0_2
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2 * -0.9
        L16_2 = L4_2 + L16_2
        L17_2 = L5_2 + 1.62
        L18_2 = vector3
        L19_2 = L15_2
        L20_2 = L16_2
        L21_2 = L17_2
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        camCoords = L18_2
        L18_2 = SetCamParams
        L19_2 = cam
        L20_2 = camCoords
        L21_2 = GetEntityRotation
        L22_2 = L0_2
        L23_2 = 2
        L21_2 = L21_2(L22_2, L23_2)
        L22_2 = 50.0
        L23_2 = 1300
        L24_2 = 1
        L25_2 = 3
        L26_2 = 1
        L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L18_2 = Citizen
        L18_2 = L18_2.Wait
        L19_2 = 1400
        L18_2(L19_2)
        L18_2 = SetEntityCoords
        L19_2 = L2_2
        L20_2 = WorkclothesCoord
        L18_2(L19_2, L20_2)
        L18_2 = GetEntityForwardX
        L19_2 = L0_2
        L18_2 = L18_2(L19_2)
        L18_2 = L18_2 * -3.6
        L18_2 = L3_2 + L18_2
        L19_2 = GetEntityForwardY
        L20_2 = L0_2
        L19_2 = L19_2(L20_2)
        L19_2 = L19_2 * -3.6
        L19_2 = L4_2 + L19_2
        L20_2 = L5_2 + 1.62
        L21_2 = vector3
        L22_2 = L18_2
        L23_2 = L19_2
        L24_2 = L20_2
        L21_2 = L21_2(L22_2, L23_2, L24_2)
        camCoords = L21_2
        L21_2 = SetCamParams
        L22_2 = cam
        L23_2 = camCoords
        L24_2 = GetEntityRotation
        L25_2 = L0_2
        L26_2 = 2
        L24_2 = L24_2(L25_2, L26_2)
        L25_2 = 50.0
        L26_2 = 1300
        L27_2 = 1
        L28_2 = 3
        L29_2 = 1
        L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
        L21_2 = progress
        L21_2()
        L21_2 = Wait
        L22_2 = 3000
        L21_2(L22_2)
        L21_2 = GetEntityForwardX
        L22_2 = L0_2
        L21_2 = L21_2(L22_2)
        L21_2 = L21_2 * -0.9
        L21_2 = L3_2 + L21_2
        L22_2 = GetEntityForwardY
        L23_2 = L0_2
        L22_2 = L22_2(L23_2)
        L22_2 = L22_2 * -0.9
        L22_2 = L4_2 + L22_2
        L23_2 = L5_2 + 1.62
        L24_2 = vector3
        L25_2 = L21_2
        L26_2 = L22_2
        L27_2 = L23_2
        L24_2 = L24_2(L25_2, L26_2, L27_2)
        camCoords = L24_2
        L24_2 = SetCamParams
        L25_2 = cam
        L26_2 = camCoords
        L27_2 = GetEntityRotation
        L28_2 = L0_2
        L29_2 = 2
        L27_2 = L27_2(L28_2, L29_2)
        L28_2 = 50.0
        L29_2 = 1300
        L30_2 = 1
        L31_2 = 3
        L32_2 = 1
        L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        L24_2 = Citizen
        L24_2 = L24_2.Wait
        L25_2 = 1400
        L24_2(L25_2)
        L24_2 = GetEntityForwardX
        L25_2 = L0_2
        L24_2 = L24_2(L25_2)
        L24_2 = L24_2 * -3.6
        L24_2 = L3_2 + L24_2
        L25_2 = GetEntityForwardY
        L26_2 = L0_2
        L25_2 = L25_2(L26_2)
        L25_2 = L25_2 * -3.6
        L25_2 = L4_2 + L25_2
        L26_2 = L5_2 + 1.62
        L27_2 = vector3
        L28_2 = L24_2
        L29_2 = L25_2
        L30_2 = L26_2
        L27_2 = L27_2(L28_2, L29_2, L30_2)
        camCoords = L27_2
        L27_2 = SetCamParams
        L28_2 = cam
        L29_2 = camCoords
        L30_2 = GetEntityRotation
        L31_2 = L0_2
        L32_2 = 2
        L30_2 = L30_2(L31_2, L32_2)
        L31_2 = 50.0
        L32_2 = 1300
        L33_2 = 1
        L34_2 = 3
        L35_2 = 1
        L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
        L27_2 = SetEntityCoords
        L28_2 = L2_2
        L29_2 = vec3
        L30_2 = L6_2
        L31_2 = L7_2
        L32_2 = L13_2
        L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L29_2(L30_2, L31_2, L32_2)
        L27_2(L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
        L27_2 = SetEntityRotation
        L28_2 = L2_2
        L29_2 = lobby
        L29_2 = L29_2.jobconfig
        L29_2 = L29_2.Workclothes
        L29_2 = L29_2.w
        L27_2(L28_2, L29_2)
        L27_2 = EndCam
        L27_2()
      end
      L15_2 = FreezeEntityPosition
      L16_2 = L2_2
      L17_2 = false
      L15_2(L16_2, L17_2)
      L15_2 = GetEntityModel
      L16_2 = L2_2
      L15_2 = L15_2(L16_2)
      L16_2 = true
      L17_2 = {}
      L18_2 = 1885233650
      L19_2 = -1667301416
      L17_2[1] = L18_2
      L17_2[2] = L19_2
      L18_2 = ipairs
      L19_2 = L17_2
      L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
      for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
        if L15_2 == L23_2 then
          L16_2 = false
        end
      end
      L18_2 = changeclothes
      if L18_2 then
        if not L16_2 then
          L18_2 = restorePlayerClothes
          L18_2()
        end
        L18_2 = AnimationWalk
        L19_2 = "clothingtie"
        L20_2 = "try_tie_negative_a"
        L21_2 = L2_2
        L18_2(L19_2, L20_2, L21_2)
        L18_2 = Wait
        L19_2 = 2000
        L18_2(L19_2)
        L18_2 = ClearPedTasks
        L19_2 = L2_2
        L18_2(L19_2)
        L18_2 = lobby
        L18_2 = L18_2.users
        L19_2 = GetPlayerServerId
        L20_2 = PlayerId
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L20_2()
        L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
        L18_2 = L18_2[L19_2]
        L18_2.isdressed = false
        changeclothes = false
      else
        if not L16_2 then
          L18_2 = GetEntityModel
          L19_2 = PlayerPedId
          L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L19_2()
          L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
          L19_2 = GetHashKey
          L20_2 = "mp_m_freemode_01"
          L19_2 = L19_2(L20_2)
          if L18_2 == L19_2 then
            L19_2 = jobs
            L19_2 = L19_2.Clothes
            L19_2 = L19_2.male
            ropita = L19_2
          else
            L19_2 = GetHashKey
            L20_2 = "mp_f_freemode_01"
            L19_2 = L19_2(L20_2)
            if L18_2 == L19_2 then
              L19_2 = jobs
              L19_2 = L19_2.Clothes
              L19_2 = L19_2.female
              ropita = L19_2
            end
          end
          L19_2 = changeClothes
          L20_2 = {}
          L21_2 = ropita
          L21_2 = L21_2.torso_1
          L22_2 = ropita
          L22_2 = L22_2.torso_2
          L20_2[1] = L21_2
          L20_2[2] = L22_2
          L21_2 = {}
          L22_2 = ropita
          L22_2 = L22_2.pants_1
          L23_2 = ropita
          L23_2 = L23_2.pants_2
          L21_2[1] = L22_2
          L21_2[2] = L23_2
          L22_2 = {}
          L23_2 = ropita
          L23_2 = L23_2.shoes_1
          L24_2 = ropita
          L24_2 = L24_2.shoes_2
          L22_2[1] = L23_2
          L22_2[2] = L24_2
          L23_2 = {}
          L24_2 = ropita
          L24_2 = L24_2.tshirt_1
          L25_2 = ropita
          L25_2 = L25_2.tshirt_2
          L23_2[1] = L24_2
          L23_2[2] = L25_2
          L24_2 = {}
          L25_2 = ropita
          L25_2 = L25_2.arms
          L24_2[1] = L25_2
          L25_2 = {}
          L26_2 = ropita
          L26_2 = L26_2.helmet_1
          L27_2 = ropita
          L27_2 = L27_2.helmet_2
          L25_2[1] = L26_2
          L25_2[2] = L27_2
          L26_2 = {}
          L27_2 = ropita
          L27_2 = L27_2.bproof_1
          L28_2 = ropita
          L28_2 = L28_2.bproof_2
          L26_2[1] = L27_2
          L26_2[2] = L28_2
          L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        end
        L18_2 = AnimationWalk
        L19_2 = "clothingtie"
        L20_2 = "try_tie_negative_a"
        L21_2 = L2_2
        L18_2(L19_2, L20_2, L21_2)
        L18_2 = Wait
        L19_2 = 2000
        L18_2(L19_2)
        changeclothes = true
        L18_2 = lobby
        L18_2 = L18_2.users
        L19_2 = GetPlayerServerId
        L20_2 = PlayerId
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L20_2()
        L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
        L18_2 = L18_2[L19_2]
        L18_2.isdressed = true
        L18_2 = ClearPedTasks
        L19_2 = L2_2
        L18_2(L19_2)
      end
      wait_clothes = false
      use_clothes = false
      L18_2 = pairs
      L19_2 = lobby
      L19_2 = L19_2.users
      L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
      for L22_2 in L18_2, L19_2, L20_2, L21_2 do
        L23_2 = TriggerServerEvent
        L24_2 = "Buty-InfiniteJobs:server:update"
        L25_2 = L22_2
        L26_2 = "wait_clothes"
        L27_2 = false
        L28_2 = lobby
        L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
      end
    end
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:GetVehicle"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2
  if A0_2 then
    L1_2 = lobby
    L1_2 = L1_2.jobconfig
    L1_2 = L1_2.Vehicle
    L1_2 = L1_2.spawnvehicle
    L2_2 = GetClosestVehicle
    L3_2 = L1_2.x
    L4_2 = L1_2.y
    L5_2 = L1_2.z
    L6_2 = 5.0
    L7_2 = 0
    L8_2 = 70
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = getvehicle
    if L3_2 then
      L3_2 = Notify
      L4_2 = "error"
      L5_2 = _U
      L6_2 = "JOBS_NOTIFICATION_ALREADY_VEHICLE"
      L5_2 = L5_2(L6_2)
      L6_2 = time
      L7_2 = "client"
      L3_2(L4_2, L5_2, L6_2, L7_2)
      return
    end
    if 0 ~= L2_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "Buty-InfiniteJobs:server:updateVehicle"
      L5_2 = lobby
      L3_2(L4_2, L5_2)
      L3_2 = Notify
      L4_2 = "error"
      L5_2 = _U
      L6_2 = "JOBS_NOTIFICATION_NO_VEHICLE"
      L5_2 = L5_2(L6_2)
      L6_2 = time
      L7_2 = "client"
      L3_2(L4_2, L5_2, L6_2, L7_2)
      return
    end
    L3_2 = wait_vehicle
    if not L3_2 then
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = false
      L5_2 = pairs
      L6_2 = lobby
      L6_2 = L6_2.users
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L10_2.istool
        if true == L11_2 then
          L4_2 = true
        end
      end
      if L4_2 then
        L5_2 = Notify
        L6_2 = "error"
        L7_2 = _U
        L8_2 = "JOBS_NOTIFICATION_ALL_TOOL"
        L7_2 = L7_2(L8_2)
        L8_2 = time
        L9_2 = "client"
        L5_2(L6_2, L7_2, L8_2, L9_2)
      else
        wait_vehicle = true
        L5_2 = pairs
        L6_2 = lobby
        L6_2 = L6_2.users
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2 in L5_2, L6_2, L7_2, L8_2 do
          L10_2 = TriggerServerEvent
          L11_2 = "Buty-InfiniteJobs:server:update"
          L12_2 = L9_2
          L13_2 = "wait_vehicle"
          L14_2 = true
          L15_2 = lobby
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        end
        L5_2 = table
        L5_2 = L5_2.unpack
        L6_2 = GetEntityCoords
        L7_2 = VehiclePROP
        L8_2 = true
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L6_2(L7_2, L8_2)
        L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
        L8_2 = table
        L8_2 = L8_2.unpack
        L9_2 = GetEntityCoords
        L10_2 = VehiclePROP
        L11_2 = true
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L9_2(L10_2, L11_2)
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
        L11_2 = GetEntityForwardX
        L12_2 = VehiclePROP
        L11_2 = L11_2(L12_2)
        L11_2 = L11_2 * -4.6
        L11_2 = L8_2 + L11_2
        L12_2 = GetEntityForwardY
        L13_2 = VehiclePROP
        L12_2 = L12_2(L13_2)
        L12_2 = L12_2 * -4.6
        L12_2 = L9_2 + L12_2
        L13_2 = L10_2 + 1.62
        L14_2 = GetEntityForwardX
        L15_2 = VehiclePROP
        L14_2 = L14_2(L15_2)
        L14_2 = L14_2 * -0.8
        L14_2 = L8_2 + L14_2
        L15_2 = GetEntityForwardY
        L16_2 = VehiclePROP
        L15_2 = L15_2(L16_2)
        L15_2 = L15_2 * -0.8
        L15_2 = L9_2 + L15_2
        L16_2 = GetGroundZFor_3dCoord
        L17_2 = L11_2
        L18_2 = L12_2
        L19_2 = L13_2
        L20_2 = false
        L16_2, L17_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
        L18_2 = SetEntityCoords
        L19_2 = L3_2
        L20_2 = vec3
        L21_2 = L14_2
        L22_2 = L15_2
        L23_2 = L17_2
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L20_2(L21_2, L22_2, L23_2)
        L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
        L18_2 = Wait
        L19_2 = 10
        L18_2(L19_2)
        L18_2 = TurnPedToFaceCoordAndWait
        L19_2 = L3_2
        L20_2 = GetEntityCoords
        L21_2 = VehiclePROP
        L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L20_2(L21_2)
        L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
        L18_2 = FreezeEntityPosition
        L19_2 = L3_2
        L20_2 = true
        L18_2(L19_2, L20_2)
        L18_2 = vector3
        L19_2 = L11_2
        L20_2 = L12_2
        L21_2 = L13_2
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        camCoords = L18_2
        L18_2 = GetEntityRotation
        L19_2 = VehiclePROP
        L20_2 = 2
        L18_2 = L18_2(L19_2, L20_2)
        L19_2 = vector3
        L20_2 = 0.0
        L21_2 = 0.0
        L22_2 = 0.0
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L19_2 = L18_2 + L19_2
        camRotation = L19_2
        L19_2 = Configuration
        L19_2 = L19_2.ZoomandCameras
        if L19_2 then
          L19_2 = CreateCamWithParams
          L20_2 = "DEFAULT_SCRIPTED_CAMERA"
          L21_2 = camCoords
          L22_2 = camRotation
          L23_2 = GetGameplayCamFov
          L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L23_2()
          L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
          vehicle_cam = L19_2
          L19_2 = SetCamFov
          L20_2 = vehicle_cam
          L21_2 = L4_1
          L19_2(L20_2, L21_2)
          L19_2 = SetCamActive
          L20_2 = vehicle_cam
          L21_2 = true
          L19_2(L20_2, L21_2)
          L19_2 = RenderScriptCams
          L20_2 = true
          L21_2 = true
          L22_2 = 1000
          L23_2 = true
          L24_2 = false
          L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
        end
        L19_2 = Animation
        L20_2 = "anim@amb@prop_human_atm@interior@male@enter"
        L21_2 = "enter"
        L22_2 = L3_2
        L19_2(L20_2, L21_2, L22_2)
        L19_2 = Wait
        L20_2 = GetAnimDuration
        L21_2 = "anim@amb@prop_human_atm@interior@male@enter"
        L22_2 = "enter"
        L20_2 = L20_2(L21_2, L22_2)
        L20_2 = L20_2 * 1000
        L20_2 = L20_2 / 2
        L19_2(L20_2)
        L19_2 = ClearPedTasks
        L20_2 = L3_2
        L19_2(L20_2)
        L19_2 = FreezeEntityPosition
        L20_2 = L3_2
        L21_2 = false
        L19_2(L20_2, L21_2)
        L19_2 = getvehicle
        if not L19_2 then
          wait_vehicle = false
          L19_2 = pairs
          L20_2 = lobby
          L20_2 = L20_2.users
          L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
          for L23_2, L24_2 in L19_2, L20_2, L21_2, L22_2 do
            L25_2 = TriggerServerEvent
            L26_2 = "Buty-InfiniteJobs:server:update"
            L27_2 = L23_2
            L28_2 = "wait_vehicle"
            L29_2 = false
            L30_2 = lobby
            L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
          end
          L19_2 = lobby
          L19_2 = L19_2.jobconfig
          L19_2 = L19_2.Vehicle
          L19_2 = L19_2.spawnvehicle
          L20_2 = GetHashKey
          L21_2 = lobby
          L21_2 = L21_2.jobconfig
          L21_2 = L21_2.Vehicle
          L21_2 = L21_2.model
          L20_2 = L20_2(L21_2)
          L21_2 = RequestModel
          L22_2 = L20_2
          L21_2(L22_2)
          while true do
            L21_2 = HasModelLoaded
            L22_2 = L20_2
            L21_2 = L21_2(L22_2)
            if L21_2 then
              break
            end
            L21_2 = Citizen
            L21_2 = L21_2.Wait
            L22_2 = 1
            L21_2(L22_2)
          end
          L21_2 = CreateVehicle
          L22_2 = L20_2
          L23_2 = L19_2.x
          L24_2 = L19_2.y
          L25_2 = L19_2.z
          L26_2 = L19_2.w
          L27_2 = true
          L28_2 = true
          L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
          while true do
            L22_2 = DoesEntityExist
            L23_2 = L21_2
            L22_2 = L22_2(L23_2)
            if L22_2 then
              break
            end
            L22_2 = Wait
            L23_2 = 0
            L22_2(L23_2)
          end
          L22_2 = NetworkGetNetworkIdFromEntity
          L23_2 = L21_2
          L22_2 = L22_2(L23_2)
          networkIdcar = L22_2
          vehicleowner = L21_2
          L22_2 = Wait
          L23_2 = 200
          L22_2(L23_2)
          L22_2 = TriggerServerEvent
          L23_2 = "Buty-InfiniteJobs:server:createVehicle"
          L24_2 = GetPlayerServerId
          L25_2 = PlayerId
          L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L25_2()
          L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
          L25_2 = lobby
          L26_2 = networkIdcar
          L27_2 = lobby
          L27_2 = L27_2.jobconfig
          L27_2 = L27_2.Vehicle
          L27_2 = L27_2.coord_prop_tool
          L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
          L22_2 = SetNewWaypoint
          L23_2 = GetEntityCoords
          L24_2 = L8_1
          L24_2 = L24_2[1]
          L23_2 = L23_2(L24_2)
          L23_2 = L23_2.x
          L24_2 = GetEntityCoords
          L25_2 = L8_1
          L25_2 = L25_2[1]
          L24_2 = L24_2(L25_2)
          L24_2 = L24_2.y
          L22_2(L23_2, L24_2)
          while true do
            L22_2 = L7_1
            if nil ~= L22_2 then
              break
            end
            L22_2 = Citizen
            L22_2 = L22_2.Wait
            L23_2 = 1
            L22_2(L23_2)
          end
          L22_2 = pairs
          L23_2 = lobby
          L23_2 = L23_2.users
          L22_2, L23_2, L24_2, L25_2 = L22_2(L23_2)
          for L26_2, L27_2 in L22_2, L23_2, L24_2, L25_2 do
            L28_2 = L27_2.tutorial
            if false == L28_2 then
              L28_2 = TriggerServerEvent
              L29_2 = "Buty-InfiniteJobs:server:showtutorial"
              L30_2 = L26_2
              L31_2 = lobby
              L28_2(L29_2, L30_2, L31_2)
            else
              L28_2 = table
              L28_2 = L28_2.unpack
              L29_2 = GetEntityCoords
              L30_2 = L7_1
              L31_2 = true
              L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2 = L29_2(L30_2, L31_2)
              L28_2, L29_2, L30_2 = L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2)
              L31_2 = GetEntityForwardX
              L32_2 = L7_1
              L31_2 = L31_2(L32_2)
              L31_2 = L31_2 * -3.6
              L31_2 = L28_2 + L31_2
              L32_2 = GetEntityForwardY
              L33_2 = L7_1
              L32_2 = L32_2(L33_2)
              L32_2 = L32_2 * -3.6
              L32_2 = L29_2 + L32_2
              L33_2 = L30_2 + 1.0
              L34_2 = vector3
              L35_2 = L31_2
              L36_2 = L32_2
              L37_2 = L33_2
              L34_2 = L34_2(L35_2, L36_2, L37_2)
              camCoords = L34_2
              L34_2 = SetCamParams
              L35_2 = vehicle_cam
              L36_2 = camCoords
              L37_2 = GetEntityRotation
              L38_2 = L7_1
              L39_2 = 2
              L37_2 = L37_2(L38_2, L39_2)
              L38_2 = 50.0
              L39_2 = 1300
              L40_2 = 1
              L41_2 = 3
              L42_2 = 1
              L34_2(L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2)
              getvehicle = true
              L34_2 = pairs
              L35_2 = lobby
              L35_2 = L35_2.users
              L34_2, L35_2, L36_2, L37_2 = L34_2(L35_2)
              for L38_2, L39_2 in L34_2, L35_2, L36_2, L37_2 do
                L40_2 = TriggerServerEvent
                L41_2 = "Buty-InfiniteJobs:server:update"
                L42_2 = L38_2
                L43_2 = "getvehicle"
                L44_2 = true
                L45_2 = lobby
                L40_2(L41_2, L42_2, L43_2, L44_2, L45_2)
              end
              L34_2 = Configuration
              L34_2 = L34_2.ZoomandCameras
              if L34_2 then
                L34_2 = Wait
                L35_2 = 1500
                L34_2(L35_2)
              end
              L34_2 = EndCam
              L34_2()
            end
          end
        end
      end
    end
  end
end
L28_1(L29_1, L30_1)
L28_1 = AddEventHandler
L29_1 = "Buty-InfiniteJobs:client:Process"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = lobby
  L1_2 = L1_2.jobconfig
  L1_2 = L1_2.CollectedProp
  L1_2 = L1_2.attachcoordProcess
  L2_2 = L1_2[2]
  L3_2 = false
  L15_1 = L3_2
  L3_2 = GetEntityCoords
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = ProcessPROP
  L4_2 = L4_2(L5_2)
  L5_2 = GetHeadingFromVector_2d
  L6_2 = L4_2.x
  L7_2 = L3_2.x
  L6_2 = L6_2 - L7_2
  L7_2 = L4_2.y
  L8_2 = L3_2.y
  L7_2 = L7_2 - L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = processbox
  L7_2 = SetEntityHeading
  L8_2 = L0_2
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L0_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = Wait
  L8_2 = 100
  L7_2(L8_2)
  L7_2 = TaskPlayAnim
  L8_2 = L0_2
  L9_2 = "anim@heists@load_box"
  L10_2 = "load_box_2"
  L11_2 = 8.0
  L12_2 = -8.0
  L13_2 = -1
  L14_2 = 1
  L15_2 = 0
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = Citizen
  L7_2 = L7_2.Wait
  L8_2 = GetAnimDuration
  L9_2 = "anim@heists@load_box"
  L10_2 = "load_box_2"
  L8_2 = L8_2(L9_2, L10_2)
  L8_2 = L8_2 * 1000
  L8_2 = L8_2 / 2
  L7_2(L8_2)
  L7_2 = ClearPedTasks
  L8_2 = L0_2
  L7_2(L8_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L0_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = 2
  L24_1 = L7_2
  L7_2 = Citizen
  L7_2 = L7_2.CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    while true do
      L0_3 = L2_2
      L1_3 = 2.4
      if not (L0_3 < L1_3) then
        break
      end
      L0_3 = cancel
      if L0_3 then
        return
      else
        L0_3 = AttachEntityToEntity
        L1_3 = L6_2
        L2_3 = ProcessPROP
        L3_3 = 0
        L4_3 = L1_2
        L4_3 = L4_3[1]
        L5_3 = L2_2
        L6_3 = L1_2
        L6_3 = L6_3[3]
        L7_3 = L1_2
        L7_3 = L7_3[4]
        L8_3 = L1_2
        L8_3 = L8_3[5]
        L9_3 = L1_2
        L9_3 = L9_3[6]
        L10_3 = 1
        L11_3 = 1
        L12_3 = 0
        L13_3 = 1
        L14_3 = 0
        L15_3 = 1
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
        L0_3 = L2_2
        L0_3 = L0_3 + 0.009
        L2_2 = L0_3
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1
      L0_3(L1_3)
    end
    L0_3 = DetachEntity
    L1_3 = L6_2
    L2_3 = 0
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = DeleteEntity
    L1_3 = L6_2
    L0_3(L1_3)
    wait_process = false
    L0_3 = pairs
    L1_3 = lobby
    L1_3 = L1_3.users
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = TriggerServerEvent
      L7_3 = "Buty-InfiniteJobs:server:update"
      L8_3 = L4_3
      L9_3 = "process"
      L10_3 = false
      L11_3 = lobby
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L6_3 = TriggerServerEvent
      L7_3 = "Buty-InfiniteJobs:server:update"
      L8_3 = L4_3
      L9_3 = "wait_process"
      L10_3 = false
      L11_3 = lobby
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    end
    return
  end
  L7_2(L8_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:tutorial"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = table
  L0_2 = L0_2.unpack
  L1_2 = GetEntityCoords
  L2_2 = L7_1
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L1_2(L2_2)
  L0_2, L1_2, L2_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2 = GetEntityForwardX
  L4_2 = L7_1
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * -4
  L3_2 = L0_2 + L3_2
  L4_2 = GetEntityForwardY
  L5_2 = L7_1
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * -4
  L4_2 = L1_2 + L4_2
  L5_2 = L2_2 + 0.62
  L6_2 = vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  camCoords = L6_2
  L6_2 = tutorial_cam_active
  L6_2()
  L6_2 = DoesCamExist
  L7_2 = vehicle_cam
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = CreateCam
    L7_2 = "DEFAULT_SCRIPTED_CAMERA"
    L8_2 = true
    L6_2 = L6_2(L7_2, L8_2)
    vehicle_cam = L6_2
  end
  L6_2 = SetCamParams
  L7_2 = vehicle_cam
  L8_2 = camCoords
  L9_2 = GetEntityRotation
  L10_2 = L7_1
  L11_2 = 2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L4_1
  L11_2 = 1300
  L12_2 = 1
  L13_2 = 3
  L14_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  getvehicle = true
  L6_2 = pairs
  L7_2 = lobby
  L7_2 = L7_2.users
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L11_2.tutorial = true
    L12_2 = TriggerServerEvent
    L13_2 = "Buty-InfiniteJobs:server:update"
    L14_2 = L10_2
    L15_2 = "getvehicle"
    L16_2 = true
    L17_2 = lobby
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  end
  L6_2 = pairs
  L7_2 = lobby
  L7_2 = L7_2.jobconfig
  L7_2 = L7_2.Vehicle
  L7_2 = L7_2.doors
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = SetVehicleDoorOpen
    L13_2 = L7_1
    L14_2 = L11_2
    L15_2 = false
    L16_2 = false
    L12_2(L13_2, L14_2, L15_2, L16_2)
  end
  L6_2 = SetNuiFocus
  L7_2 = true
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = L6_1
  if nil == L6_2 then
    L6_2 = 1
    L6_1 = L6_2
  end
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.type = "tutorial"
  L7_2.status = true
  L8_2 = jobs
  L8_2 = L8_2.JobInfo
  L8_2 = L8_2.Name
  L7_2.jobname = L8_2
  L8_2 = GetTutorialText
  L8_2 = L8_2()
  L7_2.tutorialText = L8_2
  L8_2 = Configuration
  L8_2 = L8_2.Color_UI
  L7_2.color = L8_2
  L8_2 = {}
  L9_2 = _U
  L10_2 = "JOBS_UI_13"
  L9_2 = L9_2(L10_2)
  L8_2[1] = L9_2
  L9_2 = _U
  L10_2 = "JOBS_UI_14"
  L9_2 = L9_2(L10_2)
  L8_2[2] = L9_2
  L7_2.translate = L8_2
  L6_2(L7_2)
end
L28_1(L29_1, L30_1)
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A2_2 = 1500
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L4_2 = TaskTurnPedToFaceCoord
  L5_2 = A0_2
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L9_2 = -1
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  while true do
    L4_2 = GetHeadingFromVector_2d
    L5_2 = A1_2.x
    L6_2 = GetEntityCoords
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.x
    L5_2 = L5_2 - L6_2
    L6_2 = A1_2.y
    L7_2 = GetEntityCoords
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.y
    L6_2 = L6_2 - L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = GetEntityHeading
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L5_2 - L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 < 5.0 then
      break
    end
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L6_2 = L6_2 - L3_2
    if A2_2 < L6_2 then
      break
    end
    L6_2 = Wait
    L7_2 = 50
    L6_2(L7_2)
  end
end
TurnPedToFaceCoordAndWait = L28_1
function L28_1()
  local L0_2, L1_2
  L0_2 = L6_1
  return L0_2
end
GetCurrentTutorialStep = L28_1
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetCurrentTutorialStep
  L0_2 = L0_2()
  currentStep = L0_2
  L0_2 = jobs
  L0_2 = L0_2.JobInfo
  L0_2 = L0_2.Tutorial
  L1_2 = currentStep
  L0_2 = L0_2[L1_2]
  function L1_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L7_3 = table
    L7_3 = L7_3.unpack
    L8_3 = GetEntityCoords
    L9_3 = A0_3
    L10_3 = true
    L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L8_3(L9_3, L10_3)
    L7_3, L8_3, L9_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
    L10_3 = GetEntityForwardX
    L11_3 = A0_3
    L10_3 = L10_3(L11_3)
    L10_3 = L10_3 * A1_3
    L10_3 = L7_3 + L10_3
    L11_3 = GetEntityForwardY
    L12_3 = A0_3
    L11_3 = L11_3(L12_3)
    L11_3 = L11_3 * A2_3
    L11_3 = L8_3 + L11_3
    L12_3 = L9_3 + A3_3
    L13_3 = GetEntityRotation
    L14_3 = A0_3
    L15_3 = 2
    L13_3 = L13_3(L14_3, L15_3)
    L13_3 = L13_3.x
    L13_3 = L13_3 + A4_3
    L14_3 = GetEntityRotation
    L15_3 = A0_3
    L16_3 = 2
    L14_3 = L14_3(L15_3, L16_3)
    L14_3 = L14_3.y
    L14_3 = L14_3 + A5_3
    L15_3 = GetEntityRotation
    L16_3 = A0_3
    L17_3 = 2
    L15_3 = L15_3(L16_3, L17_3)
    L15_3 = L15_3.z
    L15_3 = L15_3 + A6_3
    L16_3 = vector3
    L17_3 = L10_3
    L18_3 = L11_3
    L19_3 = L12_3
    L16_3 = L16_3(L17_3, L18_3, L19_3)
    L17_3 = L13_3
    L18_3 = L14_3
    L19_3 = L15_3
    return L16_3, L17_3, L18_3, L19_3
  end
  getPositionAndRotation = L1_2
  L1_2 = typejob
  if 2 == L1_2 then
    L1_2 = currentStep
    if 1 == L1_2 then
      L1_2 = getPositionAndRotation
      L2_2 = L7_1
      L3_2 = -3.6
      L4_2 = -3.6
      L5_2 = 1.0
      L6_2 = -10.0
      L7_2 = 0.0
      L8_2 = 0.0
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      Rot3 = L4_2
      Rot2 = L3_2
      Rot1 = L2_2
      Pos = L1_2
    else
      L1_2 = currentStep
      if 2 == L1_2 then
        L1_2 = getPositionAndRotation
        L2_2 = L8_1
        L2_2 = L2_2[1]
        L3_2 = 1.0
        L4_2 = 1.0
        L5_2 = 34.0
        L6_2 = -100.0
        L7_2 = 0.0
        L8_2 = 0.0
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        Rot3 = L4_2
        Rot2 = L3_2
        Rot1 = L2_2
        Pos = L1_2
      else
        L1_2 = currentStep
        if 3 == L1_2 then
          L1_2 = getPositionAndRotation
          L2_2 = ProcessPROP
          L3_2 = -9.6
          L4_2 = -9.6
          L5_2 = 3.0
          L6_2 = -10.0
          L7_2 = 0.0
          L8_2 = 0.0
          L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
          Rot3 = L4_2
          Rot2 = L3_2
          Rot1 = L2_2
          Pos = L1_2
        else
          L1_2 = currentStep
          if 4 == L1_2 then
            L1_2 = getPositionAndRotation
            L2_2 = npcpay
            L3_2 = 9.6
            L4_2 = 9.6
            L5_2 = 3.0
            L6_2 = -10.0
            L7_2 = 0.0
            L8_2 = -180.0
            L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
            Rot3 = L4_2
            Rot2 = L3_2
            Rot1 = L2_2
            Pos = L1_2
          end
        end
      end
    end
  else
    L1_2 = currentStep
    if 1 == L1_2 then
      L1_2 = getPositionAndRotation
      L2_2 = L7_1
      L3_2 = -3.6
      L4_2 = -3.6
      L5_2 = 1.0
      L6_2 = -10.0
      L7_2 = 0.0
      L8_2 = 0.0
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      Rot3 = L4_2
      Rot2 = L3_2
      Rot1 = L2_2
      Pos = L1_2
    else
      L1_2 = currentStep
      if 2 == L1_2 then
        L1_2 = getPositionAndRotation
        L2_2 = L8_1
        L2_2 = L2_2[1]
        L3_2 = 1.0
        L4_2 = 1.0
        L5_2 = 34.0
        L6_2 = -100.0
        L7_2 = 0.0
        L8_2 = 0.0
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        Rot3 = L4_2
        Rot2 = L3_2
        Rot1 = L2_2
        Pos = L1_2
      else
        L1_2 = currentStep
        if 3 == L1_2 then
          L1_2 = getPositionAndRotation
          L2_2 = npcpay
          L3_2 = 9.6
          L4_2 = 9.6
          L5_2 = 3.0
          L6_2 = -10.0
          L7_2 = 0.0
          L8_2 = -180.0
          L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
          Rot3 = L4_2
          Rot2 = L3_2
          Rot1 = L2_2
          Pos = L1_2
        end
      end
    end
  end
  L1_2 = processCamera
  L2_2 = vehicle_cam
  L1_2(L2_2)
  L1_2 = RenderScriptCams
  L2_2 = 1
  L3_2 = 0
  L4_2 = 0
  L5_2 = 1
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  return L0_2
end
GetTutorialText = L28_1
function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetCamCoord
  L2_2 = A0_2
  L3_2 = Pos
  L1_2(L2_2, L3_2)
  L1_2 = SetCamRot
  L2_2 = A0_2
  L3_2 = Rot1
  L4_2 = Rot2
  L5_2 = Rot3
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    while true do
      L0_3 = SetFocusArea
      L1_3 = Pos
      L2_3 = Pos
      L0_3(L1_3, L2_3)
      L0_3 = typejob
      if 2 == L0_3 then
        L0_3 = currentStep
        if 1 == L0_3 then
          L0_3 = pairs
          L1_3 = L5_1
          L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
          for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
            L6_3 = ipairs
            L7_3 = L5_3
            L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
            for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
              L12_3 = L11_3.entity
              if L12_3 then
                L12_3 = SetEntityDrawOutline
                L13_3 = tonumber
                L14_3 = L11_3.entity
                L13_3 = L13_3(L14_3)
                L14_3 = true
                L12_3(L13_3, L14_3)
              end
            end
          end
        else
          L0_3 = currentStep
          if 2 == L0_3 then
            L0_3 = pairs
            L1_3 = L5_1
            L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
            for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
              L6_3 = ipairs
              L7_3 = L5_3
              L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
              for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
                L12_3 = L11_3.entity
                if L12_3 then
                  L12_3 = SetEntityDrawOutline
                  L13_3 = tonumber
                  L14_3 = L11_3.entity
                  L13_3 = L13_3(L14_3)
                  L14_3 = false
                  L12_3(L13_3, L14_3)
                end
              end
            end
            L0_3 = ipairs
            L1_3 = L8_1
            L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
            for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
              L6_3 = SetEntityDrawOutline
              L7_3 = L5_3
              L8_3 = true
              L6_3(L7_3, L8_3)
            end
          else
            L0_3 = currentStep
            if 3 == L0_3 then
              L0_3 = ipairs
              L1_3 = L8_1
              L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
              for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
                L6_3 = SetEntityDrawOutline
                L7_3 = L5_3
                L8_3 = false
                L6_3(L7_3, L8_3)
              end
              L0_3 = ProcessPROP
              if L0_3 then
                L0_3 = vector3
                L1_3 = 0.0
                L2_3 = -1.7
                L3_3 = 1.5
                L0_3 = L0_3(L1_3, L2_3, L3_3)
                L1_3 = GetOffsetFromEntityInWorldCoords
                L2_3 = ProcessPROP
                L3_3 = L0_3.x
                L4_3 = L0_3.y
                L5_3 = L0_3.z
                L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                coordProcess = L1_3
                L1_3 = DrawMarker
                L2_3 = 2
                L3_3 = coordProcess
                L4_3 = 0.0
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 180.0
                L9_3 = 0.0
                L10_3 = 0.5
                L11_3 = 0.5
                L12_3 = 0.5
                L13_3 = Configuration
                L13_3 = L13_3.Color_Marker
                L13_3 = L13_3[1]
                L14_3 = Configuration
                L14_3 = L14_3.Color_Marker
                L14_3 = L14_3[2]
                L15_3 = Configuration
                L15_3 = L15_3.Color_Marker
                L15_3 = L15_3[3]
                L16_3 = 100
                L17_3 = true
                L18_3 = true
                L19_3 = 2
                L20_3 = false
                L21_3 = false
                L22_3 = false
                L23_3 = false
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
              end
            else
              L0_3 = currentStep
              if 4 == L0_3 then
                L0_3 = npcpay
                if L0_3 then
                  L0_3 = GetEntityCoords
                  L1_3 = npcpay
                  L0_3 = L0_3(L1_3)
                  L1_3 = DrawMarker
                  L2_3 = 2
                  L3_3 = vec3
                  L4_3 = L0_3.x
                  L5_3 = L0_3.y
                  L6_3 = L0_3.z
                  L6_3 = L6_3 + 1.4
                  L3_3 = L3_3(L4_3, L5_3, L6_3)
                  L4_3 = 0.0
                  L5_3 = 0.0
                  L6_3 = 0.0
                  L7_3 = 0.0
                  L8_3 = 180.0
                  L9_3 = 0.0
                  L10_3 = 0.5
                  L11_3 = 0.5
                  L12_3 = 0.5
                  L13_3 = Configuration
                  L13_3 = L13_3.Color_Marker
                  L13_3 = L13_3[1]
                  L14_3 = Configuration
                  L14_3 = L14_3.Color_Marker
                  L14_3 = L14_3[2]
                  L15_3 = Configuration
                  L15_3 = L15_3.Color_Marker
                  L15_3 = L15_3[3]
                  L16_3 = 100
                  L17_3 = true
                  L18_3 = true
                  L19_3 = 2
                  L20_3 = false
                  L21_3 = false
                  L22_3 = false
                  L23_3 = false
                  L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                end
              else
                L0_3 = pairs
                L1_3 = L5_1
                L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
                for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
                  L6_3 = ipairs
                  L7_3 = L5_3
                  L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
                  for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
                    L12_3 = L11_3.entity
                    if L12_3 then
                      L12_3 = SetEntityDrawOutline
                      L13_3 = tonumber
                      L14_3 = L11_3.entity
                      L13_3 = L13_3(L14_3)
                      L14_3 = false
                      L12_3(L13_3, L14_3)
                    end
                  end
                end
                L0_3 = ipairs
                L1_3 = L8_1
                L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
                for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
                  L6_3 = SetEntityDrawOutline
                  L7_3 = L5_3
                  L8_3 = false
                  L6_3(L7_3, L8_3)
                end
                L0_3 = ClearFocus
                L0_3()
                break
              end
            end
          end
        end
      else
        L0_3 = currentStep
        if 2 == L0_3 then
          L0_3 = pairs
          L1_3 = L5_1
          L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
          for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
            L6_3 = ipairs
            L7_3 = L5_3
            L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
            for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
              L12_3 = L11_3.entity
              if L12_3 then
                L12_3 = SetEntityDrawOutline
                L13_3 = tonumber
                L14_3 = L11_3.entity
                L13_3 = L13_3(L14_3)
                L14_3 = false
                L12_3(L13_3, L14_3)
              end
            end
          end
          L0_3 = ipairs
          L1_3 = L8_1
          L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
          for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
            L6_3 = SetEntityDrawOutline
            L7_3 = L5_3
            L8_3 = true
            L6_3(L7_3, L8_3)
          end
        else
          L0_3 = currentStep
          if 3 == L0_3 then
            L0_3 = npcpay
            if L0_3 then
              L0_3 = GetEntityCoords
              L1_3 = npcpay
              L0_3 = L0_3(L1_3)
              L1_3 = DrawMarker
              L2_3 = 2
              L3_3 = vec3
              L4_3 = L0_3.x
              L5_3 = L0_3.y
              L6_3 = L0_3.z
              L6_3 = L6_3 + 1.4
              L3_3 = L3_3(L4_3, L5_3, L6_3)
              L4_3 = 0.0
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 180.0
              L9_3 = 0.0
              L10_3 = 0.5
              L11_3 = 0.5
              L12_3 = 0.5
              L13_3 = Configuration
              L13_3 = L13_3.Color_Marker
              L13_3 = L13_3[1]
              L14_3 = Configuration
              L14_3 = L14_3.Color_Marker
              L14_3 = L14_3[2]
              L15_3 = Configuration
              L15_3 = L15_3.Color_Marker
              L15_3 = L15_3[3]
              L16_3 = 100
              L17_3 = true
              L18_3 = true
              L19_3 = 2
              L20_3 = false
              L21_3 = false
              L22_3 = false
              L23_3 = false
              L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
            end
          else
            L0_3 = pairs
            L1_3 = L5_1
            L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
            for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
              L6_3 = ipairs
              L7_3 = L5_3
              L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
              for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
                L12_3 = L11_3.entity
                if L12_3 then
                  L12_3 = SetEntityDrawOutline
                  L13_3 = tonumber
                  L14_3 = L11_3.entity
                  L13_3 = L13_3(L14_3)
                  L14_3 = false
                  L12_3(L13_3, L14_3)
                end
              end
            end
            L0_3 = ipairs
            L1_3 = L8_1
            L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
            for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
              L6_3 = SetEntityDrawOutline
              L7_3 = L5_3
              L8_3 = false
              L6_3(L7_3, L8_3)
            end
            L0_3 = ClearFocus
            L0_3()
            break
          end
        end
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
processCamera = L28_1
L28_1 = RegisterNUICallback
L29_1 = "next_step"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = isLastStep
  if not L1_2 then
    L1_2 = SetVehicleDoorShut
    L2_2 = L7_1
    L3_2 = 5
    L4_2 = false
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = DoScreenFadeOut
    L2_2 = 100
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 80
    L1_2(L2_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "tutorial"
    L2_2.status = false
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 500
    L1_2(L2_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "tutorial"
    L3_2 = jobs
    L3_2 = L3_2.JobInfo
    L3_2 = L3_2.Name
    L2_2.jobname = L3_2
    L2_2.status = true
    L3_2 = Configuration
    L3_2 = L3_2.Color_UI
    L2_2.color = L3_2
    L3_2 = {}
    L4_2 = _U
    L5_2 = "JOBS_UI_13"
    L4_2 = L4_2(L5_2)
    L3_2[1] = L4_2
    L4_2 = _U
    L5_2 = "JOBS_UI_14"
    L4_2 = L4_2(L5_2)
    L3_2[2] = L4_2
    L2_2.translate = L3_2
    L1_2(L2_2)
    L1_2 = tonumber
    L2_2 = A0_2.step
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = 0
    end
    L2_2 = L6_1
    L3_2 = jobs
    L3_2 = L3_2.JobInfo
    L3_2 = L3_2.Tutorial
    L3_2 = #L3_2
    L2_2 = L2_2 == L3_2
    isLastStep = L2_2
    L2_2 = L6_1
    L2_2 = L2_2 + L1_2
    L6_1 = L2_2
    L2_2 = L6_1
    L3_2 = jobs
    L3_2 = L3_2.JobInfo
    L3_2 = L3_2.Tutorial
    L3_2 = #L3_2
    L2_2 = L2_2 == L3_2
    isLastStep = L2_2
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "tutorialupdate"
    L4_2 = L6_1
    L3_2.step = L4_2
    L4_2 = isLastStep
    L3_2.isLastStep = L4_2
    L4_2 = GetTutorialText
    L4_2 = L4_2()
    L3_2.tutorialText = L4_2
    L4_2 = Configuration
    L4_2 = L4_2.Color_UI
    L3_2.color = L4_2
    L4_2 = {}
    L5_2 = _U
    L6_2 = "JOBS_UI_13"
    L5_2 = L5_2(L6_2)
    L4_2[1] = L5_2
    L5_2 = _U
    L6_2 = "JOBS_UI_14"
    L5_2 = L5_2(L6_2)
    L4_2[2] = L5_2
    L5_2 = _U
    L6_2 = "JOBS_UI_18"
    L5_2 = L5_2(L6_2)
    L4_2[3] = L5_2
    L3_2.translate = L4_2
    L2_2(L3_2)
    L2_2 = DoScreenFadeIn
    L3_2 = 1000
    L2_2(L3_2)
  else
    L1_2 = DoScreenFadeOut
    L2_2 = 100
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 80
    L1_2(L2_2)
    L1_2 = DoScreenFadeIn
    L2_2 = 1000
    L1_2(L2_2)
    currentStep = nil
    L1_2 = pairs
    L2_2 = lobby
    L2_2 = L2_2.users
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2 in L1_2, L2_2, L3_2, L4_2 do
      L6_2 = TriggerServerEvent
      L7_2 = "Buty-InfiniteJobs:server:CloseDoors"
      L8_2 = L5_2
      L9_2 = L7_1
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNUICallback
L29_1 = "skip_tutorial"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "tutorial"
  L2_2.status = false
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = lobby
  L2_2 = L2_2.users
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = TriggerServerEvent
    L7_2 = "Buty-InfiniteJobs:server:CloseDoors"
    L8_2 = L5_2
    L9_2 = L7_1
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = DisplayRadar
  L2_2 = true
  L1_2(L2_2)
  tutorial_active = false
  L1_2 = ClearFocus
  L1_2()
  L1_2 = RenderScriptCams
  L2_2 = false
  L3_2 = false
  L4_2 = 0
  L5_2 = true
  L6_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DestroyCam
  L2_2 = vehicle_cam
  L3_2 = false
  L1_2(L2_2, L3_2)
  vehicle_cam = nil
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = 1
  L6_1 = L1_2
  isLastStep = false
  datas = nil
  currentStep = nil
  L1_2 = tutorial_cam_inactive
  L1_2()
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:vehicle"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L2_2 = 0
  L3_2 = NetToVeh
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L7_1 = L3_2
  L3_2 = spawnvehicle
  L4_2 = L7_1
  L3_2(L4_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  wait_taketool = false
  L4_2 = 0
  L5_2 = -0.4
  L6_2 = pairs
  L7_2 = lobby
  L7_2 = L7_2.users
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L4_2 = L4_2 + 1
    L12_2 = {}
    L13_2 = A1_2[L4_2]
    L13_2 = L13_2[1]
    L14_2 = A1_2[L4_2]
    L14_2 = L14_2[2]
    L15_2 = A1_2[L4_2]
    L15_2 = L15_2[3]
    L16_2 = A1_2[L4_2]
    L16_2 = L16_2[4]
    L17_2 = A1_2[L4_2]
    L17_2 = L17_2[5]
    L18_2 = A1_2[L4_2]
    L18_2 = L18_2[6]
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L12_2[5] = L17_2
    L12_2[6] = L18_2
    L13_2 = GetEntityCoords
    L14_2 = L7_1
    L13_2 = L13_2(L14_2)
    L14_2 = CreateObject
    L15_2 = GetHashKey
    L16_2 = jobs
    L16_2 = L16_2.JobConfig
    L16_2 = L16_2.Tool
    L16_2 = L16_2.prop
    L15_2 = L15_2(L16_2)
    L16_2 = L13_2
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    while true do
      L15_2 = DoesEntityExist
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if L15_2 then
        break
      end
      L15_2 = Wait
      L16_2 = 0
      L15_2(L16_2)
    end
    L15_2 = L5_1
    L15_2 = L15_2[L10_2]
    if nil == L15_2 then
      L15_2 = L5_1
      L16_2 = {}
      L15_2[L10_2] = L16_2
    end
    L15_2 = table
    L15_2 = L15_2.insert
    L16_2 = L5_1
    L16_2 = L16_2[L10_2]
    L17_2 = {}
    L18_2 = tostring
    L19_2 = L14_2
    L18_2 = L18_2(L19_2)
    L17_2.entity = L18_2
    L17_2.use = false
    L17_2.coord = L12_2
    L15_2(L16_2, L17_2)
    L15_2 = FreezeEntityPosition
    L16_2 = L14_2
    L17_2 = true
    L15_2(L16_2, L17_2)
    L15_2 = AttachEntityToEntity
    L16_2 = L14_2
    L17_2 = L7_1
    L18_2 = 0
    L19_2 = L12_2[1]
    L20_2 = L12_2[2]
    L21_2 = L12_2[3]
    L22_2 = L12_2[4]
    L23_2 = L12_2[5]
    L24_2 = L12_2[6]
    L25_2 = true
    L26_2 = true
    L27_2 = false
    L28_2 = true
    L29_2 = 1
    L30_2 = true
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  end
  L6_2 = Citizen
  L6_2 = L6_2.CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
    L0_3 = GetResourceState
    L1_3 = "qb-target"
    L0_3 = L0_3(L1_3)
    L0_3 = "started" == L0_3
    L1_3 = Configuration
    L1_3 = L1_3.UseTarget
    if L1_3 and not L0_3 then
      L1_3 = createtargetvehicle
      L1_3()
    else
      while true do
        L1_3 = cancel
        if L1_3 then
          return
        else
          L1_3 = GetEntityBoneIndexByName
          L2_3 = L7_1
          L3_3 = "platelight"
          L1_3 = L1_3(L2_3, L3_3)
          L2_3 = GetWorldPositionOfEntityBone
          L3_3 = L7_1
          L4_3 = L1_3
          L2_3 = L2_3(L3_3, L4_3)
          L3_3 = table
          L3_3 = L3_3.unpack
          L4_3 = L2_3
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          ztool = L5_3
          ytool = L4_3
          xtool = L3_3
          L3_3 = jobs
          L3_3 = L3_3.JobConfig
          L3_3 = L3_3.Tool
          L3_3 = L3_3.animation_take
          if nil ~= L3_3 then
            L3_3 = taketool
            if L3_3 then
              L3_3 = IsEntityPlayingAnim
              L4_3 = L3_2
              L5_3 = jobs
              L5_3 = L5_3.JobConfig
              L5_3 = L5_3.Tool
              L5_3 = L5_3.animation_take
              L5_3 = L5_3[1]
              L6_3 = jobs
              L6_3 = L6_3.JobConfig
              L6_3 = L6_3.Tool
              L6_3 = L6_3.animation_take
              L6_3 = L6_3[2]
              L7_3 = 3
              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
              if not L3_3 then
                L3_3 = L23_1
                if not L3_3 then
                  L3_3 = L11_1
                  if not L3_3 then
                    L3_3 = wait_to_task2
                    if not L3_3 then
                      L3_3 = jobs
                      L3_3 = L3_3.JobConfig
                      L3_3 = L3_3.Tool
                      L3_3 = L3_3.animation_take
                      if nil ~= L3_3 then
                        L3_3 = AnimationWalk
                        L4_3 = jobs
                        L4_3 = L4_3.JobConfig
                        L4_3 = L4_3.Tool
                        L4_3 = L4_3.animation_take
                        L4_3 = L4_3[1]
                        L5_3 = jobs
                        L5_3 = L5_3.JobConfig
                        L5_3 = L5_3.Tool
                        L5_3 = L5_3.animation_take
                        L5_3 = L5_3[2]
                        L6_3 = L3_2
                        L3_3(L4_3, L5_3, L6_3)
                      end
                    end
                  end
                end
              end
            end
          end
          L3_3 = L9_1
          if not L3_3 then
            L3_3 = L11_1
            if L3_3 then
              L3_3 = wait_to_task2
              if not L3_3 then
                L3_3 = IsEntityPlayingAnim
                L4_3 = L3_2
                L5_3 = lobby
                L5_3 = L5_3.jobconfig
                L5_3 = L5_3.CollectedProp
                L5_3 = L5_3.animAttachHands
                L5_3 = L5_3[1]
                L6_3 = lobby
                L6_3 = L6_3.jobconfig
                L6_3 = L6_3.CollectedProp
                L6_3 = L6_3.animAttachHands
                L6_3 = L6_3[2]
                L7_3 = 3
                L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                if not L3_3 then
                  L3_3 = AnimationWalk
                  L4_3 = lobby
                  L4_3 = L4_3.jobconfig
                  L4_3 = L4_3.CollectedProp
                  L4_3 = L4_3.animAttachHands
                  L4_3 = L4_3[1]
                  L5_3 = lobby
                  L5_3 = L5_3.jobconfig
                  L5_3 = L5_3.CollectedProp
                  L5_3 = L5_3.animAttachHands
                  L5_3 = L5_3[2]
                  L6_3 = L3_2
                  L3_3(L4_3, L5_3, L6_3)
                end
              end
            end
          end
          L3_3 = GetEntityCoords
          L4_3 = L3_2
          L3_3 = L3_3(L4_3)
          L4_3 = vec3
          L5_3 = xtool
          L6_3 = ytool
          L7_3 = ztool
          L4_3 = L4_3(L5_3, L6_3, L7_3)
          L3_3 = L3_3 - L4_3
          L3_3 = #L3_3
          disttool = L3_3
          L3_3 = disttool
          L4_3 = 1.5
          if L3_3 < L4_3 then
            sleep = 1
            L3_3 = wait_taketool
            if not L3_3 then
              L3_3 = L11_1
              if L3_3 then
                L3_3 = wait_takeobj
                if not L3_3 then
                  L3_3 = hintToDisplay
                  L4_3 = _U
                  L5_3 = "JOBS_DRAWTEXT_PLACE_OBJECT"
                  L4_3 = L4_3(L5_3)
                  L5_3 = vec3
                  L6_3 = xtool
                  L7_3 = ytool
                  L8_3 = ztool
                  L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L5_3(L6_3, L7_3, L8_3)
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                  L3_3 = IsControlJustReleased
                  L4_3 = 0
                  L5_3 = 38
                  L3_3 = L3_3(L4_3, L5_3)
                  if L3_3 then
                    L3_3 = TriggerServerEvent
                    L4_3 = "Buty-InfiniteJobs:server:tryPutBox"
                    L5_3 = lobby
                    L3_3(L4_3, L5_3)
                  end
                end
              else
                L3_3 = taketool
                if not L3_3 then
                  L3_3 = L15_1
                  if not L3_3 then
                    L3_3 = L17_1
                    if L3_3 then
                      L3_3 = L13_1
                      if 0 ~= L3_3 then
                        L3_3 = _U
                        L4_3 = "JOBS_DRAWTEXT_TAKE_TOOL_AND_BOX"
                        L3_3 = L3_3(L4_3)
                        if L3_3 then
                          goto lbl_195
                        end
                      end
                    end
                    L3_3 = _U
                    L4_3 = "JOBS_DRAWTEXT_TAKE_TOOL"
                    L3_3 = L3_3(L4_3)
                    ::lbl_195::
                    L4_3 = hintToDisplay
                    L5_3 = L3_3
                    L6_3 = vec3
                    L7_3 = xtool
                    L8_3 = ytool
                    L9_3 = ztool
                    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L6_3(L7_3, L8_3, L9_3)
                    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                    L4_3 = IsControlJustReleased
                    L5_3 = 0
                    L6_3 = 38
                    L4_3 = L4_3(L5_3, L6_3)
                    if L4_3 then
                      wait_taketool = true
                      L4_3 = pairs
                      L5_3 = lobby
                      L5_3 = L5_3.users
                      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
                      for L8_3 in L4_3, L5_3, L6_3, L7_3 do
                        L9_3 = TriggerServerEvent
                        L10_3 = "Buty-InfiniteJobs:server:update"
                        L11_3 = L8_3
                        L12_3 = "wait_taketool"
                        L13_3 = true
                        L14_3 = lobby
                        L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
                      end
                      L4_3 = xtool
                      L5_3 = GetEntityForwardX
                      L6_3 = L7_1
                      L5_3 = L5_3(L6_3)
                      L5_3 = L5_3 * -1.0
                      L4_3 = L4_3 + L5_3
                      L5_3 = ytool
                      L6_3 = GetEntityForwardY
                      L7_3 = L7_1
                      L6_3 = L6_3(L7_3)
                      L6_3 = L6_3 * -1.0
                      L5_3 = L5_3 + L6_3
                      L6_3 = ztool
                      L6_3 = L6_3 - 0.5
                      L7_3 = TurnPedToFaceCoordAndWait
                      L8_3 = L3_2
                      L9_3 = vector3
                      L10_3 = xtool
                      L11_3 = ytool
                      L12_3 = ztool
                      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L9_3(L10_3, L11_3, L12_3)
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                      L7_3 = FreezeEntityPosition
                      L8_3 = L3_2
                      L9_3 = true
                      L7_3(L8_3, L9_3)
                      L7_3 = Animation
                      L8_3 = "amb@prop_human_bum_bin@idle_b"
                      L9_3 = "idle_d"
                      L10_3 = L3_2
                      L7_3(L8_3, L9_3, L10_3)
                      L7_3 = pairs
                      L8_3 = lobby
                      L8_3 = L8_3.users
                      L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
                      for L11_3 in L7_3, L8_3, L9_3, L10_3 do
                        L12_3 = TriggerServerEvent
                        L13_3 = "Buty-InfiniteJobs:server:OpenDoors"
                        L14_3 = L11_3
                        L15_3 = L7_1
                        L12_3(L13_3, L14_3, L15_3)
                      end
                      L7_3 = Wait
                      L8_3 = 2000
                      L7_3(L8_3)
                      L7_3 = TriggerServerEvent
                      L8_3 = "Buty-InfiniteJobs:server:DeleteTool"
                      L9_3 = GetPlayerServerId
                      L10_3 = PlayerId
                      L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L10_3()
                      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                      L10_3 = lobby
                      L7_3(L8_3, L9_3, L10_3)
                      L7_3 = true
                      L9_1 = L7_3
                      L7_3 = CreateObject
                      L8_3 = GetHashKey
                      L9_3 = jobs
                      L9_3 = L9_3.JobConfig
                      L9_3 = L9_3.Tool
                      L9_3 = L9_3.prop
                      L8_3 = L8_3(L9_3)
                      L9_3 = getentitityc
                      L10_3 = true
                      L11_3 = false
                      L12_3 = true
                      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                      tool2 = L7_3
                      L7_3 = jobs
                      L7_3 = L7_3.JobConfig
                      L7_3 = L7_3.Tool
                      L7_3 = L7_3.objcoord
                      L8_3 = AttachEntityToEntity
                      L9_3 = tool2
                      L10_3 = L3_2
                      L11_3 = GetPedBoneIndex
                      L12_3 = L3_2
                      L13_3 = L7_3[1]
                      L11_3 = L11_3(L12_3, L13_3)
                      L12_3 = L7_3[2]
                      L13_3 = L7_3[3]
                      L14_3 = L7_3[4]
                      L15_3 = L7_3[5]
                      L16_3 = L7_3[6]
                      L17_3 = L7_3[7]
                      L18_3 = true
                      L19_3 = true
                      L20_3 = false
                      L21_3 = true
                      L22_3 = 1
                      L23_3 = true
                      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                      taketool = true
                      L8_3 = lobby
                      L8_3 = L8_3.users
                      L9_3 = GetPlayerServerId
                      L10_3 = PlayerId
                      L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L10_3()
                      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                      L8_3 = L8_3[L9_3]
                      L8_3.istool = true
                      L8_3 = ClearPedTasks
                      L9_3 = L3_2
                      L8_3(L9_3)
                      L8_3 = FreezeEntityPosition
                      L9_3 = L3_2
                      L10_3 = false
                      L8_3(L9_3, L10_3)
                      L8_3 = jobs
                      L8_3 = L8_3.JobConfig
                      L8_3 = L8_3.Tool
                      L8_3 = L8_3.animation_take
                      if nil ~= L8_3 then
                        L8_3 = AnimationWalk
                        L9_3 = jobs
                        L9_3 = L9_3.JobConfig
                        L9_3 = L9_3.Tool
                        L9_3 = L9_3.animation_take
                        L9_3 = L9_3[1]
                        L10_3 = jobs
                        L10_3 = L10_3.JobConfig
                        L10_3 = L10_3.Tool
                        L10_3 = L10_3.animation_take
                        L10_3 = L10_3[2]
                        L11_3 = L3_2
                        L8_3(L9_3, L10_3, L11_3)
                      end
                      L8_3 = pairs
                      L9_3 = lobby
                      L9_3 = L9_3.users
                      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
                      for L12_3 in L8_3, L9_3, L10_3, L11_3 do
                        L13_3 = TriggerServerEvent
                        L14_3 = "Buty-InfiniteJobs:server:CloseDoors"
                        L15_3 = L12_3
                        L16_3 = L7_1
                        L13_3(L14_3, L15_3, L16_3)
                      end
                      L8_3 = Configuration
                      L8_3 = L8_3.EquipToolAutomatically
                      if not L8_3 then
                        L8_3 = typejob
                        if 1 ~= L8_3 then
                          L8_3 = tool_take
                          L8_3()
                        end
                      end
                      wait_taketool = false
                      L8_3 = pairs
                      L9_3 = lobby
                      L9_3 = L9_3.users
                      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
                      for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
                        L14_3 = TriggerServerEvent
                        L15_3 = "Buty-InfiniteJobs:server:update"
                        L16_3 = L12_3
                        L17_3 = "wait_taketool"
                        L18_3 = false
                        L19_3 = lobby
                        L14_3(L15_3, L16_3, L17_3, L18_3, L19_3)
                      end
                    else
                      L4_3 = IsControlJustReleased
                      L5_3 = 0
                      L6_3 = Configuration
                      L6_3 = L6_3.ControlKey_TakeObj
                      L4_3 = L4_3(L5_3, L6_3)
                      if L4_3 then
                        L4_3 = L17_1
                        if L4_3 then
                          L4_3 = L15_1
                          if not L4_3 then
                            L4_3 = L13_1
                            if 0 ~= L4_3 then
                              L4_3 = wait_taketool
                              if not L4_3 then
                                L4_3 = TriggerServerEvent
                                L5_3 = "Buty-InfiniteJobs:server:tryTakeBox"
                                L6_3 = lobby
                                L4_3(L5_3, L6_3)
                              end
                            end
                          end
                        end
                      end
                    end
                end
                else
                  L3_3 = taketool
                  if L3_3 then
                    L3_3 = L15_1
                    if not L3_3 then
                      L3_3 = L17_1
                      if L3_3 then
                        L3_3 = L13_1
                        if 0 ~= L3_3 then
                          L3_3 = _U
                          L4_3 = "JOBS_DRAWTEXT_SAVE_TOOL_AND_BOX"
                          L3_3 = L3_3(L4_3)
                          if L3_3 then
                            goto lbl_442
                          end
                        end
                      end
                      L3_3 = _U
                      L4_3 = "JOBS_DRAWTEXT_SAVE_TOOL"
                      L3_3 = L3_3(L4_3)
                      ::lbl_442::
                      L4_3 = hintToDisplay
                      L5_3 = L3_3
                      L6_3 = vec3
                      L7_3 = xtool
                      L8_3 = ytool
                      L9_3 = ztool
                      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L6_3(L7_3, L8_3, L9_3)
                      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                      L4_3 = IsControlJustReleased
                      L5_3 = 0
                      L6_3 = 38
                      L4_3 = L4_3(L5_3, L6_3)
                      if L4_3 then
                        L4_3 = L9_1
                        if not L4_3 then
                          L4_3 = Configuration
                          L4_3 = L4_3.EquipToolAutomatically
                          if L4_3 then
                            L4_3 = Animationprop
                            L5_3 = "amb@world_human_paparazzi@male@enter"
                            L6_3 = "enter"
                            L7_3 = L3_2
                            L8_3 = nil
                            L4_3(L5_3, L6_3, L7_3, L8_3)
                            L4_3 = Wait
                            L5_3 = 500
                            L4_3(L5_3)
                            L4_3 = ClearPedTasks
                            L5_3 = L3_2
                            L4_3(L5_3)
                            L4_3 = Wait
                            L5_3 = 50
                            L4_3(L5_3)
                            L4_3 = AttachEntityToEntity
                            L5_3 = tool2
                            L6_3 = L3_2
                            L7_3 = GetPedBoneIndex
                            L8_3 = L3_2
                            L9_3 = 28422
                            L7_3 = L7_3(L8_3, L9_3)
                            L8_3 = 0.09
                            L9_3 = 0.01
                            L10_3 = 0.0
                            L11_3 = 300.0
                            L12_3 = 720.0
                            L13_3 = 330.0
                            L14_3 = true
                            L15_3 = true
                            L16_3 = false
                            L17_3 = true
                            L18_3 = 1
                            L19_3 = true
                            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                            L4_3 = Configuration
                            L4_3 = L4_3.toolbelt
                            if L4_3 then
                              L4_3 = SetEntityVisible
                              L5_3 = tool2
                              L6_3 = true
                              L7_3 = false
                              L4_3(L5_3, L6_3, L7_3)
                            end
                            L4_3 = true
                            L9_1 = L4_3
                          end
                        end
                        L4_3 = Wait
                        L5_3 = 200
                        L4_3(L5_3)
                        L4_3 = L9_1
                        if L4_3 then
                          wait_taketool = true
                          L4_3 = pairs
                          L5_3 = lobby
                          L5_3 = L5_3.users
                          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
                          for L8_3 in L4_3, L5_3, L6_3, L7_3 do
                            L9_3 = TriggerServerEvent
                            L10_3 = "Buty-InfiniteJobs:server:update"
                            L11_3 = L8_3
                            L12_3 = "wait_taketool"
                            L13_3 = true
                            L14_3 = lobby
                            L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
                          end
                          L4_3 = TurnPedToFaceCoordAndWait
                          L5_3 = L3_2
                          L6_3 = vector3
                          L7_3 = xtool
                          L8_3 = ytool
                          L9_3 = ztool
                          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L6_3(L7_3, L8_3, L9_3)
                          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                          L4_3 = TaskPlayAnim
                          L5_3 = L3_2
                          L6_3 = "amb@prop_human_bum_bin@idle_b"
                          L7_3 = "idle_d"
                          L8_3 = 4.0
                          L9_3 = 4.0
                          L10_3 = -1
                          L11_3 = 50
                          L12_3 = 0
                          L13_3 = false
                          L14_3 = false
                          L15_3 = false
                          L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                          L4_3 = pairs
                          L5_3 = lobby
                          L5_3 = L5_3.users
                          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
                          for L8_3 in L4_3, L5_3, L6_3, L7_3 do
                            L9_3 = TriggerServerEvent
                            L10_3 = "Buty-InfiniteJobs:server:OpenDoors"
                            L11_3 = L8_3
                            L12_3 = L7_1
                            L9_3(L10_3, L11_3, L12_3)
                          end
                          L4_3 = Wait
                          L5_3 = 1000
                          L4_3(L5_3)
                          L4_3 = DeleteEntity
                          L5_3 = tool2
                          L4_3(L5_3)
                          L4_3 = TriggerServerEvent
                          L5_3 = "Buty-InfiniteJobs:server:RestartTool"
                          L6_3 = GetPlayerServerId
                          L7_3 = PlayerId
                          L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L7_3()
                          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                          L7_3 = lobby
                          L4_3(L5_3, L6_3, L7_3)
                          L4_3 = ClearPedTasks
                          L5_3 = L3_2
                          L4_3(L5_3)
                          L4_3 = pairs
                          L5_3 = lobby
                          L5_3 = L5_3.users
                          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
                          for L8_3 in L4_3, L5_3, L6_3, L7_3 do
                            L9_3 = TriggerServerEvent
                            L10_3 = "Buty-InfiniteJobs:server:CloseDoors"
                            L11_3 = L8_3
                            L12_3 = L7_1
                            L9_3(L10_3, L11_3, L12_3)
                          end
                          L4_3 = FreezeEntityPosition
                          L5_3 = L3_2
                          L6_3 = false
                          L4_3(L5_3, L6_3)
                          wait_taketool = false
                          taketool = false
                          L4_3 = lobby
                          L4_3 = L4_3.users
                          L5_3 = GetPlayerServerId
                          L6_3 = PlayerId
                          L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L6_3()
                          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
                          L4_3 = L4_3[L5_3]
                          L4_3.istool = false
                          L4_3 = pairs
                          L5_3 = lobby
                          L5_3 = L5_3.users
                          L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
                          for L8_3 in L4_3, L5_3, L6_3, L7_3 do
                            L9_3 = TriggerServerEvent
                            L10_3 = "Buty-InfiniteJobs:server:update"
                            L11_3 = L8_3
                            L12_3 = "wait_taketool"
                            L13_3 = false
                            L14_3 = lobby
                            L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
                          end
                          L4_3 = false
                          L9_1 = L4_3
                        else
                          L4_3 = Configuration
                          L4_3 = L4_3.EquipToolAutomatically
                          if not L4_3 then
                            L4_3 = Notify
                            L5_3 = "success"
                            L6_3 = _U
                            L7_3 = "JOBS_DRAWTEXT_TOOL_NO_BELT"
                            L6_3 = L6_3(L7_3)
                            L7_3 = time
                            L8_3 = "client"
                            L4_3(L5_3, L6_3, L7_3, L8_3)
                          end
                        end
                      else
                        L4_3 = IsControlJustReleased
                        L5_3 = 0
                        L6_3 = Configuration
                        L6_3 = L6_3.ControlKey_TakeObj
                        L4_3 = L4_3(L5_3, L6_3)
                        if L4_3 then
                          L4_3 = L17_1
                          if L4_3 then
                            L4_3 = L15_1
                            if not L4_3 then
                              L4_3 = L13_1
                              if 0 ~= L4_3 then
                                L4_3 = wait_taketool
                                if not L4_3 then
                                  L4_3 = TriggerServerEvent
                                  L5_3 = "Buty-InfiniteJobs:server:tryTakeBox"
                                  L6_3 = lobby
                                  L4_3(L5_3, L6_3)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        L1_3 = Citizen
        L1_3 = L1_3.Wait
        L2_3 = sleep
        L1_3(L2_3)
      end
    end
  end
  L6_2(L7_2)
end
L28_1(L29_1, L30_1)
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 1
  L24_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityBoneIndexByName
  L2_2 = L7_1
  L3_2 = "platelight"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil
  L3_2 = nil
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L0_3 = taketool
    if not L0_3 then
      L0_3 = L15_1
      if not L0_3 then
        L0_3 = wait_taketool
        if not L0_3 then
          L0_3 = GetWorldPositionOfEntityBone
          L1_3 = L7_1
          L2_3 = L1_2
          L0_3 = L0_3(L1_3, L2_3)
          wait_taketool = true
          L1_3 = pairs
          L2_3 = lobby
          L2_3 = L2_3.users
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3 in L1_3, L2_3, L3_3, L4_3 do
            L6_3 = TriggerServerEvent
            L7_3 = "Buty-InfiniteJobs:server:update"
            L8_3 = L5_3
            L9_3 = "wait_taketool"
            L10_3 = true
            L11_3 = lobby
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          end
          L1_3 = TurnPedToFaceCoordAndWait
          L2_3 = L0_2
          L3_3 = vector3
          L4_3 = L0_3.x
          L5_3 = L0_3.y
          L6_3 = L0_3.z
          L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L3_3(L4_3, L5_3, L6_3)
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          L1_3 = FreezeEntityPosition
          L2_3 = L0_2
          L3_3 = true
          L1_3(L2_3, L3_3)
          L1_3 = Animation
          L2_3 = "amb@prop_human_bum_bin@idle_b"
          L3_3 = "idle_d"
          L4_3 = L0_2
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = pairs
          L2_3 = lobby
          L2_3 = L2_3.users
          L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
          for L5_3 in L1_3, L2_3, L3_3, L4_3 do
            L6_3 = TriggerServerEvent
            L7_3 = "Buty-InfiniteJobs:server:OpenDoors"
            L8_3 = L5_3
            L9_3 = L7_1
            L6_3(L7_3, L8_3, L9_3)
          end
          L1_3 = Wait
          L2_3 = 2000
          L1_3(L2_3)
          L1_3 = TriggerServerEvent
          L2_3 = "Buty-InfiniteJobs:server:DeleteTool"
          L3_3 = GetPlayerServerId
          L4_3 = PlayerId
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L4_3()
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          L4_3 = lobby
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = true
          L9_1 = L1_3
          L1_3 = CreateObject
          L2_3 = GetHashKey
          L3_3 = jobs
          L3_3 = L3_3.JobConfig
          L3_3 = L3_3.Tool
          L3_3 = L3_3.prop
          L2_3 = L2_3(L3_3)
          L3_3 = getentitityc
          L4_3 = true
          L5_3 = false
          L6_3 = true
          L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
          tool2 = L1_3
          L1_3 = jobs
          L1_3 = L1_3.JobConfig
          L1_3 = L1_3.Tool
          L1_3 = L1_3.objcoord
          L2_3 = AttachEntityToEntity
          L3_3 = tool2
          L4_3 = L0_2
          L5_3 = GetPedBoneIndex
          L6_3 = L0_2
          L7_3 = L1_3[1]
          L5_3 = L5_3(L6_3, L7_3)
          L6_3 = L1_3[2]
          L7_3 = L1_3[3]
          L8_3 = L1_3[4]
          L9_3 = L1_3[5]
          L10_3 = L1_3[6]
          L11_3 = L1_3[7]
          L12_3 = true
          L13_3 = true
          L14_3 = false
          L15_3 = true
          L16_3 = 1
          L17_3 = true
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          taketool = true
          L2_3 = lobby
          L2_3 = L2_3.users
          L3_3 = GetPlayerServerId
          L4_3 = PlayerId
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L4_3()
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          L2_3 = L2_3[L3_3]
          L2_3.istool = true
          L2_3 = ClearPedTasks
          L3_3 = L0_2
          L2_3(L3_3)
          L2_3 = FreezeEntityPosition
          L3_3 = L0_2
          L4_3 = false
          L2_3(L3_3, L4_3)
          L2_3 = jobs
          L2_3 = L2_3.JobConfig
          L2_3 = L2_3.Tool
          L2_3 = L2_3.animation_take
          if nil ~= L2_3 then
            L2_3 = AnimationWalk
            L3_3 = jobs
            L3_3 = L3_3.JobConfig
            L3_3 = L3_3.Tool
            L3_3 = L3_3.animation_take
            L3_3 = L3_3[1]
            L4_3 = jobs
            L4_3 = L4_3.JobConfig
            L4_3 = L4_3.Tool
            L4_3 = L4_3.animation_take
            L4_3 = L4_3[2]
            L5_3 = L0_2
            L2_3(L3_3, L4_3, L5_3)
          end
          L2_3 = pairs
          L3_3 = lobby
          L3_3 = L3_3.users
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3 in L2_3, L3_3, L4_3, L5_3 do
            L7_3 = TriggerServerEvent
            L8_3 = "Buty-InfiniteJobs:server:CloseDoors"
            L9_3 = L6_3
            L10_3 = L7_1
            L7_3(L8_3, L9_3, L10_3)
          end
          L2_3 = Configuration
          L2_3 = L2_3.EquipToolAutomatically
          if not L2_3 then
            L2_3 = typejob
            if 1 ~= L2_3 then
              L2_3 = tool_take
              L2_3()
            end
          end
          wait_taketool = false
          L2_3 = pairs
          L3_3 = lobby
          L3_3 = L3_3.users
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = TriggerServerEvent
            L9_3 = "Buty-InfiniteJobs:server:update"
            L10_3 = L6_3
            L11_3 = "wait_taketool"
            L12_3 = false
            L13_3 = lobby
            L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
          end
        end
    end
    else
      L0_3 = taketool
      if L0_3 then
        L0_3 = L15_1
        if not L0_3 then
          L0_3 = wait_taketool
          if not L0_3 then
            L0_3 = GetWorldPositionOfEntityBone
            L1_3 = L7_1
            L2_3 = L1_2
            L0_3 = L0_3(L1_3, L2_3)
            L1_3 = L9_1
            if not L1_3 then
              L1_3 = Configuration
              L1_3 = L1_3.EquipToolAutomatically
              if L1_3 then
                L1_3 = Animationprop
                L2_3 = "amb@world_human_paparazzi@male@enter"
                L3_3 = "enter"
                L4_3 = L0_2
                L5_3 = nil
                L1_3(L2_3, L3_3, L4_3, L5_3)
                L1_3 = Wait
                L2_3 = 500
                L1_3(L2_3)
                L1_3 = ClearPedTasks
                L2_3 = L0_2
                L1_3(L2_3)
                L1_3 = Wait
                L2_3 = 50
                L1_3(L2_3)
                L1_3 = AttachEntityToEntity
                L2_3 = tool2
                L3_3 = L0_2
                L4_3 = GetPedBoneIndex
                L5_3 = L0_2
                L6_3 = 28422
                L4_3 = L4_3(L5_3, L6_3)
                L5_3 = 0.09
                L6_3 = 0.01
                L7_3 = 0.0
                L8_3 = 300.0
                L9_3 = 720.0
                L10_3 = 330.0
                L11_3 = true
                L12_3 = true
                L13_3 = false
                L14_3 = true
                L15_3 = 1
                L16_3 = true
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                L1_3 = Configuration
                L1_3 = L1_3.toolbelt
                if L1_3 then
                  L1_3 = SetEntityVisible
                  L2_3 = tool2
                  L3_3 = true
                  L4_3 = false
                  L1_3(L2_3, L3_3, L4_3)
                end
                L1_3 = true
                L9_1 = L1_3
              end
            end
            L1_3 = Wait
            L2_3 = 200
            L1_3(L2_3)
            L1_3 = L9_1
            if L1_3 then
              wait_taketool = true
              L1_3 = pairs
              L2_3 = lobby
              L2_3 = L2_3.users
              L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
              for L5_3 in L1_3, L2_3, L3_3, L4_3 do
                L6_3 = TriggerServerEvent
                L7_3 = "Buty-InfiniteJobs:server:update"
                L8_3 = L5_3
                L9_3 = "wait_taketool"
                L10_3 = true
                L11_3 = lobby
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
              end
              L1_3 = TurnPedToFaceCoordAndWait
              L2_3 = L0_2
              L3_3 = vector3
              L4_3 = L0_3.x
              L5_3 = L0_3.y
              L6_3 = L0_3.z
              L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L3_3(L4_3, L5_3, L6_3)
              L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L1_3 = TaskPlayAnim
              L2_3 = L0_2
              L3_3 = "amb@prop_human_bum_bin@idle_b"
              L4_3 = "idle_d"
              L5_3 = 4.0
              L6_3 = 4.0
              L7_3 = -1
              L8_3 = 50
              L9_3 = 0
              L10_3 = false
              L11_3 = false
              L12_3 = false
              L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
              L1_3 = pairs
              L2_3 = lobby
              L2_3 = L2_3.users
              L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
              for L5_3 in L1_3, L2_3, L3_3, L4_3 do
                L6_3 = TriggerServerEvent
                L7_3 = "Buty-InfiniteJobs:server:OpenDoors"
                L8_3 = L5_3
                L9_3 = L7_1
                L6_3(L7_3, L8_3, L9_3)
              end
              L1_3 = Wait
              L2_3 = 1000
              L1_3(L2_3)
              L1_3 = DeleteEntity
              L2_3 = tool2
              L1_3(L2_3)
              L1_3 = TriggerServerEvent
              L2_3 = "Buty-InfiniteJobs:server:RestartTool"
              L3_3 = GetPlayerServerId
              L4_3 = PlayerId
              L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L4_3()
              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L4_3 = lobby
              L1_3(L2_3, L3_3, L4_3)
              L1_3 = ClearPedTasks
              L2_3 = L0_2
              L1_3(L2_3)
              L1_3 = pairs
              L2_3 = lobby
              L2_3 = L2_3.users
              L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
              for L5_3 in L1_3, L2_3, L3_3, L4_3 do
                L6_3 = TriggerServerEvent
                L7_3 = "Buty-InfiniteJobs:server:CloseDoors"
                L8_3 = L5_3
                L9_3 = L7_1
                L6_3(L7_3, L8_3, L9_3)
              end
              L1_3 = FreezeEntityPosition
              L2_3 = L0_2
              L3_3 = false
              L1_3(L2_3, L3_3)
              wait_taketool = false
              taketool = false
              L1_3 = lobby
              L1_3 = L1_3.users
              L2_3 = GetPlayerServerId
              L3_3 = PlayerId
              L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L3_3()
              L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              L1_3 = L1_3[L2_3]
              L1_3.istool = false
              L1_3 = pairs
              L2_3 = lobby
              L2_3 = L2_3.users
              L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
              for L5_3 in L1_3, L2_3, L3_3, L4_3 do
                L6_3 = TriggerServerEvent
                L7_3 = "Buty-InfiniteJobs:server:update"
                L8_3 = L5_3
                L9_3 = "wait_taketool"
                L10_3 = false
                L11_3 = lobby
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
              end
              L1_3 = false
              L9_1 = L1_3
            else
              L1_3 = Configuration
              L1_3 = L1_3.EquipToolAutomatically
              if not L1_3 then
                L1_3 = Notify
                L2_3 = "success"
                L3_3 = _U
                L4_3 = "JOBS_DRAWTEXT_TOOL_BELT"
                L3_3 = L3_3(L4_3)
                L4_3 = time
                L5_3 = "client"
                L1_3(L2_3, L3_3, L4_3, L5_3)
              end
            end
          end
        end
      end
    end
  end
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = wait_taketool
    if not L0_3 then
      L0_3 = L15_1
      if not L0_3 then
        L0_3 = TriggerServerEvent
        L1_3 = "Buty-InfiniteJobs:server:tryTakeBox"
        L2_3 = lobby
        L0_3(L1_3, L2_3)
      end
    end
  end
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = wait_takeobj
    if not L0_3 then
      L0_3 = lobby
      L0_3 = L0_3.total_task
      if 0 ~= L0_3 then
        L0_3 = TriggerServerEvent
        L1_3 = "Buty-InfiniteJobs:server:tryPutBox"
        L2_3 = lobby
        L0_3(L1_3, L2_3)
      end
    end
  end
  L7_2 = Citizen
  L7_2 = L7_2.CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = jobs
      L0_3 = L0_3.JobConfig
      L0_3 = L0_3.Tool
      L0_3 = L0_3.animation_take
      if nil ~= L0_3 then
        L0_3 = taketool
        if L0_3 then
          L0_3 = IsEntityPlayingAnim
          L1_3 = L0_2
          L2_3 = jobs
          L2_3 = L2_3.JobConfig
          L2_3 = L2_3.Tool
          L2_3 = L2_3.animation_take
          L2_3 = L2_3[1]
          L3_3 = jobs
          L3_3 = L3_3.JobConfig
          L3_3 = L3_3.Tool
          L3_3 = L3_3.animation_take
          L3_3 = L3_3[2]
          L4_3 = 3
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          if not L0_3 then
            L0_3 = L23_1
            if not L0_3 then
              L0_3 = L11_1
              if not L0_3 then
                L0_3 = wait_to_task2
                if not L0_3 then
                  L0_3 = jobs
                  L0_3 = L0_3.JobConfig
                  L0_3 = L0_3.Tool
                  L0_3 = L0_3.animation_take
                  if nil ~= L0_3 then
                    L0_3 = AnimationWalk
                    L1_3 = jobs
                    L1_3 = L1_3.JobConfig
                    L1_3 = L1_3.Tool
                    L1_3 = L1_3.animation_take
                    L1_3 = L1_3[1]
                    L2_3 = jobs
                    L2_3 = L2_3.JobConfig
                    L2_3 = L2_3.Tool
                    L2_3 = L2_3.animation_take
                    L2_3 = L2_3[2]
                    L3_3 = L0_2
                    L0_3(L1_3, L2_3, L3_3)
                  end
                end
              end
            end
          end
        end
      end
      L0_3 = L9_1
      if not L0_3 then
        L0_3 = L11_1
        if L0_3 then
          L0_3 = wait_to_task2
          if not L0_3 then
            L0_3 = IsEntityPlayingAnim
            L1_3 = L0_2
            L2_3 = lobby
            L2_3 = L2_3.jobconfig
            L2_3 = L2_3.CollectedProp
            L2_3 = L2_3.animAttachHands
            L2_3 = L2_3[1]
            L3_3 = lobby
            L3_3 = L3_3.jobconfig
            L3_3 = L3_3.CollectedProp
            L3_3 = L3_3.animAttachHands
            L3_3 = L3_3[2]
            L4_3 = 3
            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
            if not L0_3 then
              L0_3 = AnimationWalk
              L1_3 = lobby
              L1_3 = L1_3.jobconfig
              L1_3 = L1_3.CollectedProp
              L1_3 = L1_3.animAttachHands
              L1_3 = L1_3[1]
              L2_3 = lobby
              L2_3 = L2_3.jobconfig
              L2_3 = L2_3.CollectedProp
              L2_3 = L2_3.animAttachHands
              L2_3 = L2_3[2]
              L3_3 = L0_2
              L0_3(L1_3, L2_3, L3_3)
            end
          end
        end
      end
      L0_3 = GetWorldPositionOfEntityBone
      L1_3 = L7_1
      L2_3 = L1_2
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = L24_1
      if nil == L1_3 then
        return
      end
      L1_3 = L24_1
      L2_3 = L3_2
      if L1_3 == L2_3 then
        L1_3 = L2_2
        if nil ~= L1_3 then
          L1_3 = L2_2
          L1_3 = L0_3 - L1_3
          L1_3 = #L1_3
          L2_3 = 0.01
          if not (L1_3 > L2_3) then
            goto lbl_262
          end
        end
      end
      L1_3 = exports
      L1_3 = L1_3.qtarget
      L2_3 = L1_3
      L1_3 = L1_3.RemoveZone
      L3_3 = "vehicleboot_take"
      L1_3(L2_3, L3_3)
      L1_3 = L24_1
      L3_2 = L1_3
      L2_2 = L0_3
      L1_3 = L24_1
      if 1 == L1_3 then
        L1_3 = {}
        L1_3.targetType = "AddBoxZone"
        L1_3.identifier = "vehicleboot_take"
        L2_3 = vec3
        L3_3 = L0_3.x
        L4_3 = L0_3.y
        L5_3 = L0_3.z
        L5_3 = L5_3 - 1.0
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L1_3.coords = L2_3
        L2_3 = GetEntityHeading
        L3_3 = L7_1
        L2_3 = L2_3(L3_3)
        L1_3.heading = L2_3
        L1_3.width = 3.0
        L1_3.length = 1.0
        L1_3.minZ = 30.77834
        L1_3.maxZ = 30.77834
        L1_3.distance = 1.2
        L2_3 = {}
        L3_3 = {}
        L3_3.name = "vehicleboot_tool"
        L4_3 = L4_2
        L3_3.action = L4_3
        L3_3.icon = "fa-solid fa-comment"
        L4_3 = _U
        L5_3 = "JOBS_TARGET_TAKE_TOOL"
        L4_3 = L4_3(L5_3)
        L3_3.label = L4_3
        L2_3[1] = L3_3
        L1_3.options = L2_3
        data = L1_3
      else
        L1_3 = L24_1
        if 2 == L1_3 then
          L1_3 = L17_1
          if not L1_3 then
            L1_3 = L13_1
            if 0 == L1_3 then
              L1_3 = 1
              L24_1 = L1_3
            end
          end
          L1_3 = {}
          L1_3.targetType = "AddBoxZone"
          L1_3.identifier = "vehicleboot_take"
          L2_3 = vec3
          L3_3 = L0_3.x
          L4_3 = L0_3.y
          L5_3 = L0_3.z
          L5_3 = L5_3 - 1.0
          L2_3 = L2_3(L3_3, L4_3, L5_3)
          L1_3.coords = L2_3
          L2_3 = GetEntityHeading
          L3_3 = L7_1
          L2_3 = L2_3(L3_3)
          L1_3.heading = L2_3
          L1_3.width = 3.0
          L1_3.length = 1.0
          L1_3.minZ = 30.77834
          L1_3.maxZ = 30.77834
          L1_3.distance = 1.2
          L2_3 = {}
          L3_3 = {}
          L3_3.name = "vehicleboot_tool"
          L4_3 = L4_2
          L3_3.action = L4_3
          L3_3.icon = "fa-solid fa-comment"
          L4_3 = _U
          L5_3 = "JOBS_TARGET_TAKE_TOOL"
          L4_3 = L4_3(L5_3)
          L3_3.label = L4_3
          L4_3 = {}
          L4_3.name = "vehicleboot_take_box"
          L5_3 = L5_2
          L4_3.action = L5_3
          L4_3.icon = "fa-solid fa-box"
          L5_3 = _U
          L6_3 = "JOBS_TARGET_TAKE_BOX"
          L5_3 = L5_3(L6_3)
          L4_3.label = L5_3
          L2_3[1] = L3_3
          L2_3[2] = L4_3
          L1_3.options = L2_3
          data = L1_3
        else
          L1_3 = L24_1
          if 3 == L1_3 then
            L1_3 = {}
            L1_3.targetType = "AddBoxZone"
            L1_3.identifier = "vehicleboot_take"
            L2_3 = vec3
            L3_3 = L0_3.x
            L4_3 = L0_3.y
            L5_3 = L0_3.z
            L5_3 = L5_3 - 1.0
            L2_3 = L2_3(L3_3, L4_3, L5_3)
            L1_3.coords = L2_3
            L2_3 = GetEntityHeading
            L3_3 = L7_1
            L2_3 = L2_3(L3_3)
            L1_3.heading = L2_3
            L1_3.width = 3.0
            L1_3.length = 1.0
            L1_3.minZ = 30.77834
            L1_3.maxZ = 30.77834
            L1_3.distance = 1.2
            L2_3 = {}
            L3_3 = {}
            L3_3.name = "vehicleboot_take_box"
            L4_3 = L6_2
            L3_3.action = L4_3
            L3_3.icon = "fa-solid fa-comment"
            L4_3 = _U
            L5_3 = "JOBS_TARGET_PUT_BOX"
            L4_3 = L4_3(L5_3)
            L3_3.label = L4_3
            L2_3[1] = L3_3
            L1_3.options = L2_3
            data = L1_3
          end
        end
      end
      L1_3 = CreateTarget
      L2_3 = data
      L1_3(L2_3)
      ::lbl_262::
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
  end
  L7_2(L8_2)
end
createtargetvehicle = L28_1
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:PutBox"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A0_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    wait_takeobj = true
    L2_2 = pairs
    L3_2 = lobby
    L3_2 = L3_2.users
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2 = TriggerServerEvent
      L8_2 = "Buty-InfiniteJobs:server:update"
      L9_2 = L6_2
      L10_2 = "wait_takeobj"
      L11_2 = true
      L12_2 = lobby
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L2_2 = GetEntityBoneIndexByName
    L3_2 = L7_1
    L4_2 = "platelight"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = GetWorldPositionOfEntityBone
    L4_2 = L7_1
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    ztool = L6_2
    ytool = L5_2
    xtool = L4_2
    L4_2 = xtool
    L5_2 = GetEntityForwardX
    L6_2 = L7_1
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 * -1.0
    L4_2 = L4_2 + L5_2
    L5_2 = ytool
    L6_2 = GetEntityForwardY
    L7_2 = L7_1
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2 * -1.0
    L5_2 = L5_2 + L6_2
    L6_2 = ztool
    L6_2 = L6_2 - 0.5
    L7_2 = SetEntityHeading
    L8_2 = L1_2
    L9_2 = GetEntityHeading
    L10_2 = L7_1
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2 = FreezeEntityPosition
    L8_2 = L1_2
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = pairs
    L8_2 = lobby
    L8_2 = L8_2.users
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2 in L7_2, L8_2, L9_2, L10_2 do
      L12_2 = TriggerServerEvent
      L13_2 = "Buty-InfiniteJobs:server:OpenDoors"
      L14_2 = L11_2
      L15_2 = L7_1
      L12_2(L13_2, L14_2, L15_2)
    end
    L7_2 = Animation
    L8_2 = "anim@heists@load_box"
    L9_2 = "load_box_2"
    L10_2 = L1_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = GetAnimDuration
    L9_2 = "anim@heists@load_box"
    L10_2 = "load_box_2"
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L8_2 * 1000
    L8_2 = L8_2 / 2
    L7_2(L8_2)
    L7_2 = ClearPedTasks
    L8_2 = L1_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = obj_in_hands
    L7_2(L8_2)
    L7_2 = TriggerServerEvent
    L8_2 = "Buty-InfiniteJobs:server:CreateBox"
    L9_2 = lobby
    L9_2 = L9_2.owner
    L10_2 = lobby
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = FreezeEntityPosition
    L8_2 = L1_2
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = pairs
    L8_2 = lobby
    L8_2 = L8_2.users
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2 in L7_2, L8_2, L9_2, L10_2 do
      L12_2 = TriggerServerEvent
      L13_2 = "Buty-InfiniteJobs:server:CloseDoors"
      L14_2 = L11_2
      L15_2 = L7_1
      L12_2(L13_2, L14_2, L15_2)
    end
    L7_2 = false
    L11_1 = L7_2
    wait_takeobj = false
    L7_2 = TriggerServerEvent
    L8_2 = "Buty-InfiniteJobs:server:updatePutBox"
    L9_2 = lobby
    L7_2(L8_2, L9_2)
    L7_2 = pairs
    L8_2 = lobby
    L8_2 = L8_2.users
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2 in L7_2, L8_2, L9_2, L10_2 do
      L12_2 = TriggerServerEvent
      L13_2 = "Buty-InfiniteJobs:server:update"
      L14_2 = L11_2
      L15_2 = "wait_takeobj"
      L16_2 = false
      L17_2 = lobby
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = TriggerServerEvent
      L13_2 = "Buty-InfiniteJobs:server:update"
      L14_2 = L11_2
      L15_2 = "task"
      L16_2 = false
      L17_2 = lobby
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L7_2 = 1
    L24_1 = L7_2
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:TakeBox"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if A0_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = 1
    L24_1 = L2_2
    L2_2 = L9_1
    if L2_2 then
      L2_2 = Configuration
      L2_2 = L2_2.EquipToolAutomatically
      if L2_2 then
        L2_2 = Animationprop
        L3_2 = "amb@world_human_paparazzi@male@exit"
        L4_2 = "exit"
        L5_2 = L1_2
        L6_2 = 0.5
        L2_2(L3_2, L4_2, L5_2, L6_2)
        L2_2 = GetPedBoneIndex
        L3_2 = L1_2
        L4_2 = 11816
        L2_2 = L2_2(L3_2, L4_2)
        L3_2 = Wait
        L4_2 = 500
        L3_2(L4_2)
        L3_2 = ClearPedTasks
        L4_2 = L1_2
        L3_2(L4_2)
        L3_2 = AttachEntityToEntity
        L4_2 = tool2
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = 0.7
        L8_2 = -0.1
        L9_2 = -0.33
        L10_2 = 77.0
        L11_2 = 270.0
        L12_2 = -10.0
        L13_2 = false
        L14_2 = false
        L15_2 = false
        L16_2 = true
        L17_2 = 3
        L18_2 = true
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        L3_2 = Configuration
        L3_2 = L3_2.toolbelt
        if L3_2 then
          L3_2 = SetEntityVisible
          L4_2 = tool2
          L5_2 = false
          L6_2 = false
          L3_2(L4_2, L5_2, L6_2)
        end
        L3_2 = false
        L9_1 = L3_2
      end
    end
    L2_2 = Wait
    L3_2 = 200
    L2_2(L3_2)
    L2_2 = L9_1
    if not L2_2 then
      wait_taketool = true
      L2_2 = pairs
      L3_2 = lobby
      L3_2 = L3_2.users
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2 in L2_2, L3_2, L4_2, L5_2 do
        L7_2 = TriggerServerEvent
        L8_2 = "Buty-InfiniteJobs:server:update"
        L9_2 = L6_2
        L10_2 = "wait_taketool"
        L11_2 = true
        L12_2 = lobby
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      end
      L2_2 = GetEntityBoneIndexByName
      L3_2 = L7_1
      L4_2 = "platelight"
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = GetWorldPositionOfEntityBone
      L4_2 = L7_1
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = table
      L4_2 = L4_2.unpack
      L5_2 = L3_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      ztool = L6_2
      ytool = L5_2
      xtool = L4_2
      L4_2 = xtool
      L5_2 = GetEntityForwardX
      L6_2 = L7_1
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2 * -1.0
      L4_2 = L4_2 + L5_2
      L5_2 = ytool
      L6_2 = GetEntityForwardY
      L7_2 = L7_1
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2 * -1.0
      L5_2 = L5_2 + L6_2
      L6_2 = ztool
      L6_2 = L6_2 - 0.5
      L7_2 = TurnPedToFaceCoordAndWait
      L8_2 = L1_2
      L9_2 = vector3
      L10_2 = xtool
      L11_2 = ytool
      L12_2 = ztool
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2, L12_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = FreezeEntityPosition
      L8_2 = L1_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = Animation
      L8_2 = "amb@prop_human_bum_bin@idle_b"
      L9_2 = "idle_d"
      L10_2 = L1_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = pairs
      L8_2 = lobby
      L8_2 = L8_2.users
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2 in L7_2, L8_2, L9_2, L10_2 do
        L12_2 = TriggerServerEvent
        L13_2 = "Buty-InfiniteJobs:server:OpenDoors"
        L14_2 = L11_2
        L15_2 = L7_1
        L12_2(L13_2, L14_2, L15_2)
      end
      L7_2 = Wait
      L8_2 = 2000
      L7_2(L8_2)
      L7_2 = ClearPedTasks
      L8_2 = L1_2
      L7_2(L8_2)
      L7_2 = FreezeEntityPosition
      L8_2 = L1_2
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = TriggerServerEvent
      L8_2 = "Buty-InfiniteJobs:server:DeleteBox"
      L9_2 = GetPlayerServerId
      L10_2 = PlayerId
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L10_2 = lobby
      L11_2 = lobby
      L11_2 = L11_2.jobconfig
      L11_2 = L11_2.Vehicle
      L11_2 = L11_2.coord_prop_vehicle
      L11_2 = #L11_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = pairs
      L8_2 = lobby
      L8_2 = L8_2.users
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2 in L7_2, L8_2, L9_2, L10_2 do
        L12_2 = TriggerServerEvent
        L13_2 = "Buty-InfiniteJobs:server:CloseDoors"
        L14_2 = L11_2
        L15_2 = L7_1
        L12_2(L13_2, L14_2, L15_2)
      end
      wait_taketool = false
      L7_2 = TriggerServerEvent
      L8_2 = "Buty-InfiniteJobs:server:updateTakeBox"
      L9_2 = lobby
      L7_2(L8_2, L9_2)
      L7_2 = pairs
      L8_2 = lobby
      L8_2 = L8_2.users
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = TriggerServerEvent
        L14_2 = "Buty-InfiniteJobs:server:update"
        L15_2 = L11_2
        L16_2 = "wait_taketool"
        L17_2 = false
        L18_2 = lobby
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      end
    else
      L2_2 = TriggerServerEvent
      L3_2 = "Buty-InfiniteJobs:server:updateTakeBox"
      L4_2 = lobby
      L2_2(L3_2, L4_2)
      L2_2 = Configuration
      L2_2 = L2_2.EquipToolAutomatically
      if not L2_2 then
        L2_2 = Notify
        L3_2 = "success"
        L4_2 = _U
        L5_2 = "JOBS_DRAWTEXT_TOOL_NO_BELT"
        L4_2 = L4_2(L5_2)
        L5_2 = time
        L6_2 = "client"
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
      L2_2 = 2
      L24_1 = L2_2
    end
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:DeleteTool"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = lobby
  L1_2 = L1_2.users
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DeleteEntity
    L7_2 = L5_1
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.entity
    L6_2(L7_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:DeleteVehicleTool"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L5_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2[A0_2]
    L1_2 = #L1_2
    if L1_2 > 0 then
      L1_2 = pairs
      L2_2 = L5_1
      L2_2 = L2_2[A0_2]
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L6_2.use
        if not L7_2 then
          L7_2 = DeleteEntity
          L8_2 = tonumber
          L9_2 = L6_2.entity
          L8_2, L9_2 = L8_2(L9_2)
          L7_2(L8_2, L9_2)
          L6_2.use = true
          break
        end
      end
  end
  else
    L1_2 = print
    L2_2 = "No hay herramientas para eliminar para este usuario."
    L1_2(L2_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:RestartTool"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = nil
  L2_2 = L5_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L5_1
    L2_2 = L2_2[A0_2]
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = pairs
      L3_2 = L5_1
      L3_2 = L3_2[A0_2]
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.use
        if L8_2 then
          L1_2 = L7_2
          break
        end
      end
    end
  end
  if L1_2 then
    L2_2 = L1_2.coord
    L3_2 = CreateObject
    L4_2 = GetHashKey
    L5_2 = jobs
    L5_2 = L5_2.JobConfig
    L5_2 = L5_2.Tool
    L5_2 = L5_2.prop
    L4_2 = L4_2(L5_2)
    L5_2 = L2_2[1]
    L6_2 = L2_2[2]
    L7_2 = L2_2[3]
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    while true do
      L4_2 = DoesEntityExist
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 0
      L4_2(L5_2)
    end
    L1_2.entity = L3_2
    L1_2.use = false
    L4_2 = FreezeEntityPosition
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = AttachEntityToEntity
    L5_2 = L3_2
    L6_2 = L7_1
    L7_2 = 0
    L8_2 = L2_2[1]
    L9_2 = L2_2[2]
    L10_2 = L2_2[3]
    L11_2 = L2_2[4]
    L12_2 = L2_2[5]
    L13_2 = L2_2[6]
    L14_2 = true
    L15_2 = true
    L16_2 = false
    L17_2 = true
    L18_2 = 1
    L19_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  else
    L2_2 = print
    L3_2 = "No hay herramientas disponibles para reiniciar para el usuario: "
    L4_2 = A0_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:CreateBox"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = pairs
  L1_2 = lobby
  L1_2 = L1_2.users
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = TriggerServerEvent
    L7_2 = "Buty-InfiniteJobs:server:update"
    L8_2 = L4_2
    L9_2 = "boxtotal"
    L10_2 = "+"
    L11_2 = lobby
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = L13_1
  L1_2 = lobby
  L1_2 = L1_2.jobconfig
  L1_2 = L1_2.Vehicle
  L1_2 = L1_2.coord_prop_vehicle
  L1_2 = #L1_2
  if L0_2 <= L1_2 then
    L0_2 = CreateObject
    L1_2 = GetHashKey
    L2_2 = lobby
    L2_2 = L2_2.jobconfig
    L2_2 = L2_2.CollectedProp
    L2_2 = L2_2.name
    L1_2 = L1_2(L2_2)
    L2_2 = GetEntityCoords
    L3_2 = L7_1
    L2_2 = L2_2(L3_2)
    L3_2 = true
    L4_2 = false
    L5_2 = true
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L1_2 = lobby
    L1_2 = L1_2.jobconfig
    L1_2 = L1_2.Vehicle
    L1_2 = L1_2.coord_prop_vehicle
    L2_2 = L13_1
    L1_2 = L1_2[L2_2]
    L2_2 = AttachEntityToEntity
    L3_2 = L0_2
    L4_2 = L7_1
    L5_2 = 0
    L6_2 = L1_2[1]
    L7_2 = L1_2[2]
    L8_2 = L1_2[3]
    L9_2 = L1_2[4]
    L10_2 = L1_2[5]
    L11_2 = L1_2[6]
    L12_2 = true
    L13_2 = true
    L14_2 = false
    L15_2 = true
    L16_2 = 1
    L17_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L14_1
    L4_2 = L0_2
    L2_2(L3_2, L4_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:DeleteBox"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L2_2 = L13_1
    L1_2 = L14_1
    L1_2 = L1_2[L2_2]
    if nil ~= L1_2 then
      L1_2 = DoesEntityExist
      L3_2 = L13_1
      L2_2 = L14_1
      L2_2 = L2_2[L3_2]
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 1
    L1_2(L2_2)
  end
  L2_2 = L13_1
  L1_2 = L14_1
  L1_2 = L1_2[L2_2]
  if nil ~= L1_2 then
    L1_2 = DoesEntityExist
    L3_2 = L13_1
    L2_2 = L14_1
    L2_2 = L2_2[L3_2]
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DeleteEntity
      L3_2 = L13_1
      L2_2 = L14_1
      L2_2 = L2_2[L3_2]
      L1_2(L2_2)
      L2_2 = L13_1
      L1_2 = L14_1
      L1_2[L2_2] = nil
    end
  end
  L1_2 = TriggerServerEvent
  L2_2 = "Buty-InfiniteJobs:server:CreateBoxToProcess"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = lobby
  L2_2 = L2_2.users
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = TriggerServerEvent
    L8_2 = "Buty-InfiniteJobs:server:update"
    L9_2 = L5_2
    L10_2 = "boxtotal"
    L11_2 = "-"
    L12_2 = lobby
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:CreateBoxToProcess"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = true
  L15_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = AnimationWalk
  L2_2 = lobby
  L2_2 = L2_2.jobconfig
  L2_2 = L2_2.CollectedProp
  L2_2 = L2_2.animAttachHands
  L2_2 = L2_2[1]
  L3_2 = lobby
  L3_2 = L3_2.jobconfig
  L3_2 = L3_2.CollectedProp
  L3_2 = L3_2.animAttachHands
  L3_2 = L3_2[2]
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CreateObject
  L2_2 = GetHashKey
  L3_2 = lobby
  L3_2 = L3_2.jobconfig
  L3_2 = L3_2.CollectedProp
  L3_2 = L3_2.name
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L5_2 = true
  L6_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  processbox = L1_2
  L1_2 = lobby
  L1_2 = L1_2.jobconfig
  L1_2 = L1_2.CollectedProp
  L1_2 = L1_2.attachcoordHands
  L2_2 = AttachEntityToEntity
  L3_2 = processbox
  L4_2 = L0_2
  L5_2 = GetPedBoneIndex
  L6_2 = L0_2
  L7_2 = L1_2[1]
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L1_2[2]
  L7_2 = L1_2[3]
  L8_2 = L1_2[4]
  L9_2 = L1_2[5]
  L10_2 = L1_2[6]
  L11_2 = L1_2[7]
  L12_2 = 1
  L13_2 = 1
  L14_2 = 0
  L15_2 = 1
  L16_2 = 0
  L17_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:update"
function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  lobby = A2_2
  if "wait_clothes" == A0_2 then
    wait_clothes = A1_2
  elseif "wait_vehicle" == A0_2 then
    wait_vehicle = A1_2
  elseif "getvehicle" == A0_2 then
    getvehicle = A1_2
  elseif "wait_taketool" == A0_2 then
    wait_taketool = A1_2
    L4_2 = L13_1
    if 0 == L4_2 then
      L4_2 = L17_1
      if L4_2 then
        L4_2 = typejob
        if 1 ~= L4_2 then
          L4_2 = 1
          L24_1 = L4_2
        end
      end
    end
  elseif "wait_takeobj" == A0_2 then
    wait_takeobj = A1_2
  elseif "deletetaskblip" == A0_2 then
    if false == A1_2 then
      L4_2 = RemoveBlip
      L5_2 = task_blip
      L5_2 = L5_2[A3_2]
      L4_2(L5_2)
    end
  elseif "task" == A0_2 then
    L4_2 = typejob
    if 1 == L4_2 then
      L4_2 = RemoveBlip
      L5_2 = task_blip
      L5_2 = L5_2[A3_2]
      L4_2(L5_2)
    end
    L4_2 = totaltask
    L4_2 = L4_2 - 1
    totaltask = L4_2
    L4_2 = totaltask
    if 0 == L4_2 then
      L4_2 = true
      L19_1 = L4_2
      L4_2 = true
      L21_1 = L4_2
      L4_2 = Wait
      L5_2 = 1500
      L4_2(L5_2)
      L4_2 = typejob
      if 1 ~= L4_2 then
        L4_2 = Notify
        L5_2 = "success"
        L6_2 = _U
        L7_2 = "JOBS_NOTIFICATION_PROCESS"
        L6_2 = L6_2(L7_2)
        L7_2 = time
        L8_2 = "client"
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = true
        L17_1 = L4_2
        L4_2 = 2
        L24_1 = L4_2
        L4_2 = lobby
        L4_2 = L4_2.route
        L4_2 = #L4_2
        L16_1 = L4_2
        L4_2 = SetNewWaypoint
        L5_2 = lobby
        L5_2 = L5_2.jobconfig
        L5_2 = L5_2.ProcessCoord
        L5_2 = L5_2.x
        L6_2 = lobby
        L6_2 = L6_2.jobconfig
        L6_2 = L6_2.ProcessCoord
        L6_2 = L6_2.y
        L4_2(L5_2, L6_2)
        L4_2 = setblip
        L5_2 = "process"
        L6_2 = vec3
        L7_2 = lobby
        L7_2 = L7_2.jobconfig
        L7_2 = L7_2.ProcessCoord
        L7_2 = L7_2.x
        L8_2 = lobby
        L8_2 = L8_2.jobconfig
        L8_2 = L8_2.ProcessCoord
        L8_2 = L8_2.y
        L9_2 = lobby
        L9_2 = L9_2.jobconfig
        L9_2 = L9_2.ProcessCoord
        L9_2 = L9_2.z
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = "PROCESS"
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = Notify
        L5_2 = "success"
        L6_2 = _U
        L7_2 = "JOBS_NOTIFICATION_JOBFINISH"
        L6_2 = L6_2(L7_2)
        L7_2 = time
        L8_2 = "client"
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = string
        L4_2 = L4_2.upper
        L5_2 = string
        L5_2 = L5_2.sub
        L6_2 = jobs
        L6_2 = L6_2.JobInfo
        L6_2 = L6_2.Name
        L7_2 = 1
        L8_2 = 1
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2)
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        L5_2 = string
        L5_2 = L5_2.sub
        L6_2 = jobs
        L6_2 = L6_2.JobInfo
        L6_2 = L6_2.Name
        L7_2 = 2
        L5_2 = L5_2(L6_2, L7_2)
        L4_2 = L4_2 .. L5_2
        L5_2 = SetNewWaypoint
        L6_2 = GetEntityCoords
        L7_2 = npcpay
        L6_2 = L6_2(L7_2)
        L6_2 = L6_2.x
        L7_2 = GetEntityCoords
        L8_2 = npcpay
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2.y
        L5_2(L6_2, L7_2)
        L5_2 = setblip
        L6_2 = "pay"
        L7_2 = GetEntityCoords
        L8_2 = npcpay
        L7_2 = L7_2(L8_2)
        L8_2 = _U
        L9_2 = "JOBS_BLIP_PAYMENT"
        L10_2 = L4_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L5_2 = true
        L22_1 = L5_2
        L5_2 = false
        L19_1 = L5_2
        L5_2 = false
        L20_1 = L5_2
        L5_2 = false
        L21_1 = L5_2
        L5_2 = {}
        task_blip = L5_2
        L5_2 = lobby
        L6_2 = {}
        L5_2.task = L6_2
        L5_2 = lobby
        L6_2 = {}
        L5_2.route = L6_2
        L5_2 = pay
        L5_2()
      end
    end
  elseif "task_take" == A0_2 then
    L4_2 = L10_1
    L4_2 = L4_2[A1_2]
    L4_2.take = true
  elseif "process" == A0_2 then
    L4_2 = L16_1
    L4_2 = L4_2 - 1
    L16_1 = L4_2
    L4_2 = L16_1
    if 0 == L4_2 then
      L4_2 = false
      L17_1 = L4_2
      L4_2 = Notify
      L5_2 = "success"
      L6_2 = _U
      L7_2 = "JOBS_NOTIFICATION_ALL_PROCESS"
      L6_2 = L6_2(L7_2)
      L7_2 = time
      L8_2 = "client"
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = RemoveBlip
      L5_2 = process_blip
      L4_2(L5_2)
      L4_2 = typejob
      if 1 ~= L4_2 then
        L4_2 = 1
        L24_1 = L4_2
      end
      L4_2 = setblip
      L5_2 = "pay"
      L6_2 = GetEntityCoords
      L7_2 = npcpay
      L6_2 = L6_2(L7_2)
      L7_2 = _U
      L8_2 = "JOBS_BLIP_PAYMENT"
      L9_2 = jobs
      L9_2 = L9_2.JobInfo
      L9_2 = L9_2.Name
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L4_2 = true
      L22_1 = L4_2
      L4_2 = false
      L19_1 = L4_2
      L4_2 = false
      L20_1 = L4_2
      L4_2 = false
      L21_1 = L4_2
      L4_2 = {}
      L10_1 = L4_2
      L4_2 = {}
      L14_1 = L4_2
      L4_2 = 0
      L13_1 = L4_2
      L4_2 = {}
      task_blip = L4_2
      L4_2 = lobby
      L5_2 = {}
      L4_2.task = L5_2
      L4_2 = lobby
      L5_2 = {}
      L4_2.route = L5_2
      L4_2 = pay
      L4_2()
    end
  elseif "wait_process" == A0_2 then
    wait_process = A1_2
  elseif "boxtotal" == A0_2 then
    if "+" == A1_2 then
      L4_2 = L13_1
      L4_2 = L4_2 + 1
      L13_1 = L4_2
    else
      L4_2 = L13_1
      L4_2 = L4_2 - 1
      L13_1 = L4_2
    end
  elseif "limit" == A0_2 then
    L4_2 = Notify
    L5_2 = "success"
    L6_2 = A1_2
    L7_2 = _U
    L8_2 = "JOBS_NOTIFICATION_KICK_LIMIT"
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L7_2 = time
    L8_2 = "client"
    L4_2(L5_2, L6_2, L7_2, L8_2)
  elseif "none" == A0_2 then
    return
  end
end
L28_1(L29_1, L30_1)
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Configuration
  L0_2 = L0_2.UseTarget
  if L0_2 then
    L0_2 = {}
    L0_2.targetType = "entity"
    L0_2.identifier = "pay"
    L1_2 = npcpay
    L0_2.entitys = L1_2
    L0_2.distance = 1.2
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "pay"
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = lobby
      L0_3 = L0_3.owner
      L1_3 = GetPlayerServerId
      L2_3 = PlayerId
      L2_3 = L2_3()
      L1_3 = L1_3(L2_3)
      if L0_3 == L1_3 then
        L0_3 = wait_pay
        if not L0_3 then
          L0_3 = L22_1
          if L0_3 then
            L0_3 = AreAllPlayersNearby
            L0_3 = L0_3()
            if L0_3 then
              wait_pay = true
              L0_3 = SetNuiFocus
              L1_3 = true
              L2_3 = true
              L0_3(L1_3, L2_3)
              L0_3 = SendNUIMessage
              L1_3 = {}
              L1_3.type = "finish_menu"
              L1_3.status = true
              L2_3 = jobs
              L2_3 = L2_3.JobInfo
              L2_3 = L2_3.Name
              L1_3.jobname = L2_3
              L2_3 = Configuration
              L2_3 = L2_3.Color_UI
              L1_3.color = L2_3
              L0_3(L1_3)
              wait_pay = false
              L0_3 = false
              L22_1 = L0_3
            end
          end
        end
      end
    end
    L2_2.action = L3_2
    L2_2.icon = "fa-solid fa-comment"
    L3_2 = _U
    L4_2 = "JOBS_TARGET_PAY"
    L3_2 = L3_2(L4_2)
    L2_2.label = L3_2
    L1_2[1] = L2_2
    L0_2.options = L1_2
    L1_2 = CreateTarget
    L2_2 = L0_2
    L1_2(L2_2)
  else
    while true do
      L0_2 = L20_1
      if L0_2 then
        return
      else
        L0_2 = PlayerPedId
        L0_2 = L0_2()
        L1_2 = GetEntityCoords
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        sleep = 1000
        L2_2 = GetEntityCoords
        L3_2 = npcpay
        L2_2 = L2_2(L3_2)
        L3_2 = L1_2 - L2_2
        L3_2 = #L3_2
        L4_2 = L22_1
        if L4_2 and L3_2 < 5.0 then
          sleep = 0
          L4_2 = 1.5
          if L3_2 < L4_2 then
            L4_2 = hintToDisplay
            L5_2 = _U
            L6_2 = "JOBS_DRAWTEXT_ACCEPT_PAYMENT"
            L5_2 = L5_2(L6_2)
            L6_2 = vec3
            L7_2 = L2_2.x
            L8_2 = L2_2.y
            L9_2 = L2_2.z
            L9_2 = L9_2 + 1.0
            L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
            L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
            L4_2 = IsControlJustReleased
            L5_2 = 0
            L6_2 = 38
            L4_2 = L4_2(L5_2, L6_2)
            if L4_2 then
              L4_2 = lobby
              L4_2 = L4_2.owner
              L5_2 = GetPlayerServerId
              L6_2 = PlayerId
              L6_2, L7_2, L8_2, L9_2 = L6_2()
              L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
              if L4_2 == L5_2 then
                L4_2 = AreAllPlayersNearby
                L4_2 = L4_2()
                if L4_2 then
                  L4_2 = SetNuiFocus
                  L5_2 = true
                  L6_2 = true
                  L4_2(L5_2, L6_2)
                  L4_2 = SendNUIMessage
                  L5_2 = {}
                  L5_2.type = "finish_menu"
                  L5_2.status = true
                  L6_2 = jobs
                  L6_2 = L6_2.JobInfo
                  L6_2 = L6_2.Name
                  L5_2.jobname = L6_2
                  L6_2 = Configuration
                  L6_2 = L6_2.Color_UI
                  L5_2.color = L6_2
                  L4_2(L5_2)
                  L4_2 = false
                  L22_1 = L4_2
                end
              end
            end
          end
        end
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = sleep
      L0_2(L1_2)
    end
  end
end
pay = L28_1
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = GetEntityCoords
  L1_2 = npcpay
  L0_2 = L0_2(L1_2)
  L1_2 = pairs
  L2_2 = lobby
  L2_2 = L2_2.users
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = GetPlayerFromServerId
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if -1 ~= L6_2 then
      L7_2 = NetworkIsPlayerActive
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = GetPlayerPed
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        L8_2 = GetEntityCoords
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L9_2 = L0_2 - L8_2
        L9_2 = #L9_2
        if L9_2 > 100.0 then
          L10_2 = Notify
          L11_2 = "error"
          L12_2 = _U
          L13_2 = "JOBS_NOTIFICATION_NO_PAY"
          L12_2 = L12_2(L13_2)
          L13_2 = time
          L14_2 = "client"
          L10_2(L11_2, L12_2, L13_2, L14_2)
          L10_2 = false
          return L10_2
        end
    end
    else
      L7_2 = Notify
      L8_2 = "error"
      L9_2 = _U
      L10_2 = "JOBS_NOTIFICATION_NO_PAY"
      L9_2 = L9_2(L10_2)
      L10_2 = time
      L11_2 = "client"
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = false
      return L7_2
    end
  end
  L1_2 = true
  return L1_2
end
AreAllPlayersNearby = L28_1
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:CreateRoute"
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = pay_blip
  if L0_2 then
    L0_2 = RemoveBlip
    L1_2 = pay_blip
    L0_2(L1_2)
  end
  L0_2 = next
  L1_2 = L8_1
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = pairs
    L1_2 = L8_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = SetEntityAsMissionEntity
      L7_2 = L5_2
      L8_2 = true
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = RemoveBlip
      L7_2 = task_blip
      L7_2 = L7_2[L4_2]
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
    L0_2 = {}
    L8_1 = L0_2
  end
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "Buty-InfiniteJobs:server:CheckLimit"
  L2_2 = false
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if L0_2 then
    L1_2 = Notify
    L2_2 = "success"
    L3_2 = _U
    L4_2 = "JOBS_NOTIFICATION_LIMIT"
    L3_2 = L3_2(L4_2)
    L4_2 = time
    L5_2 = "client"
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = pairs
    L2_2 = lobby
    L2_2 = L2_2.users
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = TriggerServerEvent
      L8_2 = "Buty-InfiniteJobs:server:update"
      L9_2 = L5_2
      L10_2 = "limit"
      L11_2 = lobby
      L11_2 = L11_2.users
      L12_2 = GetPlayerServerId
      L13_2 = PlayerId
      L13_2, L14_2, L15_2, L16_2 = L13_2()
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.name
      L12_2 = lobby
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    end
    L1_2 = lobby
    L1_2 = L1_2.users
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L1_2[L2_2] = nil
    injob = false
    cancel = true
    L1_2 = true
    L19_1 = L1_2
    L1_2 = true
    L21_1 = L1_2
    L1_2 = true
    L20_1 = L1_2
    L1_2 = GetEntityModel
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L2_2 = true
    L3_2 = {}
    L4_2 = 1885233650
    L5_2 = -1667301416
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L4_2 = ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      if L1_2 == L9_2 then
        L2_2 = false
      end
    end
    if not L2_2 then
      L4_2 = restorePlayerClothes
      L4_2()
    end
    L4_2 = cancelall
    L4_2()
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = lobby
  L3_2 = L2_2.jobid
  L2_2 = L0_1
  L4_2 = GetJobLevel
  L5_2 = lobby
  L5_2 = L5_2.jobid
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L2_2 = lobby
  L2_2 = L2_2.total_task
  totaltask = L2_2
  L2_2 = true
  L20_1 = L2_2
  L2_2 = pairs
  L3_2 = lobby
  L3_2 = L3_2.task
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.propname
    if "prop_rub_litter_07" ~= L8_2 then
      L8_2 = L7_2.propname
      if "prop_rub_litter_03" ~= L8_2 then
        L8_2 = L7_2.propname
        if "prop_rub_litter_01" ~= L8_2 then
          goto lbl_149
        end
      end
    end
    propname = "prop_big_shit_02"
    goto lbl_151
    ::lbl_149::
    L8_2 = L7_2.propname
    propname = L8_2
    ::lbl_151::
    L8_2 = GetHashKey
    L9_2 = propname
    L8_2 = L8_2(L9_2)
    L9_2 = RequestModel
    L10_2 = L8_2
    L9_2(L10_2)
    while true do
      L9_2 = HasModelLoaded
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 0
      L9_2(L10_2)
    end
    L9_2 = CreateObject
    L10_2 = L8_2
    L11_2 = L7_2.coord
    L11_2 = L11_2.x
    L12_2 = L7_2.coord
    L12_2 = L12_2.y
    L13_2 = L7_2.coord
    L13_2 = L13_2.z
    L13_2 = L13_2 - 1.0
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    objtask = L9_2
    L9_2 = setblip
    L10_2 = "task"
    L11_2 = GetEntityCoords
    L12_2 = objtask
    L11_2 = L11_2(L12_2)
    L12_2 = _U
    L13_2 = "JOBS_BLIP_TASK"
    L12_2 = L12_2(L13_2)
    L13_2 = L7_2.task_index
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = objtask
    if L9_2 then
      L9_2 = SetEntityHeading
      L10_2 = objtask
      L11_2 = L7_2.coord
      L11_2 = L11_2.w
      L9_2(L10_2, L11_2)
      L9_2 = FreezeEntityPosition
      L10_2 = objtask
      L11_2 = true
      L9_2(L10_2, L11_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L8_1
      L11_2 = objtask
      L9_2(L10_2, L11_2)
    end
    L9_2 = Citizen
    L9_2 = L9_2.CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
      L0_3 = Configuration
      L0_3 = L0_3.UseTarget
      if L0_3 then
        L0_3 = L7_2.propname
        if "prop_cs_diaphram" ~= L0_3 then
          L0_3 = {}
          L0_3.targetType = "entity"
          L1_3 = "task"
          L2_3 = L6_2
          L1_3 = L1_3 .. L2_3
          L0_3.identifier = L1_3
          L2_3 = L6_2
          L1_3 = L8_1
          L1_3 = L1_3[L2_3]
          L0_3.entitys = L1_3
          L0_3.distance = 1.4
          L1_3 = {}
          L2_3 = {}
          L3_3 = "task"
          L4_3 = L6_2
          L3_3 = L3_3 .. L4_3
          L2_3.name = L3_3
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = IsPedSittingInAnyVehicle
            L1_4 = L1_2
            L0_4 = L0_4(L1_4)
            if not L0_4 then
              L0_4 = L9_1
              if L0_4 then
                L0_4 = taketool
                if L0_4 then
                  L0_4 = L11_1
                  if not L0_4 then
                    L0_4 = wait_to_task
                    if not L0_4 then
                      L0_4 = lobby
                      L0_4 = L0_4.task
                      L1_4 = L6_2
                      L0_4 = L0_4[L1_4]
                      L0_4 = L0_4.take
                      if not L0_4 then
                        L0_4 = TriggerServerEvent
                        L1_4 = "Buty-InfiniteJobs:server:tryTakeTask"
                        L2_4 = L6_2
                        L3_4 = lobby
                        L4_4 = L7_2
                        L0_4(L1_4, L2_4, L3_4, L4_4)
                      end
                    end
                  end
                end
              end
            end
          end
          L2_3.action = L3_3
          L2_3.icon = "fa-solid fa-comment"
          L3_3 = _U
          L4_3 = "JOBS_TARGET_ACTION"
          L3_3 = L3_3(L4_3)
          L2_3.label = L3_3
          L1_3[1] = L2_3
          L0_3.options = L1_3
          L1_3 = CreateTarget
          L2_3 = L0_3
          L1_3(L2_3)
        end
        while true do
          L0_3 = L19_1
          if L0_3 then
            return
          else
            sleep = 1000
            L0_3 = GetEntityCoords
            L1_3 = L1_2
            L0_3 = L0_3(L1_3)
            L1_3 = GetEntityCoords
            L3_3 = L6_2
            L2_3 = L8_1
            L2_3 = L2_3[L3_3]
            L1_3 = L1_3(L2_3)
            L2_3 = vector3
            L3_3 = L1_3.x
            L4_3 = L1_3.y
            L5_3 = L1_3.z
            L2_3 = L2_3(L3_3, L4_3, L5_3)
            L2_3 = L0_3 - L2_3
            L2_3 = #L2_3
            L3_3 = 1.5
            if L2_3 < L3_3 then
              L3_3 = lobby
              L3_3 = L3_3.task
              L4_3 = L6_2
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.take
              if not L3_3 then
                L3_3 = L7_2.propname
                if "prop_cs_diaphram" == L3_3 then
                  sleep = 1
                  L3_3 = taketool
                  if not L3_3 then
                    L3_3 = hintToDisplay
                    L4_3 = _U
                    L5_3 = "JOBS_NOTIFICATION_NO_TOOL_VEHICLE"
                    L4_3 = L4_3(L5_3)
                    L5_3 = vector3
                    L6_3 = L1_3.x
                    L7_3 = L1_3.y
                    L8_3 = L1_3.z
                    L8_3 = L8_3 + 1.2
                    L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3(L6_3, L7_3, L8_3)
                    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                  else
                    L3_3 = hintToDisplay
                    L4_3 = _U
                    L5_3 = "JOBS_DRAWTEXT_ACTION"
                    L4_3 = L4_3(L5_3)
                    L5_3 = vector3
                    L6_3 = L1_3.x
                    L7_3 = L1_3.y
                    L8_3 = L1_3.z
                    L8_3 = L8_3 + 1.2
                    L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3(L6_3, L7_3, L8_3)
                    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                  end
                  L3_3 = IsControlJustReleased
                  L4_3 = 0
                  L5_3 = 38
                  L3_3 = L3_3(L4_3, L5_3)
                  if L3_3 then
                    L3_3 = L9_1
                    if L3_3 then
                      L3_3 = taketool
                      if L3_3 then
                        L3_3 = L11_1
                        if not L3_3 then
                          L3_3 = IsPedSittingInAnyVehicle
                          L4_3 = L1_2
                          L3_3 = L3_3(L4_3)
                          if not L3_3 then
                            L3_3 = wait_to_task
                            if not L3_3 then
                              L3_3 = lobby
                              L3_3 = L3_3.task
                              L4_3 = L6_2
                              L3_3 = L3_3[L4_3]
                              L3_3 = L3_3.take
                              if not L3_3 then
                                L3_3 = 1.5
                                if L2_3 < L3_3 then
                                  L3_3 = TriggerServerEvent
                                  L4_3 = "Buty-InfiniteJobs:server:tryTakeTask"
                                  L5_3 = L6_2
                                  L6_3 = lobby
                                  L7_3 = L7_2
                                  L3_3(L4_3, L5_3, L6_3, L7_3)
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
              end
            end
            elseif L2_3 < 20.0 then
              L3_3 = lobby
              L3_3 = L3_3.task
              L4_3 = L6_2
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.take
              if not L3_3 then
                sleep = 1
                L3_3 = DrawMarker
                L4_3 = 2
                L5_3 = vec3
                L6_3 = L1_3.x
                L7_3 = L1_3.y
                L8_3 = L1_3.z
                L8_3 = L8_3 + 2.2
                L5_3 = L5_3(L6_3, L7_3, L8_3)
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 180.0
                L11_3 = 0.0
                L12_3 = 0.3
                L13_3 = 0.3
                L14_3 = 0.3
                L15_3 = Configuration
                L15_3 = L15_3.Color_Marker
                L15_3 = L15_3[1]
                L16_3 = Configuration
                L16_3 = L16_3.Color_Marker
                L16_3 = L16_3[2]
                L17_3 = Configuration
                L17_3 = L17_3.Color_Marker
                L17_3 = L17_3[3]
                L18_3 = 100
                L19_3 = false
                L20_3 = true
                L21_3 = 2
                L22_3 = true
                L23_3 = false
                L24_3 = false
                L25_3 = false
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              end
            end
          end
          L0_3 = Citizen
          L0_3 = L0_3.Wait
          L1_3 = sleep
          L0_3(L1_3)
        end
      else
        while true do
          L0_3 = L19_1
          if L0_3 then
            return
          end
          L0_3 = next
          L1_3 = lobby
          L1_3 = L1_3.task
          L0_3 = L0_3(L1_3)
          if nil ~= L0_3 then
            sleep = 1000
            L0_3 = GetEntityCoords
            L1_3 = L1_2
            L0_3 = L0_3(L1_3)
            L1_3 = GetEntityCoords
            L3_3 = L6_2
            L2_3 = L8_1
            L2_3 = L2_3[L3_3]
            L1_3 = L1_3(L2_3)
            L2_3 = vector3
            L3_3 = L1_3.x
            L4_3 = L1_3.y
            L5_3 = L1_3.z
            L2_3 = L2_3(L3_3, L4_3, L5_3)
            L2_3 = L0_3 - L2_3
            L2_3 = #L2_3
            L3_3 = 1.5
            if L2_3 < L3_3 then
              L3_3 = lobby
              L3_3 = L3_3.task
              L4_3 = L6_2
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.take
              if not L3_3 then
                sleep = 1
                L3_3 = taketool
                if not L3_3 then
                  L3_3 = hintToDisplay
                  L4_3 = _U
                  L5_3 = "JOBS_NOTIFICATION_NO_TOOL_VEHICLE"
                  L4_3 = L4_3(L5_3)
                  L5_3 = vector3
                  L6_3 = L1_3.x
                  L7_3 = L1_3.y
                  L8_3 = L1_3.z
                  L8_3 = L8_3 + 1.2
                  L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3(L6_3, L7_3, L8_3)
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                else
                  L3_3 = hintToDisplay
                  L4_3 = _U
                  L5_3 = "JOBS_DRAWTEXT_ACTION"
                  L4_3 = L4_3(L5_3)
                  L5_3 = vector3
                  L6_3 = L1_3.x
                  L7_3 = L1_3.y
                  L8_3 = L1_3.z
                  L8_3 = L8_3 + 1.2
                  L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L5_3(L6_3, L7_3, L8_3)
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
                end
                L3_3 = IsControlJustReleased
                L4_3 = 0
                L5_3 = 38
                L3_3 = L3_3(L4_3, L5_3)
                if L3_3 then
                  L3_3 = L9_1
                  if L3_3 then
                    L3_3 = taketool
                    if L3_3 then
                      L3_3 = L11_1
                      if not L3_3 then
                        L3_3 = IsPedSittingInAnyVehicle
                        L4_3 = L1_2
                        L3_3 = L3_3(L4_3)
                        if not L3_3 then
                          L3_3 = wait_to_task
                          if not L3_3 then
                            L3_3 = lobby
                            L3_3 = L3_3.task
                            L4_3 = L6_2
                            L3_3 = L3_3[L4_3]
                            L3_3 = L3_3.take
                            if not L3_3 then
                              L3_3 = 1.5
                              if L2_3 < L3_3 then
                                L3_3 = TriggerServerEvent
                                L4_3 = "Buty-InfiniteJobs:server:tryTakeTask"
                                L5_3 = L6_2
                                L6_3 = lobby
                                L7_3 = L7_2
                                L3_3(L4_3, L5_3, L6_3, L7_3)
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
            end
            elseif L2_3 < 20.0 then
              L3_3 = lobby
              L3_3 = L3_3.task
              L4_3 = L6_2
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.take
              if not L3_3 then
                sleep = 1
                L3_3 = DrawMarker
                L4_3 = 2
                L5_3 = vec3
                L6_3 = L1_3.x
                L7_3 = L1_3.y
                L8_3 = L1_3.z
                L8_3 = L8_3 + 2.2
                L5_3 = L5_3(L6_3, L7_3, L8_3)
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 180.0
                L11_3 = 0.0
                L12_3 = 0.3
                L13_3 = 0.3
                L14_3 = 0.3
                L15_3 = Configuration
                L15_3 = L15_3.Color_Marker
                L15_3 = L15_3[1]
                L16_3 = Configuration
                L16_3 = L16_3.Color_Marker
                L16_3 = L16_3[2]
                L17_3 = Configuration
                L17_3 = L17_3.Color_Marker
                L17_3 = L17_3[3]
                L18_3 = 100
                L19_3 = false
                L20_3 = true
                L21_3 = 2
                L22_3 = true
                L23_3 = false
                L24_3 = false
                L25_3 = false
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              end
            end
          end
          L0_3 = Citizen
          L0_3 = L0_3.Wait
          L1_3 = sleep
          L0_3(L1_3)
        end
      end
    end
    L9_2(L10_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:taskTaken"
function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  if A1_2 then
    L3_2 = lobby
    L3_2 = L3_2.task
    L3_2 = L3_2[A0_2]
    L3_2.take = true
    wait_to_task = true
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L9_1
    if not L4_2 then
      L4_2 = Configuration
      L4_2 = L4_2.EquipToolAutomatically
      if L4_2 then
        L4_2 = Animationprop
        L5_2 = "amb@world_human_paparazzi@male@enter"
        L6_2 = "enter"
        L7_2 = L3_2
        L8_2 = nil
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = Wait
        L5_2 = 500
        L4_2(L5_2)
        L4_2 = ClearPedTasks
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = Wait
        L5_2 = 50
        L4_2(L5_2)
        L4_2 = AttachEntityToEntity
        L5_2 = tool2
        L6_2 = L3_2
        L7_2 = GetPedBoneIndex
        L8_2 = L3_2
        L9_2 = 28422
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = 0.09
        L9_2 = 0.01
        L10_2 = 0.0
        L11_2 = 300.0
        L12_2 = 720.0
        L13_2 = 330.0
        L14_2 = true
        L15_2 = true
        L16_2 = false
        L17_2 = true
        L18_2 = 1
        L19_2 = true
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L4_2 = Configuration
        L4_2 = L4_2.toolbelt
        if L4_2 then
          L4_2 = SetEntityVisible
          L5_2 = tool2
          L6_2 = true
          L7_2 = false
          L4_2(L5_2, L6_2, L7_2)
        end
        L4_2 = true
        L9_1 = L4_2
        L4_2 = Wait
        L5_2 = 200
        L4_2(L5_2)
      end
    end
    L4_2 = L9_1
    if L4_2 then
      L4_2 = true
      L23_1 = L4_2
      L4_2 = GetEntityCoords
      L5_2 = L8_1
      L5_2 = L5_2[A0_2]
      L4_2 = L4_2(L5_2)
      L5_2 = TurnPedToFaceCoordAndWait
      L6_2 = L3_2
      L7_2 = vector3
      L8_2 = L4_2.x
      L9_2 = L4_2.y
      L10_2 = L4_2.z
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L7_2(L8_2, L9_2, L10_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L3_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = Configuration
      L5_2 = L5_2.ZoomandCameras
      if L5_2 then
        L5_2 = CreateCamPov
        L6_2 = PlayerPedId
        L6_2 = L6_2()
        L7_2 = -4.2
        L8_2 = -3.6
        L9_2 = 0.52
        L10_2 = vector3
        L11_2 = 0.0
        L12_2 = 0.0
        L13_2 = 0.0
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2(L11_2, L12_2, L13_2)
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
      L5_2 = ClearPedTasksImmediately
      L6_2 = L3_2
      L5_2(L6_2)
      L5_2 = AnimationInfinite
      L6_2 = jobs
      L6_2 = L6_2.JobConfig
      L6_2 = L6_2.Tool
      L6_2 = L6_2.animation_action
      L6_2 = L6_2[1]
      L7_2 = jobs
      L7_2 = L7_2.JobConfig
      L7_2 = L7_2.Tool
      L7_2 = L7_2.animation_action
      L7_2 = L7_2[2]
      L8_2 = L3_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = jobs
      L5_2 = L5_2.JobConfig
      L5_2 = L5_2.Tool
      L5_2 = L5_2.objcoord2
      if nil ~= L5_2 then
        L5_2 = jobs
        L5_2 = L5_2.JobConfig
        L5_2 = L5_2.Tool
        L5_2 = L5_2.objcoord2
        L6_2 = AttachEntityToEntity
        L7_2 = tool2
        L8_2 = L3_2
        L9_2 = GetPedBoneIndex
        L10_2 = L3_2
        L11_2 = L5_2[1]
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L5_2[2]
        L11_2 = L5_2[3]
        L12_2 = L5_2[4]
        L13_2 = L5_2[5]
        L14_2 = L5_2[6]
        L15_2 = L5_2[7]
        L16_2 = true
        L17_2 = true
        L18_2 = false
        L19_2 = true
        L20_2 = 1
        L21_2 = true
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
      L5_2 = typejob
      if 1 == L5_2 then
        L5_2 = lobby
        L5_2 = L5_2.jobconfig
        L5_2 = L5_2.skill
        L5_2 = L5_2.use
        if L5_2 then
          L5_2 = skill_custom
          L5_2 = L5_2()
          if not L5_2 then
            L6_2 = Notify
            L7_2 = "success"
            L8_2 = _U
            L9_2 = "JOBS_NOTIFICATION_TASK_FAILED"
            L8_2 = L8_2(L9_2)
            L9_2 = time
            L10_2 = "client"
            L6_2(L7_2, L8_2, L9_2, L10_2)
            L6_2 = lobby
            L6_2 = L6_2.jobconfig
            L6_2 = L6_2.skill
            L6_2 = L6_2.particles
            if "" ~= L6_2 then
              L6_2 = SetPtfxAssetNextCall
              L7_2 = "core"
              L6_2(L7_2)
              L6_2 = StartParticleFxLoopedAtCoord
              L7_2 = lobby
              L7_2 = L7_2.jobconfig
              L7_2 = L7_2.skill
              L7_2 = L7_2.particles
              L8_2 = vector3
              L9_2 = lobby
              L9_2 = L9_2.task
              L9_2 = L9_2[A0_2]
              L9_2 = L9_2.coord
              L9_2 = L9_2.x
              L10_2 = lobby
              L10_2 = L10_2.task
              L10_2 = L10_2[A0_2]
              L10_2 = L10_2.coord
              L10_2 = L10_2.y
              L11_2 = lobby
              L11_2 = L11_2.task
              L11_2 = L11_2[A0_2]
              L11_2 = L11_2.coord
              L11_2 = L11_2.z
              L8_2 = L8_2(L9_2, L10_2, L11_2)
              L9_2 = 0.0
              L10_2 = 0.0
              L11_2 = 0.0
              L12_2 = 2.1
              L13_2 = false
              L14_2 = false
              L15_2 = false
              L16_2 = false
              L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              name = L6_2
              L6_2 = SetParticleFxLoopedAlpha
              L7_2 = "particlefailed"
              L8_2 = A0_2
              L7_2 = L7_2 .. L8_2
              L8_2 = 0.8
              L6_2(L7_2, L8_2)
              L6_2 = SetParticleFxLoopedColour
              L7_2 = "particlefailed"
              L8_2 = A0_2
              L7_2 = L7_2 .. L8_2
              L8_2 = 0.0
              L9_2 = 0.0
              L10_2 = 0.0
              L11_2 = 0
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
            end
            L6_2 = lobby
            L6_2 = L6_2.task
            L6_2 = L6_2[A0_2]
            L6_2.take = false
            L6_2 = pairs
            L7_2 = lobby
            L7_2 = L7_2.users
            L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
            for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
              L12_2 = TriggerServerEvent
              L13_2 = "Buty-InfiniteJobs:server:update"
              L14_2 = L10_2
              L15_2 = "none"
              L16_2 = true
              L17_2 = lobby
              L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
            end
            L6_2 = false
            L23_1 = L6_2
            L6_2 = EndCam
            L6_2()
            L6_2 = ClearPedTasks
            L7_2 = L3_2
            L6_2(L7_2)
            L6_2 = FreezeEntityPosition
            L7_2 = L3_2
            L8_2 = false
            L6_2(L7_2, L8_2)
            wait_to_task = false
            L6_2 = TriggerServerEvent
            L7_2 = "Buty-InfiniteJobs:server:releaseTask"
            L8_2 = A0_2
            L9_2 = lobby
            L6_2(L7_2, L8_2, L9_2)
            L6_2 = jobs
            L6_2 = L6_2.JobConfig
            L6_2 = L6_2.Tool
            L6_2 = L6_2.objcoord2
            if nil ~= L6_2 then
              L6_2 = jobs
              L6_2 = L6_2.JobConfig
              L6_2 = L6_2.Tool
              L6_2 = L6_2.objcoord
              L7_2 = AttachEntityToEntity
              L8_2 = tool2
              L9_2 = L3_2
              L10_2 = GetPedBoneIndex
              L11_2 = L3_2
              L12_2 = L6_2[1]
              L10_2 = L10_2(L11_2, L12_2)
              L11_2 = L6_2[2]
              L12_2 = L6_2[3]
              L13_2 = L6_2[4]
              L14_2 = L6_2[5]
              L15_2 = L6_2[6]
              L16_2 = L6_2[7]
              L17_2 = true
              L18_2 = true
              L19_2 = false
              L20_2 = true
              L21_2 = 1
              L22_2 = true
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
            end
            return
          end
        end
      end
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = jobs
      L6_2 = L6_2.JobConfig
      L6_2 = L6_2.Tool
      L6_2 = L6_2.animation_action
      L6_2 = L6_2[3]
      L5_2(L6_2)
      L5_2 = typejob
      if 1 == L5_2 then
        L5_2 = jobs
        L5_2 = L5_2.JobConfig
        L5_2 = L5_2.deleteprop
        if L5_2 then
          goto lbl_312
        end
      end
      L5_2 = typejob
      ::lbl_312::
      if 1 ~= L5_2 then
        L5_2 = jobs
        L5_2 = L5_2.JobConfig
        L5_2 = L5_2.Tool
        L5_2 = L5_2.particles
        if "" ~= L5_2 then
          L5_2 = SetPtfxAssetNextCall
          L6_2 = "core"
          L5_2(L6_2)
          L5_2 = StartParticleFxLoopedAtCoord
          L6_2 = jobs
          L6_2 = L6_2.JobConfig
          L6_2 = L6_2.Tool
          L6_2 = L6_2.particles
          L7_2 = vector3
          L8_2 = lobby
          L8_2 = L8_2.task
          L8_2 = L8_2[A0_2]
          L8_2 = L8_2.coord
          L8_2 = L8_2.x
          L9_2 = lobby
          L9_2 = L9_2.task
          L9_2 = L9_2[A0_2]
          L9_2 = L9_2.coord
          L9_2 = L9_2.y
          L10_2 = lobby
          L10_2 = L10_2.task
          L10_2 = L10_2[A0_2]
          L10_2 = L10_2.coord
          L10_2 = L10_2.z
          L7_2 = L7_2(L8_2, L9_2, L10_2)
          L8_2 = 0.0
          L9_2 = 0.0
          L10_2 = 0.0
          L11_2 = 2.1
          L12_2 = false
          L13_2 = false
          L14_2 = false
          L15_2 = false
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          name = L5_2
          L5_2 = SetParticleFxLoopedAlpha
          L6_2 = "particle"
          L7_2 = A0_2
          L6_2 = L6_2 .. L7_2
          L7_2 = 0.8
          L5_2(L6_2, L7_2)
          L5_2 = SetParticleFxLoopedColour
          L6_2 = "particle"
          L7_2 = A0_2
          L6_2 = L6_2 .. L7_2
          L7_2 = 0.0
          L8_2 = 0.0
          L9_2 = 0.0
          L10_2 = 0
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        end
        L5_2 = pairs
        L6_2 = lobby
        L6_2 = L6_2.users
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L26_1 = A0_2
          L11_2 = TriggerServerEvent
          L12_2 = "Buty-InfiniteJobs:server:RemplaceTaskObj"
          L13_2 = L9_2
          L14_2 = lobby
          L15_2 = A0_2
          L16_2 = A2_2
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        end
      end
      L5_2 = Wait
      L6_2 = 200
      L5_2(L6_2)
      L5_2 = EndCam
      L5_2()
      L5_2 = ClearPedTasks
      L6_2 = L3_2
      L5_2(L6_2)
      L5_2 = FreezeEntityPosition
      L6_2 = L3_2
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = false
      L23_1 = L5_2
      L5_2 = Notify
      L6_2 = "success"
      L7_2 = _U
      L8_2 = "JOBS_NOTIFICATION_FINISH_TASK"
      L7_2 = L7_2(L8_2)
      L8_2 = time
      L9_2 = "client"
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = typejob
      if 1 == L5_2 then
        L5_2 = lobby
        L6_2 = lobby
        L6_2 = L6_2.total_task
        L6_2 = L6_2 - 1
        L5_2.total_task = L6_2
        L5_2 = pairs
        L6_2 = lobby
        L6_2 = L6_2.users
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = TriggerServerEvent
          L12_2 = "Buty-InfiniteJobs:server:update"
          L13_2 = L9_2
          L14_2 = "task"
          L15_2 = false
          L16_2 = lobby
          L17_2 = A0_2
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        end
      end
      wait_to_task = false
      L5_2 = TriggerServerEvent
      L6_2 = "Buty-InfiniteJobs:server:releaseTask"
      L7_2 = A0_2
      L8_2 = lobby
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = lobby
      L5_2 = L5_2.task
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.GetItem
      L5_2 = L5_2.use
      if L5_2 then
        L5_2 = TriggerServerEvent
        L6_2 = "buty-InfiniteJobs:server:it"
        L7_2 = GetPlayerServerId
        L8_2 = PlayerId
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2()
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L8_2 = lobby
        L8_2 = L8_2.task
        L8_2 = L8_2[A0_2]
        L8_2 = L8_2.GetItem
        L5_2(L6_2, L7_2, L8_2)
      end
      L5_2 = jobs
      L5_2 = L5_2.JobConfig
      L5_2 = L5_2.Tool
      L5_2 = L5_2.objcoord2
      if nil ~= L5_2 then
        L5_2 = jobs
        L5_2 = L5_2.JobConfig
        L5_2 = L5_2.Tool
        L5_2 = L5_2.objcoord
        L6_2 = AttachEntityToEntity
        L7_2 = tool2
        L8_2 = L3_2
        L9_2 = GetPedBoneIndex
        L10_2 = L3_2
        L11_2 = L5_2[1]
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L5_2[2]
        L11_2 = L5_2[3]
        L12_2 = L5_2[4]
        L13_2 = L5_2[5]
        L14_2 = L5_2[6]
        L15_2 = L5_2[7]
        L16_2 = true
        L17_2 = true
        L18_2 = false
        L19_2 = true
        L20_2 = 1
        L21_2 = true
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
      L5_2 = Configuration
      L5_2 = L5_2.UseTarget
      if L5_2 then
        L5_2 = exports
        L5_2 = L5_2.qtarget
        L6_2 = L5_2
        L5_2 = L5_2.RemoveTargetEntity
        L7_2 = L8_1
        L7_2 = L7_2[A0_2]
        L5_2(L6_2, L7_2)
      end
    else
      L4_2 = Configuration
      L4_2 = L4_2.EquipToolAutomatically
      if not L4_2 then
        wait_to_task = false
        L4_2 = TriggerServerEvent
        L5_2 = "Buty-InfiniteJobs:server:releaseTask"
        L6_2 = A0_2
        L7_2 = lobby
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = Notify
        L5_2 = "success"
        L6_2 = _U
        L7_2 = "JOBS_NOTIFICATION_NO_TOOL"
        L6_2 = L6_2(L7_2)
        L7_2 = time
        L8_2 = "client"
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
    end
  else
    L3_2 = Notify
    L4_2 = "error"
    L5_2 = _U
    L6_2 = "JOBS_NOTIFICATION_TASK_TAKEN"
    L5_2 = L5_2(L6_2)
    L6_2 = time
    L7_2 = "client"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:updateTask"
function L30_1(A0_2, A1_2)
  local L2_2
  L2_2 = lobby
  L2_2 = L2_2.task
  L2_2 = L2_2[A0_2]
  L2_2.take = A1_2
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:restartTask"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.task
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = A0_2.task
    L7_2 = L7_2[L5_2]
    L7_2.take = false
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:DeleteTaskObj"
function L30_1(A0_2)
  local L1_2, L2_2
  L1_2 = DeleteEntity
  L2_2 = L10_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.entity
  L1_2(L2_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:RemplaceTaskObj"
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = GetEntityCoords
  L3_2 = L8_1
  L3_2 = L3_2[A0_2]
  L2_2 = L2_2(L3_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = DeleteEntity
  L5_2 = L8_1
  L5_2 = L5_2[A0_2]
  L4_2(L5_2)
  L4_2 = L8_1
  L4_2[A0_2] = nil
  L4_2 = typejob
  if 1 == L4_2 then
    return
  end
  L4_2 = CreateObject
  L5_2 = GetHashKey
  L6_2 = lobby
  L6_2 = L6_2.jobconfig
  L6_2 = L6_2.CollectedProp
  L6_2 = L6_2.name
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2.coord
  L6_2 = L6_2.x
  L7_2 = A1_2.coord
  L7_2 = L7_2.y
  L8_2 = A1_2.coord
  L8_2 = L8_2.z
  L8_2 = L8_2 - 1.0
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if nil ~= L4_2 then
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L10_1
    L7_2 = {}
    L7_2.entity = L4_2
    L7_2.take = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = ipairs
  L6_2 = L10_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = Citizen
    L11_2 = L11_2.CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
      L0_3 = GetEntityCoords
      L1_3 = L10_2.entity
      L0_3 = L0_3(L1_3)
      L1_3 = Configuration
      L1_3 = L1_3.UseTarget
      if L1_3 then
        L1_3 = {}
        L1_3.targetType = "entity"
        L2_3 = "task2"
        L3_3 = L9_2
        L2_3 = L2_3 .. L3_3
        L1_3.identifier = L2_3
        L2_3 = L10_2.entity
        L1_3.entitys = L2_3
        L1_3.distance = 1.2
        L2_3 = {}
        L3_3 = {}
        L4_3 = "task2"
        L5_3 = L9_2
        L4_3 = L4_3 .. L5_3
        L3_3.name = L4_3
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
          L0_4 = L11_1
          if not L0_4 then
            L0_4 = TriggerServerEvent
            L1_4 = "Buty-InfiniteJobs:server:tryTakeTask2"
            L2_4 = L9_2
            L3_4 = lobby
            L4_4 = L10_2
            L5_4 = L0_3
            L6_4 = A1_2
            L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4)
          end
        end
        L3_3.action = L4_3
        L3_3.icon = "fa-solid fa-comment"
        L4_3 = _U
        L5_3 = "JOBS_TARGET_ACTION"
        L4_3 = L4_3(L5_3)
        L3_3.label = L4_3
        L2_3[1] = L3_3
        L1_3.options = L2_3
        L2_3 = CreateTarget
        L3_3 = L1_3
        L2_3(L3_3)
        while true do
          L2_3 = L21_1
          if L2_3 then
            return
          else
            sleep = 1000
            L2_3 = GetEntityCoords
            L3_3 = L3_2
            L2_3 = L2_3(L3_3)
            L3_3 = vector3
            L4_3 = L0_3.x
            L5_3 = L0_3.y
            L6_3 = L0_3.z
            L3_3 = L3_3(L4_3, L5_3, L6_3)
            L3_3 = L2_3 - L3_3
            L3_3 = #L3_3
            if L3_3 < 20.0 then
              L4_3 = L10_2.take
              if not L4_3 then
                sleep = 1
                L4_3 = DrawMarker
                L5_3 = 2
                L6_3 = vec3
                L7_3 = L0_3.x
                L8_3 = L0_3.y
                L9_3 = L0_3.z
                L9_3 = L9_3 + 1.2
                L6_3 = L6_3(L7_3, L8_3, L9_3)
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 0.0
                L11_3 = 180.0
                L12_3 = 0.0
                L13_3 = 0.3
                L14_3 = 0.3
                L15_3 = 0.3
                L16_3 = Configuration
                L16_3 = L16_3.Color_Marker
                L16_3 = L16_3[1]
                L17_3 = Configuration
                L17_3 = L17_3.Color_Marker
                L17_3 = L17_3[2]
                L18_3 = Configuration
                L18_3 = L18_3.Color_Marker
                L18_3 = L18_3[3]
                L19_3 = 100
                L20_3 = false
                L21_3 = true
                L22_3 = 2
                L23_3 = true
                L24_3 = false
                L25_3 = false
                L26_3 = false
                L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
              end
            end
          end
          L2_3 = Citizen
          L2_3 = L2_3.Wait
          L3_3 = sleep
          L2_3(L3_3)
        end
      else
        while true do
          L1_3 = L21_1
          if L1_3 then
            return
          else
            sleep = 1000
            L1_3 = GetEntityCoords
            L2_3 = L3_2
            L1_3 = L1_3(L2_3)
            L2_3 = vector3
            L3_3 = L0_3.x
            L4_3 = L0_3.y
            L5_3 = L0_3.z
            L2_3 = L2_3(L3_3, L4_3, L5_3)
            L2_3 = L1_3 - L2_3
            L2_3 = #L2_3
            L3_3 = 1.5
            if L2_3 < L3_3 then
              L3_3 = L10_2.take
              if not L3_3 then
                L3_3 = wait_to_task2
                if not L3_3 then
                  L3_3 = L11_1
                  if not L3_3 then
                    sleep = 1
                    L3_3 = L9_1
                    if L3_3 then
                      L3_3 = Configuration
                      L3_3 = L3_3.EquipToolAutomatically
                      if not L3_3 then
                        L3_3 = hintToDisplay
                        L4_3 = _U
                        L5_3 = "JOBS_NOTIFICATION_PUT_TOOL_BELT"
                        L4_3 = L4_3(L5_3)
                        L5_3 = vector3
                        L6_3 = L0_3.x
                        L7_3 = L0_3.y
                        L8_3 = L0_3.z
                        L8_3 = L8_3 + 1.2
                        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L5_3(L6_3, L7_3, L8_3)
                        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                    end
                    else
                      L3_3 = hintToDisplay
                      L4_3 = _U
                      L5_3 = "JOBS_DRAWTEXT_ACTION"
                      L4_3 = L4_3(L5_3)
                      L5_3 = vector3
                      L6_3 = L0_3.x
                      L7_3 = L0_3.y
                      L8_3 = L0_3.z
                      L8_3 = L8_3 + 1.2
                      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L5_3(L6_3, L7_3, L8_3)
                      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                    end
                    L3_3 = IsControlJustReleased
                    L4_3 = 0
                    L5_3 = 38
                    L3_3 = L3_3(L4_3, L5_3)
                    if L3_3 then
                      L3_3 = L9_1
                      if not L3_3 then
                        L3_3 = L11_1
                        if not L3_3 then
                          L3_3 = IsPedSittingInAnyVehicle
                          L4_3 = L3_2
                          L3_3 = L3_3(L4_3)
                          if not L3_3 then
                            L3_3 = wait_to_task2
                            if not L3_3 then
                              L3_3 = L10_2.take
                              if not L3_3 then
                                L3_3 = TriggerServerEvent
                                L4_3 = "Buty-InfiniteJobs:server:tryTakeTask2"
                                L5_3 = L9_2
                                L6_3 = lobby
                                L7_3 = L10_2
                                L8_3 = L0_3
                                L9_3 = A1_2
                                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                              end
                            end
                          end
                        end
                      end
                    end
                end
              end
            end
            elseif L2_3 < 20.0 then
              L3_3 = L10_2.take
              if not L3_3 then
                sleep = 1
                L3_3 = DrawMarker
                L4_3 = 2
                L5_3 = vec3
                L6_3 = L0_3.x
                L7_3 = L0_3.y
                L8_3 = L0_3.z
                L8_3 = L8_3 + 1.2
                L5_3 = L5_3(L6_3, L7_3, L8_3)
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = 180.0
                L11_3 = 0.0
                L12_3 = 0.3
                L13_3 = 0.3
                L14_3 = 0.3
                L15_3 = Configuration
                L15_3 = L15_3.Color_Marker
                L15_3 = L15_3[1]
                L16_3 = Configuration
                L16_3 = L16_3.Color_Marker
                L16_3 = L16_3[2]
                L17_3 = Configuration
                L17_3 = L17_3.Color_Marker
                L17_3 = L17_3[3]
                L18_3 = 100
                L19_3 = false
                L20_3 = true
                L21_3 = 2
                L22_3 = true
                L23_3 = false
                L24_3 = false
                L25_3 = false
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
              end
            end
          end
          L1_3 = Citizen
          L1_3 = L1_3.Wait
          L2_3 = sleep
          L1_3(L2_3)
        end
      end
    end
    L11_2(L12_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:taskTaken2"
function L30_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  if A1_2 then
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = IsPedSittingInAnyVehicle
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = wait_to_task2
      if not L5_2 then
        wait_to_task2 = true
        L5_2 = L9_1
        if L5_2 then
          L5_2 = Configuration
          L5_2 = L5_2.EquipToolAutomatically
          if L5_2 then
            L5_2 = Animationprop
            L6_2 = "amb@world_human_paparazzi@male@exit"
            L7_2 = "exit"
            L8_2 = L4_2
            L9_2 = 0.5
            L5_2(L6_2, L7_2, L8_2, L9_2)
            L5_2 = GetPedBoneIndex
            L6_2 = L4_2
            L7_2 = 11816
            L5_2 = L5_2(L6_2, L7_2)
            L6_2 = Wait
            L7_2 = 500
            L6_2(L7_2)
            L6_2 = ClearPedTasks
            L7_2 = L4_2
            L6_2(L7_2)
            L6_2 = AttachEntityToEntity
            L7_2 = tool2
            L8_2 = L4_2
            L9_2 = L5_2
            L10_2 = 0.7
            L11_2 = -0.1
            L12_2 = -0.33
            L13_2 = 77.0
            L14_2 = 270.0
            L15_2 = -10.0
            L16_2 = false
            L17_2 = false
            L18_2 = false
            L19_2 = true
            L20_2 = 3
            L21_2 = true
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L6_2 = Configuration
            L6_2 = L6_2.toolbelt
            if L6_2 then
              L6_2 = SetEntityVisible
              L7_2 = tool2
              L8_2 = false
              L9_2 = false
              L6_2(L7_2, L8_2, L9_2)
            end
            L6_2 = false
            L9_1 = L6_2
            L6_2 = Wait
            L7_2 = 200
            L6_2(L7_2)
          end
        end
        L5_2 = L9_1
        if not L5_2 then
          L5_2 = TurnPedToFaceCoordAndWait
          L6_2 = L4_2
          L7_2 = A2_2
          L5_2(L6_2, L7_2)
          L5_2 = FreezeEntityPosition
          L6_2 = L4_2
          L7_2 = true
          L5_2(L6_2, L7_2)
          L5_2 = AnimationInfinite
          L6_2 = "anim@heists@load_box"
          L7_2 = "lift_box"
          L8_2 = L4_2
          L5_2(L6_2, L7_2, L8_2)
          L5_2 = Wait
          L6_2 = 2000
          L5_2(L6_2)
          L5_2 = ClearPedTasks
          L6_2 = L4_2
          L5_2(L6_2)
          L5_2 = pairs
          L6_2 = lobby
          L6_2 = L6_2.users
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
          for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
            L11_2 = TriggerServerEvent
            L12_2 = "Buty-InfiniteJobs:server:DeleteTaskObj"
            L13_2 = L9_2
            L14_2 = A0_2
            L11_2(L12_2, L13_2, L14_2)
          end
          L5_2 = CreateObject
          L6_2 = GetHashKey
          L7_2 = lobby
          L7_2 = L7_2.jobconfig
          L7_2 = L7_2.CollectedProp
          L7_2 = L7_2.name
          L6_2 = L6_2(L7_2)
          L7_2 = GetEntityCoords
          L8_2 = L4_2
          L7_2 = L7_2(L8_2)
          L8_2 = true
          L9_2 = false
          L10_2 = true
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          obj_in_hands = L5_2
          L5_2 = lobby
          L5_2 = L5_2.jobconfig
          L5_2 = L5_2.CollectedProp
          L5_2 = L5_2.attachcoordHands
          L6_2 = AttachEntityToEntity
          L7_2 = obj_in_hands
          L8_2 = L4_2
          L9_2 = GetPedBoneIndex
          L10_2 = L4_2
          L11_2 = L5_2[1]
          L9_2 = L9_2(L10_2, L11_2)
          L10_2 = L5_2[2]
          L11_2 = L5_2[3]
          L12_2 = L5_2[4]
          L13_2 = L5_2[5]
          L14_2 = L5_2[6]
          L15_2 = L5_2[7]
          L16_2 = 1
          L17_2 = 1
          L18_2 = 0
          L19_2 = 1
          L20_2 = 0
          L21_2 = 1
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          L6_2 = AnimationWalk
          L7_2 = lobby
          L7_2 = L7_2.jobconfig
          L7_2 = L7_2.CollectedProp
          L7_2 = L7_2.animAttachHands
          L7_2 = L7_2[1]
          L8_2 = lobby
          L8_2 = L8_2.jobconfig
          L8_2 = L8_2.CollectedProp
          L8_2 = L8_2.animAttachHands
          L8_2 = L8_2[2]
          L9_2 = L4_2
          L6_2(L7_2, L8_2, L9_2)
          L6_2 = true
          L11_1 = L6_2
          L6_2 = pairs
          L7_2 = lobby
          L7_2 = L7_2.users
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
            L12_2 = TriggerServerEvent
            L13_2 = "Buty-InfiniteJobs:server:update"
            L14_2 = L10_2
            L15_2 = "task_take"
            L16_2 = A0_2
            L17_2 = lobby
            L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          end
          L6_2 = Configuration
          L6_2 = L6_2.UseTarget
          if L6_2 then
            L6_2 = exports
            L6_2 = L6_2.qtarget
            L7_2 = L6_2
            L6_2 = L6_2.RemoveZone
            L8_2 = "task2"
            L9_2 = A0_2
            L8_2 = L8_2 .. L9_2
            L6_2(L7_2, L8_2)
            L6_2 = 3
            L24_1 = L6_2
          end
          L6_2 = Notify
          L7_2 = "info"
          L8_2 = _U
          L9_2 = "JOBS_NOTIFICATION_GO_VEHICLE"
          L8_2 = L8_2(L9_2)
          L9_2 = time
          L10_2 = "client"
          L6_2(L7_2, L8_2, L9_2, L10_2)
          wait_to_task2 = false
          L6_2 = FreezeEntityPosition
          L7_2 = L4_2
          L8_2 = false
          L6_2(L7_2, L8_2)
          L6_2 = pairs
          L7_2 = lobby
          L7_2 = L7_2.users
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          for L10_2 in L6_2, L7_2, L8_2, L9_2 do
            L11_2 = TriggerServerEvent
            L12_2 = "Buty-InfiniteJobs:server:update"
            L13_2 = L10_2
            L14_2 = "deletetaskblip"
            L15_2 = false
            L16_2 = lobby
            L17_2 = A3_2.task_index
            L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          end
          L12_1 = A0_2
          L6_2 = TriggerServerEvent
          L7_2 = "Buty-InfiniteJobs:server:releaseTask2"
          L8_2 = A0_2
          L9_2 = lobby
          L6_2(L7_2, L8_2, L9_2)
        else
          wait_to_task2 = false
          L5_2 = TriggerServerEvent
          L6_2 = "Buty-InfiniteJobs:server:releaseTask2"
          L7_2 = A0_2
          L8_2 = lobby
          L5_2(L6_2, L7_2, L8_2)
          L5_2 = Notify
          L6_2 = "info"
          L7_2 = _U
          L8_2 = "JOBS_NOTIFICATION_PUT_TOOL_BELT"
          L7_2 = L7_2(L8_2)
          L8_2 = time
          L9_2 = "client"
          L5_2(L6_2, L7_2, L8_2, L9_2)
        end
      end
    end
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:updateTask"
function L30_1(A0_2, A1_2)
  local L2_2
  L2_2 = lobby
  L2_2 = L2_2.task
  L2_2 = L2_2[A0_2]
  L2_2.take = A1_2
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:updateTask2"
function L30_1(A0_2, A1_2, A2_2)
  A2_2.take = A1_2
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:updateVehicle"
function L30_1(A0_2, A1_2, A2_2)
  getvehicle = A1_2
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:updatePutBox"
function L30_1(A0_2, A1_2, A2_2)
  wait_takeobj = A1_2
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:updateTakeBox"
function L30_1(A0_2, A1_2, A2_2)
  wait_taketool = A1_2
end
L28_1(L29_1, L30_1)
function L28_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = GetEntityCoords
  L7_2 = A0_2
  L8_2 = true
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2(L7_2, L8_2)
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = table
  L8_2 = L8_2.unpack
  L9_2 = GetEntityCoords
  L10_2 = A0_2
  L11_2 = true
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2(L10_2, L11_2)
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = GetEntityForwardX
  L12_2 = A0_2
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 * A1_2
  L11_2 = L8_2 + L11_2
  L12_2 = GetEntityForwardY
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L12_2 = L12_2 * A2_2
  L12_2 = L9_2 + L12_2
  L13_2 = L10_2 + A3_2
  L14_2 = vector3
  L15_2 = L11_2
  L16_2 = L12_2
  L17_2 = L13_2
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  camCoords = L14_2
  L14_2 = GetEntityRotation
  L15_2 = A0_2
  L16_2 = 2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = L14_2 + A4_2
  camRotation = L15_2
  L15_2 = CreateCamWithParams
  L16_2 = "DEFAULT_SCRIPTED_CAMERA"
  L17_2 = camCoords
  L18_2 = camRotation
  L19_2 = GetGameplayCamFov
  L19_2, L20_2 = L19_2()
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  cam = L15_2
  L15_2 = SetCamActive
  L16_2 = cam
  L17_2 = true
  L15_2(L16_2, L17_2)
  L15_2 = RenderScriptCams
  L16_2 = true
  L17_2 = true
  L18_2 = 1000
  L19_2 = true
  L20_2 = false
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
end
CreateCamPov = L28_1
L28_1 = RegisterNetEvent
L29_1 = "onResourceStop"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "onResourceStop"
function L30_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 ~= A0_2 then
    return
  end
  L1_2 = npcsell
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = npcsell
    L1_2(L2_2)
  end
  L1_2 = cancelall
  L1_2()
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "buty-InfiniteJobs:client:DeleteGroup"
function L30_1()
  local L0_2, L1_2
  injob = false
  cancel = true
  L0_2 = true
  L19_1 = L0_2
  L0_2 = true
  L21_1 = L0_2
  L0_2 = true
  L20_1 = L0_2
  L0_2 = cancelall
  L0_2()
end
L28_1(L29_1, L30_1)
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = wait_clothes
  if not L0_2 then
    L0_2 = wait_pay
    if not L0_2 then
      L0_2 = wait_takeobj
      if not L0_2 then
        L0_2 = wait_vehicle
        if not L0_2 then
          L0_2 = wait_taketool
          if not L0_2 then
            L0_2 = wait_to_task2
            if not L0_2 then
              L0_2 = wait_process
              if not L0_2 then
                L0_2 = wait_takeobj
                if not L0_2 then
                  L0_2 = next
                  L1_2 = lobby
                  L0_2 = L0_2(L1_2)
                  if nil ~= L0_2 then
                    L0_2 = Notify
                    L1_2 = "info"
                    L2_2 = _U
                    L3_2 = "JOBS_NOTIFICATION_JOB_CANCEL"
                    L2_2 = L2_2(L3_2)
                    L3_2 = time
                    L4_2 = "client"
                    L0_2(L1_2, L2_2, L3_2, L4_2)
                    L0_2 = pairs
                    L1_2 = lobby
                    L1_2 = L1_2.users
                    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
                    for L4_2 in L0_2, L1_2, L2_2, L3_2 do
                      L5_2 = TriggerServerEvent
                      L6_2 = "buty-InfiniteJobs:server:DeleteGroup"
                      L7_2 = L4_2
                      L8_2 = lobby
                      L5_2(L6_2, L7_2, L8_2)
                    end
                  else
                    L0_2 = TriggerServerEvent
                    L1_2 = "buty-InfiniteJobs:server:DeleteGroup"
                    L2_2 = GetPlayerServerId
                    L3_2 = PlayerId
                    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2()
                    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
                    L3_2 = lobby
                    L0_2(L1_2, L2_2, L3_2)
                  end
              end
            end
          end
        end
      end
    end
  end
  else
    L0_2 = Notify
    L1_2 = "error"
    L2_2 = _U
    L3_2 = "JOBS_NOTIFICATION_NO_CANCEL"
    L2_2 = L2_2(L3_2)
    L3_2 = time
    L4_2 = "client"
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end
canceljob = L28_1
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = tool
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = tool
    L0_2(L1_2)
  end
  L0_2 = WorkclothesPROP
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = WorkclothesPROP
    L0_2(L1_2)
  end
  L0_2 = VehiclePROP
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = VehiclePROP
    L0_2(L1_2)
  end
  L0_2 = L7_1
  if L0_2 then
    L0_2 = Removevehicle
    L1_2 = L7_1
    L0_2(L1_2)
  end
  L0_2 = obj_in_hands
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = obj_in_hands
    L0_2(L1_2)
  end
  L0_2 = changeclothes
  if L0_2 then
    L0_2 = restorePlayerClothes
    L0_2()
  end
  L0_2 = tool2
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = tool2
    L0_2(L1_2)
  end
  L0_2 = vehicle_blip
  if nil ~= L0_2 then
    L0_2 = RemoveBlip
    L1_2 = vehicle_blip
    L0_2(L1_2)
  end
  L0_2 = workclothes_blip
  if nil ~= L0_2 then
    L0_2 = RemoveBlip
    L1_2 = workclothes_blip
    L0_2(L1_2)
  end
  L0_2 = payment_blip
  if nil ~= L0_2 then
    L0_2 = RemoveBlip
    L1_2 = payment_blip
    L0_2(L1_2)
  end
  L0_2 = ProcessPROP
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = ProcessPROP
    L0_2(L1_2)
  end
  L0_2 = ProcessPROP2
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = ProcessPROP2
    L0_2(L1_2)
  end
  L0_2 = processbox
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = processbox
    L0_2(L1_2)
  end
  L0_2 = boxprocess
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = boxprocess
    L0_2(L1_2)
  end
  L0_2 = WorkclothesCoord
  if L0_2 then
    WorkclothesCoord = nil
  end
  L0_2 = VehicleCoord
  if L0_2 then
    VehicleCoord = nil
  end
  L0_2 = ProcessCoord
  if L0_2 then
    ProcessCoord = nil
  end
  L0_2 = npcpay
  if L0_2 then
    L0_2 = DeleteEntity
    L1_2 = npcpay
    L0_2(L1_2)
  end
  L0_2 = Configuration
  L0_2 = L0_2.RequireJobFromAllGroup
  if not L0_2 then
    L0_2 = Configuration
    L0_2 = L0_2.JobForID
    if not L0_2 then
      L0_2 = job_main
      jobs = L0_2
    end
  end
  L0_2 = false
  L22_1 = L0_2
  L0_2 = next
  L1_2 = lobby
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = pairs
    L1_2 = lobby
    L1_2 = L1_2.users
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2 in L0_2, L1_2, L2_2, L3_2 do
      L5_2 = ClearPedTasksImmediately
      L6_2 = PlayerPedId
      L7_2 = L4_2
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
    L0_2 = TriggerServerEvent
    L1_2 = "Buty-InfiniteJobs:server:updateVehicle"
    L2_2 = lobby
    L0_2(L1_2, L2_2)
    L0_2 = TriggerServerEvent
    L1_2 = "Buty-InfiniteJobs:server:updatePutBox"
    L2_2 = lobby
    L0_2(L1_2, L2_2)
    L0_2 = TriggerServerEvent
    L1_2 = "Buty-InfiniteJobs:server:updateTakeBox"
    L2_2 = lobby
    L0_2(L1_2, L2_2)
  end
  L0_2 = Configuration
  L0_2 = L0_2.UseTarget
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.qtarget
    L1_2 = L0_2
    L0_2 = L0_2.RemoveZone
    L2_2 = "creategroup"
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.qtarget
    L1_2 = L0_2
    L0_2 = L0_2.RemoveZone
    L2_2 = "workclothes"
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.qtarget
    L1_2 = L0_2
    L0_2 = L0_2.RemoveZone
    L2_2 = "vehicle"
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.qtarget
    L1_2 = L0_2
    L0_2 = L0_2.RemoveZone
    L2_2 = "process"
    L0_2(L1_2, L2_2)
    L0_2 = exports
    L0_2 = L0_2.qtarget
    L1_2 = L0_2
    L0_2 = L0_2.RemoveZone
    L2_2 = "pay"
    L0_2(L1_2, L2_2)
    L0_2 = typejob
    if 1 == L0_2 then
      L0_2 = lobby
      L0_2 = L0_2.task
      if nil ~= L0_2 then
        L0_2 = next
        L1_2 = lobby
        L1_2 = L1_2.task
        L0_2 = L0_2(L1_2)
        if nil ~= L0_2 then
          L0_2 = pairs
          L1_2 = lobby
          L1_2 = L1_2.task
          L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
          for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
            L6_2 = exports
            L6_2 = L6_2.qtarget
            L7_2 = L6_2
            L6_2 = L6_2.RemoveZone
            L8_2 = "task"
            L9_2 = L4_2
            L8_2 = L8_2 .. L9_2
            L6_2(L7_2, L8_2)
          end
        end
      end
    else
      L0_2 = next
      L1_2 = L8_1
      L0_2 = L0_2(L1_2)
      if nil ~= L0_2 then
        L0_2 = pairs
        L1_2 = L8_1
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
        for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
          L6_2 = exports
          L6_2 = L6_2.qtarget
          L7_2 = L6_2
          L6_2 = L6_2.RemoveZone
          L8_2 = "task"
          L9_2 = L4_2
          L8_2 = L8_2 .. L9_2
          L6_2(L7_2, L8_2)
        end
      end
    end
    L0_2 = next
    L1_2 = L10_1
    L0_2 = L0_2(L1_2)
    if nil ~= L0_2 then
      L0_2 = pairs
      L1_2 = L10_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = exports
        L6_2 = L6_2.qtarget
        L7_2 = L6_2
        L6_2 = L6_2.RemoveZone
        L8_2 = "task2"
        L9_2 = L4_2
        L8_2 = L8_2 .. L9_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  L0_2 = next
  L1_2 = task_blip
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = pairs
    L1_2 = lobby
    L1_2 = L1_2.task
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = RemoveBlip
      L7_2 = task_blip
      L7_2 = L7_2[L4_2]
      L6_2(L7_2)
    end
    L0_2 = {}
    task_blip = L0_2
  end
  L0_2 = next
  L1_2 = L5_1
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = pairs
    L1_2 = L5_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = pairs
      L7_2 = L5_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = DeleteEntity
        L13_2 = tonumber
        L14_2 = L11_2.entity
        L13_2, L14_2 = L13_2(L14_2)
        L12_2(L13_2, L14_2)
        L12_2 = {}
        L5_1 = L12_2
      end
    end
  end
  L0_2 = next
  L1_2 = L10_1
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = pairs
    L1_2 = L10_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = SetEntityAsMissionEntity
      L7_2 = L5_2.entity
      L8_2 = true
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = DeleteEntity
      L7_2 = L5_2.entity
      L6_2(L7_2)
    end
    L0_2 = {}
    L10_1 = L0_2
  end
  L0_2 = next
  L1_2 = L8_1
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = pairs
    L1_2 = L8_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = SetEntityAsMissionEntity
      L7_2 = L5_2
      L8_2 = true
      L9_2 = true
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = RemoveBlip
      L7_2 = task_blip
      L7_2 = L7_2[L4_2]
      L6_2(L7_2)
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
    L0_2 = {}
    L8_1 = L0_2
  end
  L0_2 = next
  L1_2 = L14_1
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    L0_2 = pairs
    L1_2 = L14_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
    L0_2 = {}
    L14_1 = L0_2
    L0_2 = 0
    L13_1 = L0_2
  end
  L0_2 = {}
  lobby = L0_2
  L0_2 = {}
  L3_1 = L0_2
  L0_2 = nil
  L7_1 = L0_2
  L0_2 = true
  L9_1 = L0_2
  injob = false
  L0_2 = 1
  L6_1 = L0_2
  L0_2 = false
  L23_1 = L0_2
  activatepay = false
  taketool = false
  L0_2 = 0
  L16_1 = L0_2
  opencreategroup = false
  L0_2 = false
  L11_1 = L0_2
  L0_2 = false
  L17_1 = L0_2
  L0_2 = nil
  L24_1 = L0_2
  L0_2 = 1
  L24_1 = L0_2
  job_incurse = false
  L0_2 = false
  L15_1 = L0_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  cancel = false
  L0_2 = false
  L19_1 = L0_2
  L0_2 = false
  L21_1 = L0_2
  L0_2 = false
  L20_1 = L0_2
  L0_2 = GetResourceState
  L1_2 = "qs-inventory"
  L0_2 = L0_2(L1_2)
  L0_2 = "started" == L0_2
  if L0_2 then
    L1_2 = pcall
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = exports
      L0_3 = L0_3["qs-inventory"]
      L1_3 = L0_3
      L0_3 = L0_3.setInClothing
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L1_2, L2_2 = L1_2(L2_2)
  end
end
cancelall = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = RequestAnimDict
  L4_2 = A0_2
  L3_2(L4_2)
  while true do
    L3_2 = HasAnimDictLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = TaskPlayAnim
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = 8.0
  L8_2 = -8.0
  L9_2 = -1
  L10_2 = 50
  L11_2 = 0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
AnimationWalk = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = RequestAnimDict
  L4_2 = A0_2
  L3_2(L4_2)
  while true do
    L3_2 = HasAnimDictLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = TaskPlayAnim
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = 8.0
  L8_2 = -8.0
  L9_2 = -1
  L10_2 = 0
  L11_2 = 0.0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = RemoveAnimDict
  L4_2 = A0_2
  L3_2(L4_2)
end
Animation = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = lib
  L3_2 = L3_2.requestAnimDict
  L4_2 = A0_2
  L5_2 = 500
  L3_2(L4_2, L5_2)
  L3_2 = TaskPlayAnim
  L4_2 = A2_2
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = 2.0
  L8_2 = 1.0
  L9_2 = 1.0
  L10_2 = 1
  L11_2 = 0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
AnimationInfinite = L28_1
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:OpenDoors"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Buty-InfiniteJobs:client:OpenDoors"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = lobby
  L2_2 = L2_2.jobconfig
  L2_2 = L2_2.Vehicle
  L2_2 = L2_2.doors
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SetVehicleDoorOpen
    L8_2 = A0_2
    L9_2 = L6_2
    L10_2 = false
    L11_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:CloseDoors"
L28_1(L29_1)
L28_1 = AddEventHandler
L29_1 = "Buty-InfiniteJobs:client:CloseDoors"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = lobby
  L2_2 = L2_2.jobconfig
  L2_2 = L2_2.Vehicle
  L2_2 = L2_2.doors
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SetVehicleDoorShut
    L8_2 = A0_2
    L9_2 = L6_2
    L10_2 = false
    L11_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L28_1(L29_1, L30_1)
L28_1 = {}
Locales = L28_1
function L28_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Locales
  L2_2 = Configuration
  L2_2 = L2_2.Language
  L1_2 = L1_2[L2_2]
  if nil ~= L1_2 then
    L1_2 = Locales
    L2_2 = Configuration
    L2_2 = L2_2.Language
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2[A0_2]
    if nil ~= L1_2 then
      L1_2 = string
      L1_2 = L1_2.format
      L2_2 = Locales
      L3_2 = Configuration
      L3_2 = L3_2.Language
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2[A0_2]
      L3_2, L4_2, L5_2 = ...
      return L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = "Translation ["
      L2_2 = Configuration
      L2_2 = L2_2.Language
      L3_2 = "]["
      L4_2 = A0_2
      L5_2 = "] does not exist"
      L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
      return L1_2
    end
  else
    L1_2 = "Locale ["
    L2_2 = Configuration
    L2_2 = L2_2.Language
    L3_2 = "] does not exist"
    L1_2 = L1_2 .. L2_2 .. L3_2
    return L1_2
  end
end
_ = L28_1
function L28_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tostring
  L2_2 = _
  L3_2 = A0_2
  L4_2, L5_2 = ...
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "^%l"
  L5_2 = string
  L5_2 = L5_2.upper
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
_U = L28_1
function L28_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = RequestAnimDict
  L5_2 = A0_2
  L4_2(L5_2)
  while true do
    L4_2 = HasAnimDictLoaded
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = TaskPlayAnim
  L5_2 = A2_2
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = 8.0
  L9_2 = -8.0
  L10_2 = -1
  L11_2 = 50
  L12_2 = 0.0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = RemoveAnimDict
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 50
  L4_2(L5_2)
  if nil ~= A3_2 then
    L4_2 = SetEntityAnimCurrentTime
    L5_2 = A2_2
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
Animationprop = L28_1
function L28_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = 5
    L2_3 = _U
    L3_3 = "JOBS_NOTIFICATION_EQUIP_TOOL"
    L2_3 = L2_3(L3_3)
    text_tool = L2_3
    while true do
      L2_3 = cancel
      if L2_3 then
        return
      else
        L2_3 = taketool
        if not L2_3 then
          return
        end
        L2_3 = IsControlJustReleased
        L3_3 = 0
        L4_3 = 47
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = invehicle
          if not L2_3 then
            L2_3 = L9_1
            if not L2_3 then
              L2_3 = L11_1
              if not L2_3 then
                L2_3 = L15_1
                if not L2_3 then
                  L2_3 = Configuration
                  L2_3 = L2_3.toolbelt
                  if L2_3 then
                    L2_3 = SetEntityVisible
                    L3_3 = tool2
                    L4_3 = true
                    L5_3 = false
                    L2_3(L3_3, L4_3, L5_3)
                  end
                  L2_3 = _U
                  L3_3 = "JOBS_NOTIFICATION_UNEQUIP_TOOL"
                  L2_3 = L2_3(L3_3)
                  text_tool = L2_3
                  L2_3 = Animationprop
                  L3_3 = "amb@world_human_paparazzi@male@enter"
                  L4_3 = "enter"
                  L5_3 = L0_3
                  L6_3 = nil
                  L2_3(L3_3, L4_3, L5_3, L6_3)
                  L2_3 = Wait
                  L3_3 = 500
                  L2_3(L3_3)
                  L2_3 = ClearPedTasks
                  L3_3 = L0_3
                  L2_3(L3_3)
                  L2_3 = Wait
                  L3_3 = 50
                  L2_3(L3_3)
                  L2_3 = jobs
                  L2_3 = L2_3.JobConfig
                  L2_3 = L2_3.Tool
                  L2_3 = L2_3.objcoord
                  L3_3 = AttachEntityToEntity
                  L4_3 = tool2
                  L5_3 = L0_3
                  L6_3 = GetPedBoneIndex
                  L7_3 = L0_3
                  L8_3 = L2_3[1]
                  L6_3 = L6_3(L7_3, L8_3)
                  L7_3 = L2_3[2]
                  L8_3 = L2_3[3]
                  L9_3 = L2_3[4]
                  L10_3 = L2_3[5]
                  L11_3 = L2_3[6]
                  L12_3 = L2_3[7]
                  L13_3 = true
                  L14_3 = true
                  L15_3 = false
                  L16_3 = true
                  L17_3 = 1
                  L18_3 = true
                  L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                  L3_3 = true
                  L9_1 = L3_3
              end
              else
                L2_3 = Notify
                L3_3 = "info"
                L4_3 = _U
                L5_3 = "JOBS_NOTIFICATION_HANDS_BUSY"
                L4_3 = L4_3(L5_3)
                L5_3 = time
                L6_3 = "client"
                L2_3(L3_3, L4_3, L5_3, L6_3)
              end
            else
              L2_3 = L23_1
              if not L2_3 then
                L2_3 = _U
                L3_3 = "JOBS_NOTIFICATION_EQUIP_TOOL"
                L2_3 = L2_3(L3_3)
                text_tool = L2_3
                L2_3 = Animationprop
                L3_3 = "amb@world_human_paparazzi@male@exit"
                L4_3 = "exit"
                L5_3 = L0_3
                L6_3 = 0.5
                L2_3(L3_3, L4_3, L5_3, L6_3)
                L2_3 = Wait
                L3_3 = 500
                L2_3(L3_3)
                L2_3 = ClearPedTasks
                L3_3 = L0_3
                L2_3(L3_3)
                L2_3 = jobs
                L2_3 = L2_3.JobConfig
                L2_3 = L2_3.Tool
                L2_3 = L2_3.objcoordbelt
                L3_3 = AttachEntityToEntity
                L4_3 = tool2
                L5_3 = L0_3
                L6_3 = GetPedBoneIndex
                L7_3 = L0_3
                L8_3 = L2_3[1]
                L6_3 = L6_3(L7_3, L8_3)
                L7_3 = L2_3[2]
                L8_3 = L2_3[3]
                L9_3 = L2_3[4]
                L10_3 = L2_3[5]
                L11_3 = L2_3[6]
                L12_3 = L2_3[7]
                L13_3 = false
                L14_3 = false
                L15_3 = false
                L16_3 = true
                L17_3 = 3
                L18_3 = true
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                L3_3 = Configuration
                L3_3 = L3_3.toolbelt
                if L3_3 then
                  L3_3 = SetEntityVisible
                  L4_3 = tool2
                  L5_3 = false
                  L6_3 = false
                  L3_3(L4_3, L5_3, L6_3)
                end
                L3_3 = false
                L9_1 = L3_3
              end
            end
          end
        end
      end
      L2_3 = IsPedSittingInAnyVehicle
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L1_3 = 50
        invehicle = true
        L2_3 = SetEntityVisible
        L3_3 = tool2
        L4_3 = false
        L5_3 = false
        L2_3(L3_3, L4_3, L5_3)
      else
        L1_3 = 5
        invehicle = false
        L2_3 = SetEntityVisible
        L3_3 = tool2
        L4_3 = true
        L5_3 = false
        L2_3(L3_3, L4_3, L5_3)
      end
      L2_3 = tooltext
      L3_3 = text_tool
      L2_3(L3_3)
      L2_3 = Wait
      L3_3 = L1_3
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
tool_take = L28_1
L28_1 = RegisterNetEvent
L29_1 = "Buty-InfiniteJobs:client:npcspawn"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = RequestModel
  L2_2 = GetHashKey
  L3_2 = A0_2.model
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = GetHashKey
    L3_2 = A0_2.model
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1
    L1_2(L2_2)
  end
  L1_2 = CreatePed
  L2_2 = 4
  L3_2 = GetHashKey
  L4_2 = A0_2.model
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.coord
  L4_2 = L4_2.x
  L5_2 = A0_2.coord
  L5_2 = L5_2.y
  L6_2 = A0_2.coord
  L6_2 = L6_2.z
  L6_2 = L6_2 - 1.0
  L7_2 = A0_2.coord
  L7_2 = L7_2.w
  L8_2 = false
  L9_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  npcsell = L1_2
  L1_2 = SetEntityAsMissionEntity
  L2_2 = npcsell
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = FreezeEntityPosition
  L2_2 = npcsell
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetBlockingOfNonTemporaryEvents
  L2_2 = npcsell
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityInvincible
  L2_2 = npcsell
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = TaskStartScenarioInPlace
  L2_2 = npcsell
  L3_2 = "WORLD_HUMAN_CLIPBOARD"
  L4_2 = 0
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Configuration
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = {}
    L1_2.targetType = "entity"
    L1_2.identifier = "sell"
    L2_2 = npcsell
    L1_2.entitys = L2_2
    L1_2.distance = 1.2
    L2_2 = {}
    L3_2 = {}
    L3_2.name = "sell"
    function L4_2()
      local L0_3, L1_3
      L0_3 = Sell
      L0_3()
    end
    L3_2.action = L4_2
    L3_2.icon = "fa-solid fa-comment"
    L4_2 = _U
    L5_2 = "JOBS_TARGET_SELL"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L2_2[1] = L3_2
    L1_2.options = L2_2
    L2_2 = CreateTarget
    L3_2 = L1_2
    L2_2(L3_2)
  else
    while true do
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = 1000
      L4_2 = GetEntityCoords
      L5_2 = npcsell
      L4_2 = L4_2(L5_2)
      L5_2 = L2_2 - L4_2
      L5_2 = #L5_2
      if L5_2 < 5.0 then
        L3_2 = 0
        L6_2 = 1.5
        if L5_2 < L6_2 then
          L6_2 = hintToDisplay
          L7_2 = _U
          L8_2 = "JOBS_DRAWTEXT_SELL"
          L7_2 = L7_2(L8_2)
          L8_2 = vec3
          L9_2 = L4_2.x
          L10_2 = L4_2.y
          L11_2 = L4_2.z
          L11_2 = L11_2 + 1.0
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
          L6_2 = IsControlJustReleased
          L7_2 = 0
          L8_2 = 38
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 then
            L6_2 = ui_open
            if not L6_2 then
              L6_2 = Sell
              L6_2()
            end
          end
        end
      end
      L6_2 = Citizen
      L6_2 = L6_2.Wait
      L7_2 = L3_2
      L6_2(L7_2)
    end
  end
end
L28_1(L29_1, L30_1)
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "Buty-InfiniteJobs:server:GetItems"
  L2_2 = false
  L3_2 = Config_Sell
  L3_2 = L3_2.items
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  ui_open = true
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "sell"
  L2_2.status = true
  L2_2.items = L0_2
  L3_2 = Config_Sell
  L3_2 = L3_2.wholesale
  L2_2.wholesalecount = L3_2
  L3_2 = Config_Sell
  L3_2 = L3_2.retail
  L2_2.retailtcount = L3_2
  L3_2 = Configuration
  L3_2 = L3_2.Color_UI
  L2_2.color = L3_2
  L3_2 = {}
  L4_2 = _U
  L5_2 = "JOBS_UI_30"
  L4_2 = L4_2(L5_2)
  L3_2[1] = L4_2
  L4_2 = _U
  L5_2 = "JOBS_UI_31"
  L4_2 = L4_2(L5_2)
  L3_2[2] = L4_2
  L4_2 = _U
  L5_2 = "JOBS_UI_32"
  L4_2 = L4_2(L5_2)
  L3_2[3] = L4_2
  L4_2 = _U
  L5_2 = "JOBS_UI_33"
  L4_2 = L4_2(L5_2)
  L3_2[4] = L4_2
  L4_2 = _U
  L5_2 = "JOBS_UI_34"
  L4_2 = L4_2(L5_2)
  L3_2[5] = L4_2
  L4_2 = _U
  L5_2 = "JOBS_UI_36"
  L4_2 = L4_2(L5_2)
  L3_2[6] = L4_2
  L2_2.translate = L3_2
  L1_2(L2_2)
end
Sell = L28_1
L28_1 = RegisterNUICallback
L29_1 = "closesell"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "sell"
  L2_2.status = false
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 500
  L1_2(L2_2)
  ui_open = false
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNUICallback
L29_1 = "closefinish"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "finish_menu"
  L2_2.status = false
  L1_2(L2_2)
end
L28_1(L29_1, L30_1)
L28_1 = RegisterNUICallback
L29_1 = "sell"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "Buty-InfiniteJobs:server:s3ll3"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L28_1(L29_1, L30_1)
L28_1 = false
L29_1 = RegisterNUICallback
L30_1 = "finish"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L28_1
  if L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = lobby
  L2_2 = L2_2.users
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2 = TriggerServerEvent
    L7_2 = "Buty-InfiniteJobs:server:P%4$Y"
    L8_2 = L5_2
    L9_2 = lobby
    L9_2 = L9_2.jobconfig
    L9_2 = L9_2.Finish
    L10_2 = lobby
    L11_2 = L10_2.jobid
    L10_2 = L0_1
    L10_2 = L10_2[L11_2]
    L11_2 = lobby
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L1_2 = Wait
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = Configuration
  L1_2 = L1_2.UseTarget
  if L1_2 then
    L1_2 = exports
    L1_2 = L1_2.qtarget
    L2_2 = L1_2
    L1_2 = L1_2.RemoveTargetEntity
    L3_2 = npcpay
    L1_2(L2_2, L3_2)
  end
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "Buty-InfiniteJobs:server:CheckLimit"
  L3_2 = false
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if "yes" == A0_2 then
    if not L1_2 then
      L2_2 = jobs
      L2_2 = L2_2.JobConfig
      L3_2 = math
      L3_2 = L3_2.random
      L4_2 = 1
      L5_2 = jobs
      L5_2 = L5_2.JobConfig
      L5_2 = #L5_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L2_2[L3_2]
      L3_2 = Notify
      L4_2 = "success"
      L5_2 = _U
      L6_2 = "JOBS_NOTIFICATION_NEW_ROUTE"
      L5_2 = L5_2(L6_2)
      L6_2 = time
      L7_2 = "client"
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L3_2 = TriggerServerEvent
      L4_2 = "Buty-InfiniteJobs:server:SetNewRoute"
      L5_2 = lobby
      L5_2 = L5_2.owner
      L6_2 = L2_2.Route
      L7_2 = math
      L7_2 = L7_2.random
      L8_2 = 1
      L9_2 = L2_2.Route
      L9_2 = #L9_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L6_2[L7_2]
      L7_2 = lobby
      L8_2 = jobs
      L8_2 = L8_2.JobConfig
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    else
      L2_2 = Notify
      L3_2 = "success"
      L4_2 = _U
      L5_2 = "JOBS_NOTIFICATION_NO_NEW_ROUTE"
      L4_2 = L4_2(L5_2)
      L5_2 = time
      L6_2 = "client"
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L2_2 = DoScreenFadeOut
      L3_2 = 100
      L2_2(L3_2)
      L2_2 = Wait
      L3_2 = 100
      L2_2(L3_2)
      L2_2 = pairs
      L3_2 = lobby
      L3_2 = L3_2.users
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2 in L2_2, L3_2, L4_2, L5_2 do
        L7_2 = TriggerServerEvent
        L8_2 = "Buty-InfiniteJobs:server:gobase"
        L9_2 = L6_2
        L10_2 = randomjob
        L10_2 = L10_2.CreateGroup
        L7_2(L8_2, L9_2, L10_2)
      end
      L2_2 = canceljob
      L2_2()
      L2_2 = Wait
      L3_2 = 100
      L2_2(L3_2)
      L2_2 = DoScreenFadeIn
      L3_2 = 200
      L2_2(L3_2)
    end
  else
    L2_2 = Notify
    L3_2 = "success"
    L4_2 = _U
    L5_2 = "JOBS_NOTIFICATION_FINISH_PAY"
    L4_2 = L4_2(L5_2)
    L5_2 = time
    L6_2 = "client"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = DoScreenFadeOut
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = pairs
    L3_2 = lobby
    L3_2 = L3_2.users
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2 = TriggerServerEvent
      L8_2 = "Buty-InfiniteJobs:server:gobase"
      L9_2 = L6_2
      L10_2 = randomjob
      L10_2 = L10_2.CreateGroup
      L7_2(L8_2, L9_2, L10_2)
    end
    L2_2 = canceljob
    L2_2()
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = DoScreenFadeIn
    L3_2 = 200
    L2_2(L3_2)
  end
  L2_2 = false
  L22_1 = L2_2
  L2_2 = false
  L28_1 = L2_2
end
L29_1(L30_1, L31_1)
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.await
  L2_2 = "Buty-InfiniteJobs:server:loadLevelInfos"
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = tostring
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2[L2_2]
  if not L2_2 then
    L3_2 = 0
    return L3_2
  end
  L3_2 = jobs
  L3_2 = L3_2.JobInfo
  if not L3_2 then
    L4_2 = 0
    return L4_2
  end
  L4_2 = L2_2.experience
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = L3_2.ExperienceRequired
  if L5_2 then
    L5_2 = L3_2.ExperienceRequired
    L5_2 = L4_2 / L5_2
    if L5_2 then
      goto lbl_35
    end
  end
  L5_2 = L4_2 / 1000
  ::lbl_35::
  L6_2 = Configuration
  L6_2 = L6_2.Maxlevel
  if not L6_2 then
    L6_2 = 10
  end
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L5_2 = L7_2
  return L5_2
end
GetJobLevel = L29_1
L29_1 = RegisterNetEvent
L30_1 = "Buty-InfiniteJobs:client:SetNewRoute"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "Buty-InfiniteJobs:server:CreateRoute"
  L3_2 = lobby
  L3_2 = L3_2.owner
  L4_2 = lobby
  L1_2(L2_2, L3_2, L4_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "Buty-InfiniteJobs:client:gobase"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = RemoveBlip
  L2_2 = pay_blip
  L1_2(L2_2)
  L1_2 = Configuration
  L1_2 = L1_2.UseClothes
  if L1_2 then
    L1_2 = restorePlayerClothes
    L1_2()
  end
  L1_2 = finish_teleport_function
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = vec3
  L4_2 = A0_2.x
  L4_2 = L4_2 + 0.5
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNetEvent
L30_1 = "buty-InfiniteJobs:client:showUIxp"
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = jobs
  L1_2 = L1_2.JobInfo
  L2_2 = Configuration
  L2_2 = L2_2.Maxlevel
  if not L2_2 then
    L2_2 = 10
  end
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L1_2.ExperienceRequired
  L4_2 = A0_2 / L4_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = L1_2.ExperienceRequired
  L4_2 = L3_2 * L4_2
  L5_2 = L3_2 + 1
  L6_2 = L1_2.ExperienceRequired
  L5_2 = L5_2 * L6_2
  L5_2 = L5_2 - A0_2
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.type = "newprogress"
  L7_2.xp = A0_2
  L8_2 = L3_2 + 1
  L9_2 = L1_2.ExperienceRequired
  L8_2 = L8_2 * L9_2
  L7_2.xpreq = L8_2
  L7_2.lvl = L3_2
  L8_2 = Configuration
  L8_2 = L8_2.Color_UI
  L7_2.color = L8_2
  L6_2(L7_2)
end
L29_1(L30_1, L31_1)
L29_1 = RegisterNUICallback
L30_1 = "GetLangData"
function L31_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = {}
  L4_2 = Locales
  L3_2.table = L4_2
  L4_2 = Configuration
  L4_2 = L4_2.Language
  L3_2.current = L4_2
  L2_2(L3_2)
end
L29_1(L30_1, L31_1)
