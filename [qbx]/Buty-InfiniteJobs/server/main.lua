local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = {}
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = promise
  L4_2 = L4_2.new
  L4_2 = L4_2()
  if "fetchAll" == A1_2 and "mysql-async" == A0_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Async
    L5_2 = L5_2.fetchAll
    L6_2 = A2_2
    L7_2 = A3_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L4_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L5_2(L6_2, L7_2, L8_2)
  end
  if "execute" == A1_2 and "mysql-async" == A0_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Async
    L5_2 = L5_2.execute
    L6_2 = A2_2
    L7_2 = A3_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L4_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L5_2(L6_2, L7_2, L8_2)
  end
  if "execute" == A1_2 and "ghmattisql" == A0_2 then
    L5_2 = exports
    L5_2 = L5_2.ghmattimysql
    L6_2 = L5_2
    L5_2 = L5_2.execute
    L7_2 = A2_2
    L8_2 = A3_2
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L4_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  if "fetchAll" == A1_2 and "ghmattisql" == A0_2 then
    L5_2 = exports
    L5_2 = L5_2.ghmattimysql
    L6_2 = L5_2
    L5_2 = L5_2.execute
    L7_2 = A2_2
    L8_2 = A3_2
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L4_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  if "execute" == A1_2 and "oxmysql" == A0_2 then
    L5_2 = exports
    L5_2 = L5_2.oxmysql
    L6_2 = L5_2
    L5_2 = L5_2.execute
    L7_2 = A2_2
    L8_2 = A3_2
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L4_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  if "fetchAll" == A1_2 and "oxmysql" == A0_2 then
    L5_2 = exports
    L5_2 = L5_2.oxmysql
    L6_2 = L5_2
    L5_2 = L5_2.fetch
    L7_2 = A2_2
    L8_2 = A3_2
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L4_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = Citizen
  L5_2 = L5_2.Await
  L6_2 = L4_2
  return L5_2(L6_2)
end
SqlFunc = L1_1
L1_1 = {}
job = L1_1
L1_1 = "jobs/"
L2_1 = GetCurrentResourceName
L2_1 = L2_1()
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = os
  L1_2 = L1_2.getenv
  L2_2 = "HOME"
  L1_2 = L1_2(L2_2)
  L1_2 = nil == L1_2
  if L1_2 then
    L2_2 = "dir /b \""
    L3_2 = GetResourcePath
    L4_2 = L2_1
    L3_2 = L3_2(L4_2)
    L4_2 = "/"
    L5_2 = L1_1
    L6_2 = "\""
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
    if L2_2 then
      goto lbl_31
    end
  end
  L2_2 = "ls \""
  L3_2 = GetResourcePath
  L4_2 = L2_1
  L3_2 = L3_2(L4_2)
  L4_2 = "/"
  L5_2 = L1_1
  L6_2 = "\""
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  ::lbl_31::
  L3_2 = io
  L3_2 = L3_2.popen
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.lines
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L8_2
      L9_2 = L8_2.match
      L11_2 = "%.lua$"
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L0_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
    L5_2 = L3_2
    L4_2 = L3_2.close
    L4_2(L5_2)
  end
  return L0_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L3_1
  L0_2 = L0_2()
  L1_2 = ipairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L1_1
    L8_2 = L6_2
    L7_2 = L7_2 .. L8_2
    L8_2 = LoadResourceFile
    L9_2 = L2_1
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = print
      L10_2 = "^2[loading work]^0 -> "
      L11_2 = L6_2
      L10_2 = L10_2 .. L11_2
      L9_2(L10_2)
      L9_2 = assert
      L10_2 = load
      L11_2 = L8_2
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = L9_2()
      if L9_2 then
        L10_2 = type
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if "table" == L10_2 then
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = job
          L12_2 = L9_2
          L10_2(L11_2, L12_2)
      end
      else
        L10_2 = print
        L11_2 = "^1[ERROR]^0 El archivo "
        L12_2 = L6_2
        L13_2 = " no devolvi\195\179 una tabla v\195\161lida de trabajo."
        L11_2 = L11_2 .. L12_2 .. L13_2
        L10_2(L11_2)
      end
    else
      L9_2 = print
      L10_2 = "^1[ERROR]^0 No se pudo cargar el archivo: "
      L11_2 = L7_2
      L10_2 = L10_2 .. L11_2
      L9_2(L10_2)
    end
  end
end
L5_1 = L4_1
L5_1()
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "Buty-InfiniteJobs:server:GetJobsFiles"
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = job
  return L2_2
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "Buty-InfiniteJobs:server:loadLevelInfos"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetIdPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "SELECT jobs FROM buty_jobsv2 WHERE identifier = @identifier"
  L4_2 = {}
  L5_2 = GetIdentifier
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2["@identifier"] = L5_2
  L5_2 = SqlFunc
  L6_2 = Configuration
  L6_2 = L6_2.Mysql
  L7_2 = "fetchAll"
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L5_2[1]
  if not L6_2 then
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = {}
    L6_2 = L6_2(L7_2)
    L7_2 = "INSERT INTO buty_jobsv2 (identifier, jobs) VALUES (@identifier, @jobs)"
    L8_2 = {}
    L9_2 = GetIdentifier
    L10_2 = L2_2
    L9_2 = L9_2(L10_2)
    L8_2["@identifier"] = L9_2
    L8_2["@jobs"] = L6_2
    L9_2 = SqlFunc
    L10_2 = Configuration
    L10_2 = L10_2.Mysql
    L11_2 = "execute"
    L12_2 = L7_2
    L13_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = json
    L9_2 = L9_2.decode
    L10_2 = L6_2
    return L9_2(L10_2)
  else
    L6_2 = json
    L6_2 = L6_2.decode
    L7_2 = L5_2[1]
    L7_2 = L7_2.jobs
    L6_2 = L6_2(L7_2)
    return L6_2
  end
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetIdPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = "SELECT jobs FROM buty_jobsv2 WHERE identifier = @identifier"
  L5_2 = {}
  L5_2["@identifier"] = L3_2
  L6_2 = SqlFunc
  L7_2 = Configuration
  L7_2 = L7_2.Mysql
  L8_2 = "fetchAll"
  L9_2 = L4_2
  L10_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L6_2[1]
  if L7_2 then
    L7_2 = L6_2[1]
    L7_2 = L7_2.jobs
    if L7_2 then
      L7_2 = json
      L7_2 = L7_2.decode
      L8_2 = L6_2[1]
      L8_2 = L8_2.jobs
      L7_2 = L7_2(L8_2)
      L8_2 = tostring
      L9_2 = A1_2
      L8_2 = L8_2(L9_2)
      L9_2 = L7_2[L8_2]
      if L9_2 then
        L9_2 = L7_2[L8_2]
        L9_2 = L9_2.tutorial
        if true == L9_2 then
          L9_2 = true
          return L9_2
        end
      end
    end
  end
  L7_2 = false
  return L7_2
end
GetTutorial = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = GetIdPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = "SELECT jobs FROM buty_jobsv2 WHERE identifier = @identifier"
  L5_2 = {}
  L5_2["@identifier"] = L3_2
  L6_2 = SqlFunc
  L7_2 = Configuration
  L7_2 = L7_2.Mysql
  L8_2 = "fetchAll"
  L9_2 = L4_2
  L10_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L6_2[1]
  if L7_2 then
    L7_2 = L6_2[1]
    L7_2 = L7_2.jobs
    if L7_2 then
      L7_2 = json
      L7_2 = L7_2.decode
      L8_2 = L6_2[1]
      L8_2 = L8_2.jobs
      L7_2 = L7_2(L8_2)
      L8_2 = tostring
      L9_2 = A1_2
      L8_2 = L8_2(L9_2)
      L9_2 = L7_2[L8_2]
      if L9_2 then
        L9_2 = L7_2[L8_2]
        L9_2.tutorial = true
        L9_2 = "UPDATE buty_jobsv2 SET jobs = @jobs WHERE identifier = @identifier"
        L10_2 = SqlFunc
        L11_2 = Configuration
        L11_2 = L11_2.Mysql
        L12_2 = "execute"
        L13_2 = L9_2
        L14_2 = {}
        L15_2 = json
        L15_2 = L15_2.encode
        L16_2 = L7_2
        L15_2 = L15_2(L16_2)
        L14_2["@jobs"] = L15_2
        L14_2["@identifier"] = L3_2
        L10_2(L11_2, L12_2, L13_2, L14_2)
        L10_2 = true
        return L10_2
      end
    end
  end
  L7_2 = false
  return L7_2
end
UpdateTutorial = L5_1
L5_1 = RegisterNetEvent
L6_1 = "Buty-InfiniteJobs:server:AddJobBD"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "Buty-InfiniteJobs:server:AddJobBD"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = GetIdPlayer
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = [[
        SELECT jobs, totalwork, worktime FROM buty_jobsv2 WHERE identifier = ?
    ]]
  L5_2 = SqlFunc
  L6_2 = Configuration
  L6_2 = L6_2.Mysql
  L7_2 = "fetchAll"
  L8_2 = L4_2
  L9_2 = {}
  L10_2 = L3_2
  L9_2[1] = L10_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L5_2[1]
  if L6_2 then
    L6_2 = json
    L6_2 = L6_2.decode
    L7_2 = L5_2[1]
    L7_2 = L7_2.jobs
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_34
    end
  end
  L6_2 = {}
  ::lbl_34::
  L7_2 = L6_2[A1_2]
  if not L7_2 then
    L7_2 = {}
    L7_2.experience = 0
    L7_2.tutorial = false
  end
  L6_2[A1_2] = L7_2
  L7_2 = L5_2[1]
  if L7_2 then
    L7_2 = L5_2[1]
    L7_2 = L7_2.totalwork
    if L7_2 then
      goto lbl_50
    end
  end
  L7_2 = 0
  ::lbl_50::
  L8_2 = L5_2[1]
  if L8_2 then
    L8_2 = L5_2[1]
    L8_2 = L8_2.worktime
    if L8_2 then
      goto lbl_58
    end
  end
  L8_2 = 0
  ::lbl_58::
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = L6_2
  L9_2 = L9_2(L10_2)
  L10_2 = [[
        INSERT INTO buty_jobsv2 (identifier, jobs, totalwork, worktime) 
        VALUES (?, ?, ?, ?)
        ON DUPLICATE KEY UPDATE jobs = ?, totalwork = ?, worktime = ?
    ]]
  L11_2 = SqlFunc
  L12_2 = Configuration
  L12_2 = L12_2.Mysql
  L13_2 = "execute"
  L14_2 = L10_2
  L15_2 = {}
  L16_2 = L3_2
  L17_2 = L9_2
  L18_2 = L7_2
  L19_2 = L8_2
  L20_2 = L9_2
  L21_2 = L7_2
  L22_2 = L8_2
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  L15_2[4] = L19_2
  L15_2[5] = L20_2
  L15_2[6] = L21_2
  L15_2[7] = L22_2
  L11_2(L12_2, L13_2, L14_2, L15_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterServerEvent
L6_1 = "Buty-InfiniteJobs:server:createGroup"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L3_2 = {}
  L4_2 = {}
  L3_2.users = L4_2
  L4_2 = {}
  L3_2.task = L4_2
  L4_2 = A1_2.Route
  L3_2.route = L4_2
  L4_2 = A1_2.jobconfigs
  L3_2.jobconfig = L4_2
  L4_2 = A1_2.ID
  L3_2.jobid = L4_2
  L3_2.owner = A0_2
  L3_2.total_task = 0
  L2_2[A0_2] = L3_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.users
  L3_2 = {}
  L4_2 = GetTutorial
  L5_2 = A0_2
  L6_2 = A1_2.ID
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.tutorial = L4_2
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.name = L4_2
  L3_2.isdressed = false
  L3_2.istool = false
  L3_2.tool = nil
  L2_2[A0_2] = L3_2
end
L5_1(L6_1, L7_1)
L5_1 = RegisterServerEvent
L6_1 = "Buty-InfiniteJobs:server:invitePlayer"
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetPlayerName
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = TriggerClientEvent
  L7_2 = "Buty-InfiniteJobs:client:invetePlayer"
  L8_2 = A0_2
  L9_2 = L5_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterServerEvent
L6_1 = "Buty-InfiniteJobs:server:acceptInvite"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerName
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.users
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = TriggerClientEvent
    L12_2 = "Buty-InfiniteJobs:client:acceptInvite"
    L13_2 = L9_2
    L14_2 = A1_2
    L11_2(L12_2, L13_2, L14_2)
  end
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.users
  L6_2 = {}
  L7_2 = GetTutorial
  L8_2 = A1_2
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.jobid
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.tutorial = L7_2
  L7_2 = GetPlayerName
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L6_2.name = L7_2
  L6_2.isdressed = false
  L6_2.istool = false
  L6_2.tool = nil
  L5_2[A1_2] = L6_2
  L5_2 = TriggerClientEvent
  L6_2 = "Buty-InfiniteJobs:client:update-ui"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterServerEvent
L6_1 = "Buty-InfiniteJobs:server:declineInvite"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = pairs
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.users
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = TriggerClientEvent
    L10_2 = "Buty-InfiniteJobs:client:declineInvite"
    L11_2 = L7_2
    L12_2 = A1_2
    L13_2 = A2_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L3_2 = TriggerClientEvent
  L4_2 = "Buty-InfiniteJobs:client:declineInviteSlot"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterServerEvent
L6_1 = "Buty-InfiniteJobs:server:removeInvitation"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "Buty-InfiniteJobs:client:removeInvitation"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterServerEvent
L6_1 = "Buty-InfiniteJobs:server:startjob"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A0_2
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L0_1
  L6_2 = L6_2[L3_2]
  L6_2 = L6_2.users
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2 in L5_2, L6_2, L7_2, L8_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L4_2
    L12_2 = GetPlayerName
    L13_2 = L9_2
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L5_2 = _U
  L6_2 = "JOBS_LOG_CREATE_GROUP"
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.gsub
  L7_2 = "{name}"
  L8_2 = tostring
  L9_2 = GetPlayerName
  L10_2 = L3_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = L5_2
  L5_2 = L5_2.gsub
  L7_2 = "{namejob}"
  L8_2 = tostring
  L9_2 = A2_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = L5_2
  L5_2 = L5_2.gsub
  L7_2 = "{participants}"
  L8_2 = tostring
  L9_2 = table
  L9_2 = L9_2.concat
  L10_2 = L4_2
  L11_2 = ", "
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2, L11_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = SendWebhookLog
  L7_2 = L5_2
  L8_2 = "1105929"
  L6_2(L7_2, L8_2)
  L6_2 = 0
  L7_2 = pairs
  L8_2 = L0_1
  L8_2 = L8_2[L3_2]
  L8_2 = L8_2.route
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = A1_2.type
    if 2 == L13_2 then
      L13_2 = L0_1
      L13_2 = L13_2[L3_2]
      L13_2 = L13_2.task
      L14_2 = {}
      L15_2 = L12_2.coord
      L14_2.coord = L15_2
      L14_2.take = false
      L15_2 = L12_2.propname
      L14_2.propname = L15_2
      L15_2 = L12_2.takepropname
      L14_2.takepropname = L15_2
      L15_2 = L12_2.GetItem
      L14_2.GetItem = L15_2
      L15_2 = L12_2.anim
      L14_2.anim = L15_2
      L14_2.task_index = L11_2
      L13_2[L11_2] = L14_2
    else
      L13_2 = L0_1
      L13_2 = L13_2[L3_2]
      L13_2 = L13_2.task
      L14_2 = {}
      L15_2 = L12_2.coord
      L14_2.coord = L15_2
      L14_2.take = false
      L15_2 = L12_2.propname
      L14_2.propname = L15_2
      L15_2 = L12_2.anim
      L14_2.anim = L15_2
      L15_2 = A1_2.useprop
      L14_2.useprop = L15_2
      L15_2 = L12_2.GetItem
      L14_2.GetItem = L15_2
      L15_2 = L12_2.skill
      L14_2.skill = L15_2
      L14_2.task_index = L11_2
      L13_2[L11_2] = L14_2
    end
    L6_2 = L6_2 + 1
  end
  L7_2 = L0_1
  L7_2 = L7_2[L3_2]
  L7_2.total_task = L6_2
  L7_2 = pairs
  L8_2 = L0_1
  L8_2 = L8_2[L3_2]
  L8_2 = L8_2.users
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2 in L7_2, L8_2, L9_2, L10_2 do
    L12_2 = TriggerClientEvent
    L13_2 = "Buty-InfiniteJobs:client:startjob"
    L14_2 = L11_2
    L15_2 = L0_1
    L15_2 = L15_2[L3_2]
    L16_2 = A1_2.type
    L12_2(L13_2, L14_2, L15_2, L16_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = {}
L6_1 = RegisterServerEvent
L7_1 = "Buty-InfiniteJobs:server:update"
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A3_2.owner
  L5_2 = L5_1
  L5_2[L6_2] = A3_2
  L5_2 = TriggerClientEvent
  L6_2 = "Buty-InfiniteJobs:client:update"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L11_2 = A3_2.owner
  L10_2 = L5_1
  L10_2 = L10_2[L11_2]
  L11_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L6_1(L7_1, L8_1)
L6_1 = {}
L7_1 = RegisterServerEvent
L8_1 = "Buty-InfiniteJobs:server:tryTakeTask"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "Buty-InfiniteJobs:server:tryTakeTask"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = source
  L5_2 = A1_2.owner
  L4_2 = L6_1
  L4_2 = L4_2[L5_2]
  if not L4_2 then
    L5_2 = A1_2.owner
    L4_2 = L6_1
    L6_2 = {}
    L4_2[L5_2] = L6_2
  end
  L5_2 = A1_2.owner
  L4_2 = L6_1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L5_2 = A1_2.owner
    L4_2 = L6_1
    L4_2 = L4_2[L5_2]
    L4_2[A0_2] = true
    L4_2 = TriggerClientEvent
    L5_2 = "Buty-InfiniteJobs:client:taskTaken"
    L6_2 = L3_2
    L7_2 = A0_2
    L8_2 = true
    L9_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = pairs
    L5_2 = A1_2.users
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = TriggerClientEvent
      L11_2 = "Buty-InfiniteJobs:client:updateTask"
      L12_2 = L8_2
      L13_2 = A0_2
      L14_2 = true
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
  else
    L4_2 = TriggerClientEvent
    L5_2 = "Buty-InfiniteJobs:client:taskTaken"
    L6_2 = L3_2
    L7_2 = A0_2
    L8_2 = false
    L9_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L7_1(L8_1, L9_1)
L7_1 = {}
L8_1 = RegisterServerEvent
L9_1 = "Buty-InfiniteJobs:server:tryTakeTask2"
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = "Buty-InfiniteJobs:server:tryTakeTask2"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = source
  L7_2 = A1_2.owner
  L6_2 = L7_1
  L6_2 = L6_2[L7_2]
  if not L6_2 then
    L7_2 = A1_2.owner
    L6_2 = L7_1
    L8_2 = {}
    L6_2[L7_2] = L8_2
  end
  L7_2 = A1_2.owner
  L6_2 = L7_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2[A0_2]
  if not L6_2 then
    L7_2 = A1_2.owner
    L6_2 = L7_1
    L6_2 = L6_2[L7_2]
    L6_2[A0_2] = true
    L6_2 = TriggerClientEvent
    L7_2 = "Buty-InfiniteJobs:client:taskTaken2"
    L8_2 = L5_2
    L9_2 = A0_2
    L10_2 = true
    L11_2 = A3_2
    L12_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = pairs
    L7_2 = A1_2.users
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = TriggerClientEvent
      L13_2 = "Buty-InfiniteJobs:client:updateTask2"
      L14_2 = L10_2
      L15_2 = A0_2
      L16_2 = true
      L17_2 = A2_2
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  else
    L6_2 = TriggerClientEvent
    L7_2 = "Buty-InfiniteJobs:client:taskTaken2"
    L8_2 = L5_2
    L9_2 = A0_2
    L10_2 = false
    L11_2 = A3_2
    L12_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = {}
L9_1 = RegisterServerEvent
L10_1 = "Buty-InfiniteJobs:server:tryGetVehicle"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "Buty-InfiniteJobs:server:tryGetVehicle"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L3_2 = A0_2.owner
  L2_2 = L8_1
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = A0_2.owner
    L2_2 = L8_1
    L2_2[L3_2] = true
    L2_2 = TriggerClientEvent
    L3_2 = "Buty-InfiniteJobs:client:GetVehicle"
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = pairs
    L3_2 = A0_2.users
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = TriggerClientEvent
      L9_2 = "Buty-InfiniteJobs:client:updateVehicle"
      L10_2 = L6_2
      L11_2 = true
      L8_2(L9_2, L10_2, L11_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "Buty-InfiniteJobs:client:GetVehicle"
    L4_2 = L1_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = {}
L10_1 = RegisterServerEvent
L11_1 = "Buty-InfiniteJobs:server:tryPutBox"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "Buty-InfiniteJobs:server:tryPutBox"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L3_2 = A0_2.owner
  L2_2 = L9_1
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = A0_2.owner
    L2_2 = L9_1
    L2_2[L3_2] = true
    L2_2 = TriggerClientEvent
    L3_2 = "Buty-InfiniteJobs:client:PutBox"
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = pairs
    L3_2 = A0_2.users
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = TriggerClientEvent
      L9_2 = "Buty-InfiniteJobs:client:updatePutBox"
      L10_2 = L6_2
      L11_2 = true
      L8_2(L9_2, L10_2, L11_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "Buty-InfiniteJobs:client:PutBox"
    L4_2 = L1_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = {}
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:tryTakeBox"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:tryTakeBox"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L3_2 = A0_2.owner
  L2_2 = L10_1
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    L3_2 = A0_2.owner
    L2_2 = L10_1
    L2_2[L3_2] = true
    L2_2 = TriggerClientEvent
    L3_2 = "Buty-InfiniteJobs:client:TakeBox"
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = pairs
    L3_2 = A0_2.users
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = TriggerClientEvent
      L9_2 = "Buty-InfiniteJobs:client:updateTakeBox"
      L10_2 = L6_2
      L11_2 = true
      L8_2(L9_2, L10_2, L11_2)
    end
  else
    L2_2 = TriggerClientEvent
    L3_2 = "Buty-InfiniteJobs:client:TakeBox"
    L4_2 = L1_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:releaseTask"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:releaseTask"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  if nil ~= A0_2 then
    L3_2 = A1_2.owner
    L2_2 = L6_1
    L2_2 = L2_2[L3_2]
    L2_2[A0_2] = nil
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:releaseTask2"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:releaseTask2"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  if nil ~= A0_2 then
    L3_2 = A1_2.owner
    L2_2 = L7_1
    L2_2 = L2_2[L3_2]
    L2_2[A0_2] = nil
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:updateVehicle"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:updateVehicle"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.owner
  L1_2 = L8_1
  L1_2[L2_2] = false
  L1_2 = pairs
  L2_2 = A0_2.users
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = TriggerClientEvent
    L8_2 = "Buty-InfiniteJobs:client:updateVehicle"
    L9_2 = L5_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:updatePutBox"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:updatePutBox"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.owner
  L1_2 = L9_1
  L1_2[L2_2] = false
  L1_2 = pairs
  L2_2 = A0_2.users
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = TriggerClientEvent
    L8_2 = "Buty-InfiniteJobs:client:updatePutBox"
    L9_2 = L5_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:updateTakeBox"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:updateTakeBox"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.owner
  L1_2 = L10_1
  L1_2[L2_2] = false
  L1_2 = pairs
  L2_2 = A0_2.users
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = TriggerClientEvent
    L8_2 = "Buty-InfiniteJobs:client:updateTakeBox"
    L9_2 = L5_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:restartTask"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:restartTask"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:restartTask"
  L4_2 = L1_2
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:createVehicle"
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = pairs
  L5_2 = A1_2.users
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = TriggerClientEvent
    L11_2 = "Buty-InfiniteJobs:client:vehicle"
    L12_2 = L8_2
    L13_2 = A2_2
    L14_2 = A3_2
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:showtutorial"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = UpdateTutorial
  L3_2 = A0_2
  L4_2 = A1_2.jobid
  L2_2(L3_2, L4_2)
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:tutorial"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:OpenDoors"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:OpenDoors"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:OpenDoors"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:CloseDoors"
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = "Buty-InfiniteJobs:server:CloseDoors"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:CloseDoors"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:DeleteTool"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = A1_2.users
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = TriggerClientEvent
    L9_2 = "Buty-InfiniteJobs:client:DeleteVehicleTool"
    L10_2 = L6_2
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:RestartTool"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = A1_2.users
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = TriggerClientEvent
    L9_2 = "Buty-InfiniteJobs:client:RestartTool"
    L10_2 = L6_2
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:CreateRoute"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A1_2.users
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = TriggerClientEvent
    L9_2 = "Buty-InfiniteJobs:client:CreateRoute"
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:RemplaceTaskObj"
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = TriggerClientEvent
  L5_2 = "Buty-InfiniteJobs:client:RemplaceTaskObj"
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:DeleteTaskObj"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:DeleteTaskObj"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:DeleteObj"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:DeleteObj"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:CreateBox"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:CreateBox"
  L4_2 = A1_2.owner
  L2_2(L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:DeleteBox"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = TriggerClientEvent
  L4_2 = "Buty-InfiniteJobs:client:DeleteBox"
  L5_2 = A1_2.owner
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:CreateBoxToProcess"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "Buty-InfiniteJobs:client:CreateBoxToProcess"
  L3_2 = A0_2
  L4_2 = totalbox
  L1_2(L2_2, L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = lib
L11_1 = L11_1.callback
L11_1 = L11_1.register
L12_1 = "Buty-InfiniteJobs:server:CheckLimit"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetIdPlayer
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = [[
        SELECT totalwork FROM buty_jobsv2 WHERE identifier = ?
    ]]
  L5_2 = SqlFunc
  L6_2 = Configuration
  L6_2 = L6_2.Mysql
  L7_2 = "fetchAll"
  L8_2 = L4_2
  L9_2 = {}
  L10_2 = L3_2
  L9_2[1] = L10_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L5_2[1]
  if L6_2 then
    L6_2 = L5_2[1]
    L6_2 = L6_2.totalwork
    if L6_2 then
      goto lbl_26
    end
  end
  L6_2 = 0
  ::lbl_26::
  L7_2 = Configuration
  L7_2 = L7_2.Limit_work
  L7_2 = L7_2.totalwork
  if L6_2 >= L7_2 then
    L7_2 = true
    return L7_2
  end
  L7_2 = false
  return L7_2
end
L11_1(L12_1, L13_1)
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = Config_Sell
  L0_2 = L0_2.activate
  if not L0_2 then
    return
  end
  L0_2 = Config_Sell
  L1_2 = {}
  L0_2.itemsWithPrices = L1_2
  L0_2 = ipairs
  L1_2 = Config_Sell
  L1_2 = L1_2.items
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = L5_2.price
    L7_2 = L7_2.wholesale
    L7_2 = L7_2.min
    L8_2 = L5_2.price
    L8_2 = L8_2.wholesale
    L8_2 = L8_2.max
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = L5_2.price
    L8_2 = L8_2.retail
    L8_2 = L8_2.min
    L9_2 = L5_2.price
    L9_2 = L9_2.retail
    L9_2 = L9_2.max
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = Config_Sell
    L9_2 = L9_2.itemsWithPrices
    L10_2 = {}
    L11_2 = L5_2.name
    L10_2.name = L11_2
    L11_2 = L5_2.label
    L10_2.label = L11_2
    L11_2 = L5_2.img
    L10_2.img = L11_2
    L11_2 = {}
    L11_2.wholesale = L6_2
    L11_2.retail = L7_2
    L10_2.price = L11_2
    L8_2(L9_2, L10_2)
  end
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 1
  L2_2 = Config_Sell
  L2_2 = L2_2.CreateNPC
  L2_2 = #L2_2
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = Config_Sell
  L1_2 = L1_2.CreateNPC
  L1_2 = L1_2[L0_2]
  npcinfo = L1_2
end
GenerateItemPrices = L11_1
L11_1 = GenerateItemPrices
L11_1()
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:npcspawn"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "Buty-InfiniteJobs:client:npcspawn"
  L3_2 = A0_2
  L4_2 = npcinfo
  L1_2(L2_2, L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:gobase"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "Buty-InfiniteJobs:client:gobase"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "buty-InfiniteJobs:server:DeleteGroup"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _U
  L3_2 = "JOBS_LOG_DELETE_GROUP"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "{name}"
  L5_2 = tostring
  L6_2 = GetPlayerName
  L7_2 = A0_2
  L6_2, L7_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = SendWebhookLog
  L4_2 = L2_2
  L5_2 = "14682377"
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "buty-InfiniteJobs:client:DeleteGroup"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  A1_2 = L3_2
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "buty-InfiniteJobs:server:it"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.name
  L3_2 = A1_2.quantity
  L4_2 = giveitem
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:P%4$Y"
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = source
  L5_2 = A3_2.owner
  if L5_2 == L4_2 then
    L5_2 = GetPlayerName
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = _U
    L7_2 = "JOBS_LOG_PAY"
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2
    L6_2 = L6_2.gsub
    L8_2 = "{name}"
    L9_2 = tostring
    L10_2 = L5_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2 = L6_2
    L6_2 = L6_2.gsub
    L8_2 = "{quantity}"
    L9_2 = tostring
    L10_2 = A1_2.Quantity
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2 = SendWebhookLog
    L8_2 = L6_2
    L9_2 = "16624"
    L7_2(L8_2, L9_2)
    L7_2 = GetIdPlayer
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L8_2 = print
      L9_2 = "\226\154\160\239\184\143 Intento de explotaci\195\179n detectado: Jugador no v\195\161lido."
      L8_2(L9_2)
      return
    end
    L8_2 = GetIdentifier
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = 0
    L10_2 = pairs
    L11_2 = A3_2.users
    if not L11_2 then
      L11_2 = {}
    end
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    for L14_2 in L10_2, L11_2, L12_2, L13_2 do
      L9_2 = L9_2 + 1
    end
    L10_2 = math
    L10_2 = L10_2.max
    L11_2 = L9_2
    L12_2 = 1
    L10_2 = L10_2(L11_2, L12_2)
    numPlayers = L10_2
    L10_2 = Configuration
    L10_2 = L10_2.split_lobby_payment
    if L10_2 then
      L10_2 = math
      L10_2 = L10_2.floor
      L11_2 = A1_2.Quantity
      L12_2 = numPlayers
      L11_2 = L11_2 / L12_2
      L10_2 = L10_2(L11_2)
      L11_2 = print
      L12_2 = L10_2
      L11_2(L12_2)
      L11_2 = giveReward
      L12_2 = A0_2
      L13_2 = L10_2
      L14_2 = A1_2
      L15_2 = A2_2
      L11_2(L12_2, L13_2, L14_2, L15_2)
    else
      L10_2 = giveReward
      L11_2 = A0_2
      L12_2 = A1_2.Quantity
      L13_2 = A1_2
      L14_2 = A2_2
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
    L10_2 = Configuration
    L10_2 = L10_2.Maxlevel
    if A2_2 <= L10_2 then
      L10_2 = addExperience
      L11_2 = A0_2
      L12_2 = A1_2.exp
      L13_2 = A3_2
      L10_2(L11_2, L12_2, L13_2)
    else
      L10_2 = TriggerClientEvent
      L11_2 = "buty-InfiniteJobs:client:showUIxp"
      L12_2 = A0_2
      L13_2 = 0
      L10_2(L11_2, L12_2, L13_2)
    end
    L10_2 = Configuration
    L10_2 = L10_2.Limit_work
    L10_2 = L10_2.use
    if L10_2 then
      L10_2 = AddWorkAndStartTimer
      L11_2 = L8_2
      L10_2(L11_2)
    end
  end
end
L11_1(L12_1, L13_1)
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = GetIdPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetIdentifier
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  if not A1_2 then
    L5_2 = print
    L6_2 = "Error: experienceToAdd no es un n\195\186mero v\195\161lido."
    L5_2(L6_2)
    return
  end
  L5_2 = [[
        SELECT jobs FROM buty_jobsv2 WHERE identifier = ?
    ]]
  L6_2 = SqlFunc
  L7_2 = Configuration
  L7_2 = L7_2.Mysql
  L8_2 = "fetchAll"
  L9_2 = L5_2
  L10_2 = {}
  L11_2 = L4_2
  L10_2[1] = L11_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L6_2[1]
  if L7_2 then
    L7_2 = json
    L7_2 = L7_2.decode
    L8_2 = L6_2[1]
    L8_2 = L8_2.jobs
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_40
    end
  end
  L7_2 = {}
  ::lbl_40::
  L8_2 = tostring
  L9_2 = A2_2.jobid
  L8_2 = L8_2(L9_2)
  L9_2 = L7_2[L8_2]
  if L9_2 then
    L9_2 = L7_2[L8_2]
    L9_2 = L9_2.experience
    L9_2 = L9_2 + A1_2
    L10_2 = L7_2[L8_2]
    L10_2 = L10_2.experience
    if L10_2 then
      L10_2 = L7_2[L8_2]
      L10_2.experience = L9_2
    else
      L10_2 = L7_2[L8_2]
      L10_2.experience = A1_2
    end
    L10_2 = json
    L10_2 = L10_2.encode
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    L11_2 = [[
            INSERT INTO buty_jobsv2 (identifier, jobs) 
            VALUES (?, ?)
            ON DUPLICATE KEY UPDATE jobs = ?
        ]]
    L12_2 = SqlFunc
    L13_2 = Configuration
    L13_2 = L13_2.Mysql
    L14_2 = "execute"
    L15_2 = L11_2
    L16_2 = {}
    L17_2 = L4_2
    L18_2 = L10_2
    L19_2 = L10_2
    L16_2[1] = L17_2
    L16_2[2] = L18_2
    L16_2[3] = L19_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L12_2 = TriggerClientEvent
    L13_2 = "buty-InfiniteJobs:client:showUIxp"
    L14_2 = A0_2
    L15_2 = L9_2
    L12_2(L13_2, L14_2, L15_2)
  else
    L9_2 = print
    L10_2 = "Error: El trabajo con jobid "
    L11_2 = L8_2
    L12_2 = " no existe para este jugador."
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2(L10_2)
  end
end
addExperience = L11_1
L11_1 = RegisterServerEvent
L12_1 = "Buty-InfiniteJobs:server:SetNewRoute"
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = 0
  L5_2 = {}
  A2_2.route = L5_2
  L5_2 = {}
  A2_2.task = L5_2
  A2_2.route = A1_2
  L5_2 = pairs
  L6_2 = A2_2.route
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = A3_2.type
    if 2 == L11_2 then
      L11_2 = A2_2.task
      L12_2 = {}
      L13_2 = L10_2.coord
      L12_2.coord = L13_2
      L12_2.take = false
      L13_2 = L10_2.propname
      L12_2.propname = L13_2
      L13_2 = L10_2.takepropname
      L12_2.takepropname = L13_2
      L13_2 = L10_2.GetItem
      L12_2.GetItem = L13_2
      L13_2 = L10_2.anim
      L12_2.anim = L13_2
      L12_2.task_index = L9_2
      L11_2[L9_2] = L12_2
    else
      L11_2 = A2_2.task
      L12_2 = {}
      L13_2 = L10_2.coord
      L12_2.coord = L13_2
      L12_2.take = false
      L13_2 = L10_2.propname
      L12_2.propname = L13_2
      L13_2 = L10_2.anim
      L12_2.anim = L13_2
      L13_2 = A3_2.useprop
      L12_2.useprop = L13_2
      L13_2 = L10_2.GetItem
      L12_2.GetItem = L13_2
      L13_2 = L10_2.skill
      L12_2.skill = L13_2
      L12_2.task_index = L9_2
      L11_2[L9_2] = L12_2
    end
    L4_2 = L4_2 + 1
  end
  A2_2.total_task = L4_2
  L5_2 = pairs
  L6_2 = A2_2.users
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = TriggerClientEvent
    L12_2 = "Buty-InfiniteJobs:client:update"
    L13_2 = L9_2
    L14_2 = "none"
    L15_2 = true
    L16_2 = A2_2
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L5_2 = TriggerClientEvent
  L6_2 = "Buty-InfiniteJobs:client:SetNewRoute"
  L7_2 = A2_2.owner
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end
L11_1(L12_1, L13_1)
L11_1 = AddEventHandler
L12_1 = "playerDropped"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = L5_1
  L2_2 = L2_2[L1_2]
  if nil ~= L2_2 then
    L2_2 = L5_1
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.owner
    if L1_2 == L2_2 then
      L2_2 = pairs
      L3_2 = L5_1
      L3_2 = L3_2[L1_2]
      L3_2 = L3_2.users
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = TriggerClientEvent
        L9_2 = "buty-InfiniteJobs:client:DeleteGroup"
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
        L8_2 = {}
        L0_1 = L8_2
      end
    end
  end
end
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = [[
        SELECT jobs, totalwork, worktime FROM buty_jobsv2 WHERE identifier = ?
    ]]
  L2_2 = SqlFunc
  L3_2 = Configuration
  L3_2 = L3_2.Mysql
  L4_2 = "fetchAll"
  L5_2 = L1_2
  L6_2 = {}
  L7_2 = A0_2
  L6_2[1] = L7_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L2_2[1]
  if L3_2 then
    L3_2 = json
    L3_2 = L3_2.decode
    L4_2 = L2_2[1]
    L4_2 = L4_2.jobs
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_24
    end
  end
  L3_2 = {}
  ::lbl_24::
  L4_2 = L2_2[1]
  if L4_2 then
    L4_2 = L2_2[1]
    L4_2 = L4_2.totalwork
    if L4_2 then
      goto lbl_32
    end
  end
  L4_2 = 0
  ::lbl_32::
  L5_2 = L2_2[1]
  if L5_2 then
    L5_2 = L2_2[1]
    L5_2 = L5_2.worktime
    if L5_2 then
      goto lbl_40
    end
  end
  L5_2 = 0
  ::lbl_40::
  L4_2 = L4_2 + 1
  L6_2 = Configuration
  L6_2 = L6_2.Limit_work
  L6_2 = L6_2.totalwork
  if L4_2 >= L6_2 then
    L6_2 = Configuration
    L6_2 = L6_2.Limit_work
    L6_2 = L6_2.WorkTime
    L5_2 = L5_2 + L6_2
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = [[
            INSERT INTO buty_jobsv2 (identifier, jobs, totalwork, worktime) 
            VALUES (?, ?, ?, ?)
            ON DUPLICATE KEY UPDATE jobs = ?, totalwork = ?, worktime = ?
        ]]
    L8_2 = SqlFunc
    L9_2 = Configuration
    L9_2 = L9_2.Mysql
    L10_2 = "execute"
    L11_2 = L7_2
    L12_2 = {}
    L13_2 = A0_2
    L14_2 = L6_2
    L15_2 = L4_2
    L16_2 = L5_2
    L17_2 = L6_2
    L18_2 = L4_2
    L19_2 = L5_2
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L12_2[5] = L17_2
    L12_2[6] = L18_2
    L12_2[7] = L19_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = StartWorkTimeTimer
    L9_2 = A0_2
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
  else
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = [[
            INSERT INTO buty_jobsv2 (identifier, jobs, totalwork, worktime) 
            VALUES (?, ?, ?, ?)
            ON DUPLICATE KEY UPDATE jobs = ?, totalwork = ?, worktime = ?
        ]]
    L8_2 = SqlFunc
    L9_2 = Configuration
    L9_2 = L9_2.Mysql
    L10_2 = "execute"
    L11_2 = L7_2
    L12_2 = {}
    L13_2 = A0_2
    L14_2 = L6_2
    L15_2 = L4_2
    L16_2 = L5_2
    L17_2 = L6_2
    L18_2 = L4_2
    L19_2 = L5_2
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L12_2[5] = L17_2
    L12_2[6] = L18_2
    L12_2[7] = L19_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
AddWorkAndStartTimer = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = A1_2
      if not (L0_3 > 0) then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 60000
      L0_3(L1_3)
      L0_3 = A1_2
      L0_3 = L0_3 - 1
      A1_2 = L0_3
      L0_3 = [[
                UPDATE buty_jobsv2 SET worktime = ? WHERE identifier = ?
            ]]
      L1_3 = SqlFunc
      L2_3 = Configuration
      L2_3 = L2_3.Mysql
      L3_3 = "execute"
      L4_3 = L0_3
      L5_3 = {}
      L6_3 = A1_2
      L7_3 = A0_2
      L5_3[1] = L6_3
      L5_3[2] = L7_3
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = A1_2
      if L1_3 <= 0 then
        L1_3 = [[
                    SELECT totalwork FROM buty_jobsv2 WHERE identifier = ?
                ]]
        L2_3 = SqlFunc
        L3_3 = Configuration
        L3_3 = L3_3.Mysql
        L4_3 = "fetchAll"
        L5_3 = L1_3
        L6_3 = {}
        L7_3 = A0_2
        L6_3[1] = L7_3
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
        totalwork = 0
        L3_3 = [[
                    UPDATE buty_jobsv2 SET totalwork = ? WHERE identifier = ?
                ]]
        L4_3 = SqlFunc
        L5_3 = Configuration
        L5_3 = L5_3.Mysql
        L6_3 = "execute"
        L7_3 = L3_3
        L8_3 = {}
        L9_3 = totalwork
        L10_3 = A0_2
        L8_3[1] = L9_3
        L8_3[2] = L10_3
        L4_3(L5_3, L6_3, L7_3, L8_3)
        break
      end
    end
  end
  L2_2(L3_2)
end
StartWorkTimeTimer = L11_1
L11_1 = "SHOW TABLES LIKE 'buty_jobsv2';\n"
L12_1 = [[
CREATE TABLE `buty_jobsv2` (
  `identifier` varchar(46) NOT NULL,
  `jobs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`jobs`)),
  `totalwork` int(11) DEFAULT 0,
  `worktime` int(11) DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
]]
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = SqlFunc
  L1_2 = Configuration
  L1_2 = L1_2.Mysql
  L2_2 = "fetchAll"
  L3_2 = L11_1
  L4_2 = {}
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if L0_2 then
    L1_2 = L0_2[1]
    if L1_2 then
  end
  else
    L1_2 = SqlFunc
    L2_2 = Configuration
    L2_2 = L2_2.Mysql
    L3_2 = "execute"
    L4_2 = L12_1
    L5_2 = {}
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L2_2 = print
      L3_2 = "^2Tabla 'buty_jobsv2' creada correctamente.^0"
      L2_2(L3_2)
    else
      L2_2 = print
      L3_2 = "^1Error al crear la tabla 'buty_jobsv2'.^0"
      L2_2(L3_2)
    end
  end
end
L14_1 = AddEventHandler
L15_1 = "onResourceStart"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L13_1
    L1_2()
    L1_2 = Configuration
    L1_2 = L1_2.Limit_work
    L1_2 = L1_2.use
    if L1_2 then
      L1_2 = [[
                SELECT identifier, worktime FROM buty_jobsv2 WHERE worktime > 0
            ]]
      L2_2 = SqlFunc
      L3_2 = Configuration
      L3_2 = L3_2.Mysql
      L4_2 = "fetchAll"
      L5_2 = L1_2
      L6_2 = {}
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = ipairs
      L4_2 = L2_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2.identifier
        L10_2 = L8_2.worktime
        if L10_2 > 0 then
          L11_2 = StartWorkTimeTimer
          L12_2 = L9_2
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
end
L14_1(L15_1, L16_1)
