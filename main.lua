gg.toast("Loading variables...")
NoRecoil = "OFF"
FireRate = "OFF"
adres = 0
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
gg.alert("Code by slaimmials")

function mainmenu()
  main = gg.choice({
    "Functions | ðŸ”«",
    "Exit | ðŸšª",}, nil,"BRUTAL HACK V1.0")
  if main == 1 then
    WeaponMenu()
  end
  if main == 2 then
    gg.toast("Goodbye!")
    os.exit()
  end
end

function WeaponMenu()
main = gg.multiChoice({
    "[#] NoRecoil [#]",
    "[#] FireRate [#]",
    "[#] FlyHack [#]",
    "[#] Chams [#]",
    "[#] FoV [#]",}, nil,"")
if main == nil then
mainmenu()
else
if main[1] then
CrackWeapon("1045220557")
CrackWeapon("1039516303")
CrackWeapon("1028443341")
CrackWeapon("1041865114")
CrackWeapon("1051931443")
CrackWeapon("1041865114")
gg.toast("NoRecoil Activated {}")
end

if main[2] then
CrackWeapon("1050253722")
CrackWeapon("1045220557")
CrackWeapon("841144009")
CrackWeapon("1036295078")
CrackWeapon("1038174126")
gg.toast("FireRate Activated {}")
end

if main[3] then
C = gg.prompt({'(-3) Fly underground, (3) Fly through ground[-3; 3]'},{0},{'number'})
if C ~= nil and tonumber(C[1]) ~= 0 then
if tonumber(C[1]) < 0 then
EditValueF("1.42999994755", tonumber(C[1]-0.12999994755))
else
EditValueF("1.42999994755", tonumber(C[1]))
end
gg.toast("FlyHack Activated {}")
end
end

if main[4] then
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.05499994755", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("15.05500030518", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearList()
gg.toast("Chams Activated {}")
end

if main[5] then
C = gg.prompt({'50 - 360[50; 360]'},{50},{'number'})
if C ~= nil then
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.58732407e-43F;50.0F;50.0F:45", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
local t = gg.getResults(50)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = C[1]
		v.freeze = true
    end
end
t = nil
gg.toast("FoV Activated {}")
end
end
end
end

function CrackWeapon(Weapon)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Weapon, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("925353388", gg.TYPE_DWORD)
gg.clearResults()
gg.clearList()
end

function EditValueF(Find, Value)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Find, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(6)
gg.editAll(Value, gg.TYPE_FLOAT)
gg.clearResults()
gg.clearList()
end

while true do
GAME = 0
  if gg.isVisible(true) then
    GAME = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if GAME == 1 then
    mainmenu()
    gg.toast(adres)
  end
end
