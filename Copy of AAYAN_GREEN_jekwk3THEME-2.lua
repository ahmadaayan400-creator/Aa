--[[
Script Deobfuscated Using Alpha Empire Core
Made By Aayanzz
Discord: https://discord.gg/T2tJyESn9
]]

if game.CoreGui:FindFirstChild("AAYANPanel")then
  game:GetService("StarterGui"):SetCore("SendNotification",{Title="AAYAN MINI V1",Text="GUI Already loaded, rejoin to re-execute",Duration=5;})
  return
end
local _a=2
_G.AntiFlingToggled=false
local _b=game:GetService("Players")
local _c=_b.LocalPlayer
local _d=game:GetService("TweenService")
local _e=game:GetService("RunService")
local _f=game:GetService("Lighting")
local _g=game:GetService("HttpService")
local _h=(syn and syn.request)or(http and http.request)or http_request or(fluxus and fluxus.request)or request
local _i=_c:GetMouse()
local _j={}
local _k={}
local _l=nil
local _m=50
local _n=nil
local _o=nil
local _p=nil
local _q=false
local _r={}
pcall(function()
  _p=game:GetService("Workspace").Landmines
  for _s,_t in pairs(game:GetService("Workspace"):GetChildren())do
    if _t.Name=="Cannons"then
      table.insert(_r,_t)
    end
  end
end)
_G.shield=function(_u)
  if not table.find(_k,_u)then
    table.insert(_k,_u)
  end
end
local function _v()
  local _w=math.random(1,5)
  local _x={}
  for _y=1,_w do
    _x[_y]=string.char(math.random(32,126))
  end
  return table.concat(_x)
end
local function _z(_A)
  led=_A.Ticket_Asset
  if led.ImageColor3==Color3 .fromRGB(255,0,0)then
    led.ImageColor3=Color3 .fromRGB(0,255,0)
  else
    led.ImageColor3=Color3 .fromRGB(255,0,0)
  end
end
local function _B()
  return(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())/1000
end
local function _C(_D)
  if _D~=""then
    for _E,_F in pairs(_b:GetPlayers())do
      if _F.Name:lower():match(_D)or _F.DisplayName:lower():match(_D)then
        return _F
      end
    end
    return nil
  else
    return nil
  end
end
local function _H(_I)
  if _I.Character then
    return _I.Character
  end
end
local function _J(_K)
  if _H(_K):FindFirstChild("HumanoidRootPart")then
    return _H(_K).HumanoidRootPart
  end
end
local function _L(_M,_N,_O,_P,_Q)
  pcall(function()
    if _Q=="safe"then
      task.spawn(function()
        for _R=1,30 do
          task.wait()
          _J(_c).Velocity=Vector3 .new(0,0,0)
          if _P=="pos"then
            _J(_c).CFrame=CFrame.new(_M,_N,_O)
          else
            _J(_c).CFrame=CFrame.new(_J(_P).Position)+Vector3 .new(0,2,0)
          end
        end
      end)
    else
      _J(_c).Velocity=Vector3 .new(0,0,0)
      if _P=="pos"then
        _J(_c).CFrame=CFrame.new(_M,_N,_O)
      else
        _J(_c).CFrame=CFrame.new(_J(_P).Position)+Vector3 .new(0,2,0)
      end
    end
  end)
end
local function _S(_T,_U)
  local _V=_J(_T)
  local _W=_V.Position
  local _X=_V.Velocity
  _J(_c).CFrame=CFrame.new((_W.X)+(_X.X)*(_B()*3.5),(_W.Y)+(_X.Y)*(_B()*2),(_W.Z)+(_X.Z)*(_B()*3.5))
  if _U=="safe"then
    task.wait()
    _J(_c).CFrame=CFrame.new(_W)
    task.wait()
    _J(_c).CFrame=CFrame.new((_W.X)+(_X.X)*(_B()*3.5),(_W.Y)+(_X.Y)*(_B()*2),(_W.Z)+(_X.Z)*(_B()*3.5))
  end
end
local function _Y(_Z,_ba)
  pcall(function()
    _Z=_Z:FindFirstAncestorWhichIsA("Part")
    if _Z then
      if firetouchinterest then
        task.spawn(function()
          firetouchinterest(_Z,_ba,1)
          task.wait()
          firetouchinterest(_Z,_ba,0)
        end)
      end
    end
  end)
end
local function _bb()
  local _bc=nil
  pcall(function()
    if _c.Backpack:FindFirstChild("Push")then
      PushTool=_c.Backpack.Push
      PushTool.Parent=_c.Character
      _bc=PushTool
    end
    for _bd,_be in pairs(_b:GetPlayers())do
      if _be.Character:FindFirstChild("Push")then
        _bc=_be.Character.Push
      end
    end
  end)
  return _bc
end
local function _bf()
  if _c.Backpack:FindFirstChild("potion")then
    _n=_c.Backpack:FindFirstChild("potion")
    return true
  elseif _c.Character:FindFirstChild("potion")then
    _n=_c.Character:FindFirstChild("potion")
    return true
  else
    return false
  end
end
local function _bg(_bh)
  local _bi=_bb()
  local _bj=nil
  if _bi~=nil then
    local _bk={[1]=_bh.Character}
    _bb().PushTool:FireServer(unpack(_bk))
  end
  if _c.Character:FindFirstChild("Push")then
    _c.Character.Push.Parent=_c.Backpack
  end
  if _c.Character:FindFirstChild("ModdedPush")then
    _bj=_c.Character:FindFirstChild("ModdedPush")
    _bj.Parent=_c.Backpack
    _bj.Parent=_c.Character
  end
  if _c.Character:FindFirstChild("ClickTarget")then
    _bj=_c.Character:FindFirstChild("ClickTarget")
    _bj.Parent=_c.Backpack
    _bj.Parent=_c.Character
  end
  if _c.Character:FindFirstChild("potion")then
    _bj=_c.Character:FindFirstChild("potion")
    _bj.Parent=_c.Backpack
    _bj.Parent=_c.Character
  end
end
local function _bl(_bm)
  pcall(function()
    _c.Character["Falling down"].Disabled=_bm
    _c.Character["Swimming"].Disabled=_bm
    _c.Character["StartRagdoll"].Disabled=_bm
    _c.Character["Pushed"].Disabled=_bm
    _c.Character["RagdollMe"].Disabled=_bm
  end)
end
local function _bn(_bo)
  if _bo then
    game.Workspace.FallenPartsDestroyHeight=0/0
  else
    game.Workspace.FallenPartsDestroyHeight=(-500)
  end
end
local function _bp(_bq,_br,_bs)
  pcall(function()
    _c.Character.Animate.Disabled=false
    local _bt=_c.Character.Humanoid
    local _bu=_bt:GetPlayingAnimationTracks()
    for _bv,_bw in pairs(_bu)do
      _bw:Stop()
    end
    _c.Character.Animate.Disabled=true
    local _bx=Instance.new("Animation")
    _bx.AnimationId="rbxassetid://".._bq
    local _by=_bt:LoadAnimation(_bx)
    _by:Play()
    _by.TimePosition=_br
    _by:AdjustSpeed(_bs)
    _by.Stopped:Connect(function()
      _c.Character.Animate.Disabled=false
      for _bz,_bA in pairs(_bu)do
        _bA:Stop()
      end
    end)
  end)
end
local function _bB()
  _c.Character.Animate.Disabled=false
  local _bC=_c.Character.Humanoid:GetPlayingAnimationTracks()
  for _bD,_bE in pairs(_bC)do
    _bE:Stop()
  end
end
local function _bF(_bG,_bH,_bI)
  game:GetService("StarterGui"):SetCore("SendNotification",{Title=_bG,Text=_bH,Duration=_bI;})
end
task.wait(0.1)
local _bJ=Instance.new("ScreenGui")
local _bK=Instance.new("Frame")
local _bL=Instance.new("UIStroke")
local _bM=Instance.new("UICorner")
local _bN=Instance.new("UIStroke")
local _bO=Instance.new("TextLabel")
local _bP=Instance.new("UIStroke")
local _bQ=Instance.new("Frame")
local _bR=Instance.new("UICorner")
local _bS=Instance.new("UIStroke")
local _bT=Instance.new("TextButton")
local _bU=Instance.new("TextButton")
local _bV=Instance.new("TextButton")
local _bW=Instance.new("TextButton")
local _bX=Instance.new("TextButton")
local _bY=Instance.new("TextButton")
local _bZ=Instance.new("TextButton")
local _ca=Instance.new("ScrollingFrame")
local _cb=Instance.new("TextButton")
local _cc=Instance.new("TextButton")
local _cd=Instance.new("TextButton")
local _ce=Instance.new("TextButton")
local _cf=Instance.new("TextButton")
local _cg=Instance.new("TextButton")
local _ch=Instance.new("TextButton")
local _ci=Instance.new("TextButton")
local _cj=Instance.new("TextButton")
local _ck=Instance.new("TextButton")
local _cl=Instance.new("TextButton")
local _cm=Instance.new("TextBox")
local _cn=Instance.new("TextButton")
local _co=Instance.new("TextButton")
local _cp=Instance.new("TextButton")
local _cq=Instance.new("TextButton")
local _cr=Instance.new("TextButton")
local _cs=Instance.new("TextButton")
local _ct=Instance.new("TextButton")
local _cu=Instance.new("TextButton")
local _cv=Instance.new("TextButton")
local _cw=Instance.new("TextButton")
local _cx=Instance.new("TextButton")
local _cy=Instance.new("ScrollingFrame")
local _cz=Instance.new("ImageLabel")
local _cA=Instance.new("TextLabel")
local _cB=Instance.new("TextLabel")
local _cC=Instance.new("ScrollingFrame")
local _cD=Instance.new("TextButton")
local _cE=Instance.new("TextBox")
local _cF=Instance.new("TextButton")
local _cG=Instance.new("TextBox")
local _cH=Instance.new("TextButton")
local _cI=Instance.new("TextButton")
local _cJ=Instance.new("TextButton")
local _cK=Instance.new("TextButton")
local _cL=Instance.new("TextBox")
local _cM=Instance.new("TextButton")
local _cN=Instance.new("ScrollingFrame")
local _cO=Instance.new("ImageLabel")
local _cP=Instance.new("ImageButton")
local _cQ=Instance.new("TextBox")
local _cR=Instance.new("TextLabel")
local _cS=Instance.new("TextButton")
local _cT=Instance.new("TextButton")
local _cU=Instance.new("TextButton")
local _cV=Instance.new("TextButton")
local _cW=Instance.new("TextButton")
local _cX=Instance.new("TextButton")
local _cY=Instance.new("TextButton")
local _cZ=Instance.new("TextButton")
local _da=Instance.new("TextButton")
local _db=Instance.new("TextButton")
local _dc=Instance.new("TextButton")
local _dd=Instance.new("TextButton")
local _de=Instance.new("ScrollingFrame")
local _df=Instance.new("TextButton")
local _dg=Instance.new("TextButton")
local _dh=Instance.new("TextButton")
local _di=Instance.new("TextButton")
local _dj=Instance.new("TextButton")
local _dk=Instance.new("TextButton")
local _dl=Instance.new("TextButton")
local _dm=Instance.new("TextButton")
local _dn=Instance.new("TextButton")
local _do=Instance.new("TextButton")
local _dp=Instance.new("TextButton")
local _dq=Instance.new("TextButton")
local _dr=Instance.new("TextButton")
local _ds=Instance.new("TextButton")
local _dt=Instance.new("TextButton")
local _du=Instance.new("TextButton")
local _dv=Instance.new("TextButton")
local _dw=Instance.new("TextButton")
local _dx=Instance.new("TextButton")
local _dy=Instance.new("TextButton")
local _dz=Instance.new("TextButton")
local _dA=Instance.new("ScrollingFrame")
local _dB=Instance.new("TextButton")
local _dC=Instance.new("TextButton")
local _dD=Instance.new("TextButton")
local _dE=Instance.new("TextButton")
local _dF=Instance.new("TextButton")
local _dG=Instance.new("TextButton")
local _dH=Instance.new("TextButton")
local _dI=Instance.new("TextButton")
local _dJ=Instance.new("TextButton")
local _dK=Instance.new("TextButton")
local _dL=Instance.new("TextButton")
local _dM=Instance.new("TextButton")
local _dN=Instance.new("TextBox")
local _dO=Instance.new("ScrollingFrame")
local _dP=Instance.new("TextLabel")
local _dQ=Instance.new("ImageLabel")
local _dR=Instance.new("Folder")
local _dS=Instance.new("ImageButton")
local _dT=Instance.new("ImageButton")
local _dU=Instance.new("BodyAngularVelocity")
local _dV=Instance.new("ImageButton")
local _dW=Instance.new("UIGradient")
local _dX=Instance.new("TextButton")
local _dY=Instance.new("TextButton")
local _dZ=Instance.new("TextButton")
local _ea=Instance.new("TextButton")
local _eb=Instance.new("ImageButton")
local _ec=Instance.new("UICorner")
local _ed=Instance.new("UIStroke")
local function _ee(_ef)
  local _eg=_dS:Clone()
  _eg.Parent=_ef
end
local function _eh(_ei)
  local _ej=_dT:Clone()
  _ej.Parent=_ei
end
_bJ.Name="AAYANPanel"
_bJ.Parent=game.CoreGui
_bJ.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
_bJ.ResetOnSpawn=false
_bK.Name="Background"
_bK.Parent=_bJ
_bK.AnchorPoint=Vector2 .new(0.5,0.5)
_bK.BackgroundColor3=Color3 .fromRGB(0,0,0)
_bK.BackgroundTransparency=0.35
_bK.BorderColor3=Color3 .fromRGB(0,0,0)
_bK.Position=UDim2 .new(0.5,0,0.5,0)
_bK.Size=UDim2 .new(0,500,0,350)
_bK.ZIndex=9
_bK.Active=true
_bK.Draggable=true
_bK.ClipsDescendants=false
_bM.CornerRadius=UDim.new(0,10)
_bM.Parent=_bK
_bL.Name="BorderStroke"
_bL.Parent=_bK
_bL.Color=Color3 .fromRGB(0,255,90)
_bL.Thickness=2
_bL.Transparency=0
_bN.Name="GlowStroke"
_bN.Parent=_bK
_bN.Color=Color3 .fromRGB(0,255,90)
_bN.Thickness=2
_bN.Transparency=0.6
_bO.Name="TitleBarLabel"
_bO.Parent=_bK
_bO.BackgroundColor3=Color3 .fromRGB(0,0,0)
_bO.BackgroundTransparency=0.25
_bO.BorderColor3=Color3 .fromRGB(0,0,0)
_bO.BorderSizePixel=0
_bO.Size=UDim2 .new(1,0,0,30)
_bO.Font=Enum.Font.Oswald
_bO.Text="____/AAYAN V2\\___"
_bO.TextColor3=Color3 .fromRGB(255,255,255)
_bO.TextScaled=true
_bO.TextSize=14
_bO.TextWrapped=true
_bO.TextXAlignment=Enum.TextXAlignment.Left
_bO.ZIndex=10
_bP.Parent=_bO
_bP.Color=Color3 .fromRGB(0,255,90)
_bP.Thickness=1
_bP.Transparency=0.3
_bQ.Name="SectionList"
_bQ.Parent=_bK
_bQ.BackgroundColor3=Color3 .fromRGB(0,0,0)
_bQ.BackgroundTransparency=0.55
_bQ.BorderColor3=Color3 .fromRGB(0,0,0)
_bQ.BorderSizePixel=0
_bQ.Position=UDim2 .new(0,0,0,30)
_bQ.Size=UDim2 .new(0,105,0,320)
_bQ.ZIndex=10
_bR.CornerRadius=UDim.new(0,8)
_bR.Parent=_bQ
_bS.Parent=_bQ
_bS.Color=Color3 .fromRGB(0,255,90)
_bS.Thickness=1
_bS.Transparency=0.2
local function _ek(_el,_em,_en)
  _el.Name=_em.."_Section_Button"
  _el.Parent=_bQ
  _el.BackgroundColor3=Color3 .fromRGB(0,0,0)
  _el.BackgroundTransparency=0.5
  _el.BorderColor3=Color3 .fromRGB(0,0,0)
  _el.BorderSizePixel=0
  _el.Position=UDim2 .new(0,0,0,_en)
  _el.Size=UDim2 .new(0,105,0,30)
  _el.Font=Enum.Font.Oswald
  _el.Text=_em
  _el.TextColor3=Color3 .fromRGB(255,255,255)
  _el.TextScaled=true
  _el.TextSize=14
  _el.TextWrapped=true
  _el.ZIndex=10
  local _eo=Instance.new("UICorner")
  _eo.CornerRadius=UDim.new(0,6)
  _eo.Parent=_el
  local _ep=Instance.new("UIStroke")
  _ep.Color=Color3 .fromRGB(0,255,90)
  _ep.Thickness=1
  _ep.Transparency=0.5
  _ep.Parent=_el
  _el.MouseEnter:Connect(function()
    _d:Create(_el,TweenInfo.new(0.2),{BackgroundTransparency=0.2}):Play()
    _d:Create(_ep,TweenInfo.new(0.2),{Transparency=0}):Play()
  end)
  _el.MouseLeave:Connect(function()
    _d:Create(_el,TweenInfo.new(0.2),{BackgroundTransparency=0.5}):Play()
    _d:Create(_ep,TweenInfo.new(0.2),{Transparency=0.5}):Play()
  end)
end
_ek(_bT,"Home",25)
_ek(_bU,"Game",65)
_ek(_bV,"Character",105)
_ek(_bW,"Target",145)
_ek(_bX,"Animations",185)
_ek(_bY,"Misc",225)
_ek(_bZ,"Credits",265)
local function _eq(_er,_es,_et,_eu,_ev,_ew,_ex)
  _er.Name=_es
  _er.BackgroundColor3=Color3 .fromRGB(0,0,0)
  _er.BackgroundTransparency=0.4
  _er.BorderColor3=Color3 .fromRGB(0,0,0)
  _er.BorderSizePixel=0
  _er.Position=UDim2 .new(0,_eu,0,_ev)
  _er.Size=UDim2 .new(0,_ew,0,_ex)
  _er.Font=Enum.Font.Oswald
  _er.Text=_et
  _er.TextColor3=Color3 .fromRGB(255,255,255)
  _er.TextScaled=true
  _er.TextSize=14
  _er.TextWrapped=true
  _er.ZIndex=12
  local _ey=Instance.new("UICorner")
  _ey.CornerRadius=UDim.new(0,6)
  _ey.Parent=_er
  local _ez=Instance.new("UIStroke")
  _ez.Color=Color3 .fromRGB(0,255,90)
  _ez.Thickness=1
  _ez.Transparency=0.4
  _ez.Parent=_er
  _er.MouseEnter:Connect(function()
    _d:Create(_er,TweenInfo.new(0.15),{BackgroundTransparency=0.1}):Play()
    _d:Create(_ez,TweenInfo.new(0.15),{Transparency=0}):Play()
  end)
  _er.MouseLeave:Connect(function()
    _d:Create(_er,TweenInfo.new(0.15),{BackgroundTransparency=0.4}):Play()
    _d:Create(_ez,TweenInfo.new(0.15),{Transparency=0.4}):Play()
  end)
end
local function _eA(_eB,_eC,_eD)
  _eB.Name=_eC
  _eB.Parent=_bK
  _eB.Active=true
  _eB.BackgroundColor3=Color3 .fromRGB(255,255,255)
  _eB.BackgroundTransparency=1.000
  _eB.BorderColor3=Color3 .fromRGB(0,0,0)
  _eB.BorderSizePixel=0
  _eB.Position=UDim2 .new(0,105,0,30)
  _eB.Size=UDim2 .new(0,395,0,320)
  _eB.Visible=false
  _eB.CanvasSize=UDim2 .new(0,0,_eD,0)
  _eB.ScrollBarThickness=5
  _eB.ZIndex=10
end
_eA(_ca,"Game_Section",1.85)
_eA(_cy,"Home_Section",0)
_eA(_cC,"Character_Section",1)
_eA(_cN,"Target_Section",1.25)
_eA(_de,"Animations_Section",1.6)
_eA(_dA,"Misc_Section",1.1)
_eA(_dO,"Credits_Section",0.8)
_eq(_cb,"AntiRagdoll_Button","Anti ragdoll",25,25,150,30);
_cb.Parent=_ca
_eq(_cc,"PotionFling_Button","Potion Fling",210,75,150,30);
_cc.Parent=_ca
_eq(_cd,"SpamMines_Button","Spam mines",25,75,150,30);
_cd.Parent=_ca
_eq(_ce,"PushAura_Button","Push aura",210,25,150,30);
_ce.Parent=_ca
_eq(_cf,"BreakCannons_Button","Break Cannons",25,225,150,30);
_cf.Parent=_ca
_eq(_cg,"LethalCannons_Button","Lethal Cannons",25,275,150,30);
_cg.Parent=_ca
_eq(_ch,"ChatAlert_Button","Chat alert",210,275,150,30);
_ch.Parent=_ca
_eq(_ci,"PotionDi_Button","Potion dick",210,125,150,30);
_ci.Parent=_ca
_eq(_cj,"VoidProtection_Button","ANTIVOID",25,175,150,30);
_cj.Parent=_ca
_eq(_ck,"PushAll_Button","Push all",210,225,150,30);
_ck.Parent=_ca
_eq(_cl,"TouchFling_Button","Touch fling",25,125,150,30);
_cl.Parent=_ca
_eq(_cx,"FreePushTool_Button","Modded push",210,175,150,30);
_cx.Parent=_ca
_cm.Name="CMDBar"
_cm.Parent=_ca
_cm.AnchorPoint=Vector2 .new(0.5,0.5)
_cm.BackgroundColor3=Color3 .fromRGB(0,0,0)
_cm.BackgroundTransparency=0.3
_cm.BorderColor3=Color3 .fromRGB(0,0,0)
_cm.BorderSizePixel=0
_cm.Position=UDim2 .new(0.5,0,0,350)
_cm.Size=UDim2 .new(0,275,0,40)
_cm.Font=Enum.Font.Gotham
_cm.PlaceholderColor3=Color3 .fromRGB(200,200,200)
_cm.PlaceholderText="CMD BAR..."
_cm.Text=""
_cm.TextColor3=Color3 .fromRGB(255,255,255)
_cm.TextSize=14
_cm.TextWrapped=true
_cm.ZIndex=12
local _eE=Instance.new("UICorner");
_eE.CornerRadius=UDim.new(0,6);
_eE.Parent=_cm
local _eF=Instance.new("UIStroke");
_eF.Color=Color3 .fromRGB(0,255,90);
_eF.Thickness=1;
_eF.Parent=_cm
_eq(_cn,"CannonTP1_Button","TP Cannon 1",25,400,150,30);
_cn.Parent=_ca
_eq(_co,"CannonTP2_Button","TP Cannon 2",210,400,150,30);
_co.Parent=_ca
_eq(_cp,"CannonTP3_Button","TP Cannon 3",25,450,150,30);
_cp.Parent=_ca
_eq(_cq,"MinefieldTP_Button","TP Minefield",210,450,150,30);
_cq.Parent=_ca
_eq(_cr,"BallonTP_Button","TP Ballon",25,500,150,30);
_cr.Parent=_ca
_eq(_cs,"NormalStairsTP_Button","TP Stairs",210,500,150,30);
_cs.Parent=_ca
_eq(_ct,"MovingStairsTP_Button","TP Moving Stairs",25,550,150,30);
_ct.Parent=_ca
_eq(_cu,"SpiralStairsTP_Button","TP Spiral Stairs",210,550,150,30);
_cu.Parent=_ca
_eq(_cv,"SkyscraperTP_Button","TP Skyscraper",25,600,150,30);
_cv.Parent=_ca
_eq(_cw,"PoolTP_Button","TP Pool",210,600,150,30);
_cw.Parent=_ca
_cz.Name="Profile_Image"
_cz.Parent=_cy
_cz.BackgroundColor3=Color3 .fromRGB(0,0,0)
_cz.BackgroundTransparency=0.4
_cz.BorderColor3=Color3 .fromRGB(0,0,0)
_cz.BorderSizePixel=0
_cz.Position=UDim2 .new(0,25,0,25)
_cz.Size=UDim2 .new(0,100,0,100)
_cz.Image=_b:GetUserThumbnailAsync(_c.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
_cz.ZIndex=12
local _eG=Instance.new("UICorner");
_eG.CornerRadius=UDim.new(0,8);
_eG.Parent=_cz
local _eH=Instance.new("UIStroke");
_eH.Color=Color3 .fromRGB(0,255,90);
_eH.Thickness=2;
_eH.Parent=_cz
_cA.Name="Welcome_Label"
_cA.Parent=_cy
_cA.BackgroundColor3=Color3 .fromRGB(255,255,255)
_cA.BackgroundTransparency=1.000
_cA.BorderColor3=Color3 .fromRGB(0,0,0)
_cA.BorderSizePixel=0
_cA.Position=UDim2 .new(0,150,0,25)
_cA.Size=UDim2 .new(0,200,0,100)
_cA.Font=Enum.Font.SourceSans
_cA.Text=("Hello @".._c.Name.."!\nPress [B] to open/close gui.")
_cA.TextColor3=Color3 .fromRGB(255,255,255)
_cA.TextSize=24
_cA.TextWrapped=true
_cA.TextXAlignment=Enum.TextXAlignment.Left
_cA.TextYAlignment=Enum.TextYAlignment.Top
_cA.ZIndex=12
_cB.Name="Announce_Label"
_cB.Parent=_cy
_cB.BackgroundColor3=Color3 .fromRGB(0,0,0)
_cB.BackgroundTransparency=0.4
_cB.BorderColor3=Color3 .fromRGB(0,0,0)
_cB.BorderSizePixel=0
_cB.Position=UDim2 .new(0,25,0,150)
_cB.Size=UDim2 .new(0,350,0,150)
_cB.Font=Enum.Font.SourceSans
_cB.Text="VOID PROTECTION ( ANTIVOID ) LOCATED IN GAME TAB"
_cB.TextColor3=Color3 .fromRGB(255,255,255)
_cB.TextSize=24
_cB.TextWrapped=true
_cB.TextXAlignment=Enum.TextXAlignment.Left
_cB.TextYAlignment=Enum.TextYAlignment.Top
_cB.ZIndex=12
local _eI=Instance.new("UICorner");
_eI.CornerRadius=UDim.new(0,8);
_eI.Parent=_cB
local _eJ=Instance.new("UIStroke");
_eJ.Color=Color3 .fromRGB(0,255,90);
_eJ.Thickness=1;
_eJ.Transparency=0.3;
_eJ.Parent=_cB
_eq(_cD,"WalkSpeed_Button","Walk Speed",25,25,150,30);
_cD.Parent=_cC
_eq(_cH,"JumpPower_Button","Jump power",25,75,150,30);
_cH.Parent=_cC
_eq(_cK,"FlySpeed_Button","Fly speed",25,125,150,30);
_cK.Parent=_cC
_eq(_cM,"Fly_Button","Fly",25,175,150,30);
_cM.Parent=_cC
_eq(_cJ,"Respawn_Button","Respawn",25,225,150,30);
_cJ.Parent=_cC
_eq(_cI,"SaveCheckpoint_Button","Save checkpoint",210,175,150,30);
_cI.Parent=_cC
_eq(_cF,"ClearCheckpoint_Button","Clear checkpoint",210,225,150,30);
_cF.Parent=_cC
local function _eK(_eL,_eM,_eN,_eO,_eP)
  _eL.Name=_eM
  _eL.Parent=_cC
  _eL.BackgroundColor3=Color3 .fromRGB(0,0,0)
  _eL.BackgroundTransparency=0.3
  _eL.BorderColor3=Color3 .fromRGB(0,0,0)
  _eL.BorderSizePixel=0
  _eL.Position=UDim2 .new(0,_eO,0,_eP)
  _eL.Size=UDim2 .new(0,175,0,30)
  _eL.Font=Enum.Font.Gotham
  _eL.PlaceholderColor3=Color3 .fromRGB(200,200,200)
  _eL.PlaceholderText=_eN
  _eL.Text=""
  _eL.TextColor3=Color3 .fromRGB(255,255,255)
  _eL.TextSize=14
  _eL.TextWrapped=true
  _eL.ZIndex=12
  local _eQ=Instance.new("UICorner");
  _eQ.CornerRadius=UDim.new(0,6);
  _eQ.Parent=_eL
  local _eR=Instance.new("UIStroke");
  _eR.Color=Color3 .fromRGB(0,255,90);
  _eR.Thickness=1;
  _eR.Transparency=0.3;
  _eR.Parent=_eL
end
_eK(_cE,"WalkSpeed_Input","Number [1-99999]",210,25)
_eK(_cG,"JumpPower_Input","Number [1-99999]",210,75)
_eK(_cL,"FlySpeed_Input","Number [1-99999]",210,125)
_cO.Name="TargetImage"
_cO.Parent=_cN
_cO.BackgroundColor3=Color3 .fromRGB(0,0,0)
_cO.BackgroundTransparency=0.4
_cO.BorderColor3=Color3 .fromRGB(0,0,0)
_cO.BorderSizePixel=0
_cO.Position=UDim2 .new(0,25,0,25)
_cO.Size=UDim2 .new(0,100,0,100)
_cO.Image="rbxassetid://10818605405"
_cO.ZIndex=12
local _eS=Instance.new("UICorner");
_eS.CornerRadius=UDim.new(0,8);
_eS.Parent=_cO
local _eT=Instance.new("UIStroke");
_eT.Color=Color3 .fromRGB(0,255,90);
_eT.Thickness=2;
_eT.Parent=_cO
_cQ.Name="TargetName_Input"
_cQ.Parent=_cN
_cQ.BackgroundColor3=Color3 .fromRGB(0,0,0)
_cQ.BackgroundTransparency=0.3
_cQ.BorderColor3=Color3 .fromRGB(0,0,0)
_cQ.BorderSizePixel=0
_cQ.Position=UDim2 .new(0,150,0,30)
_cQ.Size=UDim2 .new(0,175,0,30)
_cQ.Font=Enum.Font.Gotham
_cQ.PlaceholderColor3=Color3 .fromRGB(200,200,200)
_cQ.PlaceholderText="@target..."
_cQ.Text=""
_cQ.TextColor3=Color3 .fromRGB(255,255,255)
_cQ.TextSize=14
_cQ.TextWrapped=true
_cQ.ZIndex=12
local _eU=Instance.new("UICorner");
_eU.CornerRadius=UDim.new(0,6);
_eU.Parent=_cQ
local _eV=Instance.new("UIStroke");
_eV.Color=Color3 .fromRGB(0,255,90);
_eV.Thickness=1;
_eV.Transparency=0.3;
_eV.Parent=_cQ
_cP.Name="ClickTargetTool_Button"
_cP.Parent=_cQ
_cP.BackgroundColor3=Color3 .fromRGB(255,255,255)
_cP.BackgroundTransparency=1.000
_cP.BorderColor3=Color3 .fromRGB(0,0,0)
_cP.BorderSizePixel=0
_cP.Position=UDim2 .new(0,180,0,0)
_cP.Size=UDim2 .new(0,30,0,30)
_cP.Image="rbxassetid://2716591855"
_cP.ZIndex=13
_cR.Name="UserIDTargetLabel"
_cR.Parent=_cN
_cR.BackgroundColor3=Color3 .fromRGB(255,255,255)
_cR.BackgroundTransparency=1.000
_cR.BorderColor3=Color3 .fromRGB(0,0,0)
_cR.BorderSizePixel=0
_cR.Position=UDim2 .new(0,150,0,70)
_cR.Size=UDim2 .new(0,300,0,75)
_cR.Font=Enum.Font.Oswald
_cR.Text="UserID: \nDisplay: \nJoined: "
_cR.TextColor3=Color3 .fromRGB(255,255,255)
_cR.TextSize=18
_cR.TextWrapped=true
_cR.TextXAlignment=Enum.TextXAlignment.Left
_cR.TextYAlignment=Enum.TextYAlignment.Top
_cR.ZIndex=12
_eq(_cT,"FlingTarget_Button","Fling",25,150,150,30);
_cT.Parent=_cN
_eq(_cS,"ViewTarget_Button","View",210,150,150,30);
_cS.Parent=_cN
_eq(_cU,"FocusTarget_Button","Focus",25,200,150,30);
_cU.Parent=_cN
_eq(_cV,"BenxTarget_Button","Bang",210,200,150,30);
_cV.Parent=_cN
_eq(_da,"StandTarget_Button","Stand",25,250,150,30);
_da.Parent=_cN
_eq(_cZ,"HeadsitTarget_Button","Headsit",210,250,150,30);
_cZ.Parent=_cN
_eq(_dc,"DoggyTarget_Button","Doggy",25,300,150,30);
_dc.Parent=_cN
_eq(_db,"BackpackTarget_Button","Backpack",210,300,150,30);
_db.Parent=_cN
_eq(_dd,"DragTarget_Button","Drag",25,350,150,30);
_dd.Parent=_cN
_eq(_cY,"TeleportTarget_Button","Teleport",210,350,150,30);
_cY.Parent=_cN
_eq(_cW,"PushTarget_Button","Push",25,400,150,30);
_cW.Parent=_cN
_eq(_cX,"WhitelistTarget_Button","Whitelist",210,400,150,30);
_cX.Parent=_cN
local _eW={{_df,"Vampire",25,25},{_dg,"Hero",210,25},{_dh,"Zombie Classic",25,75},{_di,"Mage",210,75},{_dj,"Ghost",25,125},{_dk,"Elder",210,125},{_dl,"Levitation",25,175},{_dm,"Astronaut",210,175},{_dn,"Ninja",25,225},{_do,"Werewolf",210,225},{_dp,"Cartoon",25,275},{_dq,"Pirate",210,275},{_dr,"Sneaky",25,325},{_ds,"Toy",210,325},{_dt,"Knight",25,375},{_du,"Confident",210,375},{_dv,"Popstar",25,425},{_dw,"Princess",210,425},{_dx,"Cowboy",25,475},{_dy,"Patrol",210,475},{_dz,"FE Zombie",25,525},}
for _eX,_eY in ipairs(_eW)do
  _eq(_eY[1],_eY[1].Name,_eY[2],_eY[3],_eY[4],150,30)
  _eY[1].Parent=_de
end
_eq(_dB,"AntiFling_Button","Anti fling",25,25,150,30);
_dB.Parent=_dA
_eq(_dC,"AntiChatSpy_Button","Anti chat spy",210,25,150,30);
_dC.Parent=_dA
_eq(_dD,"AntiAFK_Button","Anti AFK",25,75,150,30);
_dD.Parent=_dA
_eq(_dE,"Shaders_Button","Shaders",210,75,150,30);
_dE.Parent=_dA
_eq(_dF,"Day_Button","Day",25,125,150,30);
_dF.Parent=_dA
_eq(_dG,"Night_Button","Night",210,125,150,30);
_dG.Parent=_dA
_eq(_dJ,"InfYield_Button","Infinite Yield",25,175,150,30);
_dJ.Parent=_dA
_eq(_dI,"CMDX_Button","CMDX",210,175,150,30);
_dI.Parent=_dA
_eq(_dL,"Explode_Button","Explode",25,225,150,30);
_dL.Parent=_dA
_eq(_dM,"FreeEmotes_Button","Free emotes",210,225,150,30);
_dM.Parent=_dA
_eq(_dH,"Rejoin_Button","Rejoin",25,275,150,30);
_dH.Parent=_dA
_eq(_dK,"Serverhop_Button","Server hop",210,275,150,30);
_dK.Parent=_dA
_dN.Name="ChatBox_Input"
_dN.Parent=_dA
_dN.BackgroundColor3=Color3 .fromRGB(0,0,0)
_dN.BackgroundTransparency=0.3
_dN.BorderColor3=Color3 .fromRGB(0,0,0)
_dN.BorderSizePixel=0
_dN.Position=UDim2 .new(0,25,0,325)
_dN.Size=UDim2 .new(0,335,0,50)
_dN.Font=Enum.Font.Oswald
_dN.PlaceholderColor3=Color3 .fromRGB(200,200,200)
_dN.PlaceholderText="Chat bypass [You won't get banned for your messages]"
_dN.Text=""
_dN.TextColor3=Color3 .fromRGB(255,255,255)
_dN.TextSize=14
_dN.TextWrapped=true
_dN.TextXAlignment=Enum.TextXAlignment.Left
_dN.TextYAlignment=Enum.TextYAlignment.Top
_dN.ZIndex=12
local _eZ=Instance.new("UICorner");
_eZ.CornerRadius=UDim.new(0,6);
_eZ.Parent=_dN
local _fa=Instance.new("UIStroke");
_fa.Color=Color3 .fromRGB(0,255,90);
_fa.Thickness=1;
_fa.Transparency=0.3;
_fa.Parent=_dN
_dP.Name="Credits_Label"
_dP.Parent=_dO
_dP.BackgroundColor3=Color3 .fromRGB(0,0,0)
_dP.BackgroundTransparency=0.4
_dP.BorderColor3=Color3 .fromRGB(0,0,0)
_dP.BorderSizePixel=0
_dP.Position=UDim2 .new(0,25,0,150)
_dP.Size=UDim2 .new(0,350,0,150)
_dP.Font=Enum.Font.SourceSans
_dP.Text=("Made by: REBEL STAR AAYAN\n FATHEROF EGO EMPIR/\nUNSTOPPABLE & UNDEFEATABLE ð¥").._a
_dP.TextColor3=Color3 .fromRGB(255,255,255)
_dP.TextSize=24
_dP.TextWrapped=true
_dP.TextXAlignment=Enum.TextXAlignment.Left
_dP.TextYAlignment=Enum.TextYAlignment.Top
_dP.ZIndex=12
local _fb=Instance.new("UICorner");
_fb.CornerRadius=UDim.new(0,8);
_fb.Parent=_dP
local _fc=Instance.new("UIStroke");
_fc.Color=Color3 .fromRGB(0,255,90);
_fc.Thickness=1;
_fc.Transparency=0.3;
_fc.Parent=_dP
_dQ.Name="Crown"
_dQ.Parent=_bK
_dQ.AnchorPoint=Vector2 .new(0.300000012,0.800000012)
_dQ.BackgroundColor3=Color3 .fromRGB(255,255,255)
_dQ.BackgroundTransparency=1.000
_dQ.BorderColor3=Color3 .fromRGB(0,0,0)
_dQ.BorderSizePixel=0
_dQ.Rotation=(-20)
_dQ.Size=UDim2 .new(0,75,0,75)
_dQ.Image="rbxassetid://12298407748"
_dQ.ImageColor3=Color3 .fromRGB(0,255,90)
_dQ.ZIndex=11
_dR.Name="Assets"
_dR.Parent=_bJ
_dS.Name="Ticket_Asset"
_dS.Parent=_dR
_dS.AnchorPoint=Vector2 .new(0,0.5)
_dS.BackgroundTransparency=1.000
_dS.BorderSizePixel=0
_dS.LayoutOrder=5
_dS.Position=UDim2 .new(1,5,0.5,0)
_dS.Size=UDim2 .new(0,25,0,25)
_dS.ZIndex=2
_dS.Image="rbxassetid://3926305904"
_dS.ImageColor3=Color3 .fromRGB(255,0,0)
_dS.ImageRectOffset=Vector2 .new(424,4)
_dS.ImageRectSize=Vector2 .new(36,36)
_dT.Name="Click_Asset"
_dT.Parent=_dR
_dT.AnchorPoint=Vector2 .new(0,0.5)
_dT.BackgroundTransparency=1.000
_dT.BorderSizePixel=0
_dT.Position=UDim2 .new(1,5,0.5,0)
_dT.Size=UDim2 .new(0,25,0,25)
_dT.ZIndex=2
_dT.Image="rbxassetid://3926305904"
_dT.ImageColor3=Color3 .fromRGB(100,100,100)
_dT.ImageRectOffset=Vector2 .new(204,964)
_dT.ImageRectSize=Vector2 .new(36,36)
_dU.AngularVelocity=Vector3 .new(0,0,0)
_dU.MaxTorque=Vector3 .new(50000,50000,50000)
_dU.P=1250
_dU.Name="BreakVelocity"
_dU.Parent=_dR
_dV.Name="Fly_Pad"
_dV.Parent=_dR
_dV.BackgroundTransparency=1.000
_dV.Position=UDim2 .new(0.1,0,0.6,0)
_dV.Size=UDim2 .new(0,100,0,100)
_dV.ZIndex=2
_dV.Image="rbxassetid://6764432293"
_dV.ImageRectOffset=Vector2 .new(713,315)
_dV.ImageRectSize=Vector2 .new(75,75)
_dV.Visible=false
_dW.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3 .fromRGB(0,0,0)),ColorSequenceKeypoint.new(1.00,Color3 .fromRGB(0,255,90))}
_dW.Rotation=45
_dW.Parent=_dV
_dX.Name="FlyAButton";
_dX.Parent=_dV;
_dX.BackgroundTransparency=1;
_dX.BorderSizePixel=0
_dX.Position=UDim2 .new(0,0,0,30);
_dX.Size=UDim2 .new(0,30,0,40);
_dX.Text="";
_dX.TextColor3=Color3 .fromRGB(255,255,255)
_dY.Name="FlyDButton";
_dY.Parent=_dV;
_dY.BackgroundTransparency=1;
_dY.BorderSizePixel=0
_dY.Position=UDim2 .new(0,70,0,30);
_dY.Size=UDim2 .new(0,30,0,40);
_dY.Text="";
_dY.TextColor3=Color3 .fromRGB(255,255,255)
_dZ.Name="FlyWButton";
_dZ.Parent=_dV;
_dZ.BackgroundTransparency=1;
_dZ.BorderSizePixel=0
_dZ.Position=UDim2 .new(0,30,0,0);
_dZ.Size=UDim2 .new(0,40,0,30);
_dZ.Text="";
_dZ.TextColor3=Color3 .fromRGB(255,255,255)
_ea.Name="FlySButton";
_ea.Parent=_dV;
_ea.BackgroundTransparency=1;
_ea.BorderSizePixel=0
_ea.Position=UDim2 .new(0,30,0,70);
_ea.Size=UDim2 .new(0,40,0,30);
_ea.Text="";
_ea.TextColor3=Color3 .fromRGB(255,255,255)
_eb.Name="OpenClose"
_eb.Parent=_bJ
_eb.BackgroundColor3=Color3 .fromRGB(0,0,0)
_eb.BackgroundTransparency=0.2
_eb.BorderColor3=Color3 .fromRGB(0,255,90)
_eb.BorderSizePixel=0
_eb.Position=UDim2 .new(0,0,0.5,0)
_eb.Size=UDim2 .new(0,30,0,30)
_eb.Image="rbxassetid://12298407748"
_eb.ImageColor3=Color3 .fromRGB(0,255,90)
_eb.ZIndex=15
_ec.CornerRadius=UDim.new(1,0)
_ec.Parent=_eb
_ed.Parent=_eb
_ed.Color=Color3 .fromRGB(0,255,90)
_ed.Thickness=2
_ee(_cb)
_ee(_ce)
_ee(_cd)
_ee(_cc)
_ee(_cl)
_ee(_ci)
_ee(_cj)
_eh(_ck)
_eh(_cf)
_eh(_cg)
_eh(_ch)
_eh(_cx)
_eh(_cn)
_eh(_co)
_eh(_cp)
_eh(_cq)
_eh(_cr)
_eh(_cs)
_eh(_ct)
_eh(_cu)
_eh(_cv)
_eh(_cw)
_ee(_cM)
_eh(_cD)
_eh(_cF)
_eh(_cH)
_eh(_cI)
_eh(_cJ)
_eh(_cK)
_ee(_cS)
_ee(_cT)
_ee(_cU)
_ee(_cV)
_ee(_cZ)
_ee(_da)
_ee(_db)
_ee(_dc)
_ee(_dd)
_eh(_cW)
_eh(_cX)
_eh(_cY)
_eh(_df)
_eh(_dg)
_eh(_dh)
_eh(_di)
_eh(_dj)
_eh(_dk)
_eh(_dl)
_eh(_dm)
_eh(_dn)
_eh(_do)
_eh(_dp)
_eh(_dq)
_eh(_dr)
_eh(_ds)
_eh(_dt)
_eh(_du)
_eh(_dv)
_eh(_dw)
_eh(_dx)
_eh(_dy)
_eh(_dz)
_ee(_dB)
_ee(_dC)
_ee(_dD)
_ee(_dE)
_eh(_dF)
_eh(_dG)
_eh(_dH)
_eh(_dI)
_eh(_dL)
_eh(_dM)
_eh(_dJ)
_eh(_dK)
task.spawn(function()
  while _bJ.Parent do
    local _fd=TweenInfo.new(1.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut)
    _d:Create(_bN,_fd,{Transparency=0.2,Thickness=3}):Play()
    task.wait(1.2)
    _d:Create(_bN,_fd,{Transparency=0.75,Thickness=2}):Play()
    task.wait(1.2)
  end
end)
local function _fe()
  _bK.Visible=true
  _bK.Size=UDim2 .new(0,0,0,0)
  _bK.BackgroundTransparency=1
  _d:Create(_bK,TweenInfo.new(0.35,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2 .new(0,500,0,350),BackgroundTransparency=0.35}):Play()
end
local function _ff()
  _d:Create(_bK,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.In),{Size=UDim2 .new(0,0,0,0),BackgroundTransparency=1}):Play()
  task.wait(0.25)
  _bK.Visible=false
  _bK.Size=UDim2 .new(0,500,0,350)
  _bK.BackgroundTransparency=0.35
end
local function _fg(_fh)
  SectionClickedName=string.split(_fh.Name,"_")[1]
  for _fi,_fj in pairs(_bQ:GetChildren())do
    if _fj:IsA("TextButton")then
      if _fj~=_fh then
        _fj.BackgroundTransparency=0.5
        _fj.TextColor3=Color3 .fromRGB(255,255,255)
      else
        _fj.BackgroundTransparency=0.05
        _fj.TextColor3=Color3 .fromRGB(255,255,255)
      end
    end
  end
  for _fk,_fl in pairs(_bK:GetChildren())do
    if _fl:IsA("ScrollingFrame")then
      SectionForName=string.split(_fl.Name,"_")[1]
      if string.find(SectionClickedName,SectionForName)then
        _fl.Visible=true
      else
        _fl.Visible=false
      end
    end
  end
end
local function _fm(_fn)
  pcall(function()
    if table.find(_k,_fn.UserId)then
      _bF("AAYAN MINI V1","You cant target this player: @".._fn.Name.." / ".._fn.DisplayName,5)
      _fn=nil
    end
  end)
  if(_fn~=nil)then
    _l=_fn.Name
    _cQ.Text=_fn.Name
    _cR.Text=("UserID: ".._fn.UserId.."\nDisplay: ".._fn.DisplayName.."\nJoined: "..os.date("%d-%m-%Y",os.time()-_fn.AccountAge*24*3600).." [Day/Month/Year]")
    _cO.Image=_b:GetUserThumbnailAsync(_fn.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
  else
    _cQ.Text="@target..."
    _cR.Text="UserID: \nDisplay: \nJoined: "
    _cO.Image="rbxassetid://10818605405"
    _l=nil
    if _cT.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      _cT.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
      _cl.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    end
    _cS.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    _cU.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    _cV.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    _cZ.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    _da.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    _db.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    _dc.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    _dd.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
  end
end
local function _fo(_fp)
  task.spawn(function()
    if _fp then
      local _fq=nil
      repeat
        pcall(function()
          _fq=_J(_c).Velocity
          _J(_c).Velocity=Vector3 .new(math.random((-150),150),(-25000),math.random((-150),150))
          _e.RenderStepped:wait()
          _J(_c).Velocity=_fq
        end)
        _e.Heartbeat:wait()
      until _cl.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
    else
      _cl.Ticket_Asset.ImageColor3=Color3 .fromRGB(255,0,0)
    end
  end)
end
_fg(_bT)
_bT.MouseButton1Click:Connect(function()
  _fg(_bT)
end)
_bU.MouseButton1Click:Connect(function()
  _fg(_bU)
end)
_bV.MouseButton1Click:Connect(function()
  _fg(_bV)
end)
_bW.MouseButton1Click:Connect(function()
  _fg(_bW)
end)
_bX.MouseButton1Click:Connect(function()
  _fg(_bX)
end)
_bY.MouseButton1Click:Connect(function()
  _fg(_bY)
end)
_bZ.MouseButton1Click:Connect(function()
  _fg(_bZ)
end)
AntiRagdollFunction=nil
_cb.MouseButton1Click:Connect(function()
  _z(_cb)
  _bl(true)
  if _cb.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    AntiRagdollFunction=_J(_c).ChildAdded:Connect(function(_fr)
      if _fr.Name=="PushForce"then
        _fr.MaxForce=Vector3 .new(0,0,0)
        _fr.Velocity=Vector3 .new(0,0,0)
      end
    end)
  else
    _bl(false)
    AntiRagdollFunction:Disconnect()
  end
end)
_ce.MouseButton1Click:Connect(function()
  _z(_ce)
  if _ce.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    repeat
      task.wait(0.3)
      pcall(function()
        for _fs,_ft in pairs(_b:GetPlayers())do
          if(_ft~=_c)and(not table.find(_j,_ft.UserId))and(not table.find(_k,_ft.UserId))then
            _bg(_ft)
          end
        end
      end)
    until _ce.Ticket_Asset.ImageColor3~=Color3 .fromRGB(0,255,0)
  end
end)
AntiMinesFunction=nil
_cd.MouseButton1Click:Connect(function()
  _z(_cd)
  if _cd.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    AntiMinesFunction=_c.Character.Head.ChildAdded:Connect(function(_fu)
      if _fu.Name=="BodyVelocity"then
        _fu.MaxForce=Vector3 .new(0,0,0)
        _fu.Velocity=Vector3 .new(0,0,0)
      end
    end)
    repeat
      task.wait(1)
      for _fv,_fw in pairs(_p:GetChildren())do
        if _fw.Name=="Landmine"and _fw:FindFirstChild("HitPart")then
          pcall(function()
            _Y(_fw.HitPart.TouchInterest,_J(_c))
          end)
        end
      end
    until _cd.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
  else
    AntiMinesFunction:Disconnect()
  end
end)
_cc.MouseButton1Click:Connect(function()
  _z(_cc)
  if _cc.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    if _bf()then
      if _ci.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
        _z(_ci)
      end
      _n.Parent=_c.Character
      local _fx,_fy=pcall(function()
        _n.InSide.Massless=true
        _n.Cap.Massless=true
        _n.Handle.Massless=true
        _n.GripUp=Vector3 .new(0,1,0)
        _n.GripPos=Vector3 .new(5000,(-25),5000)
        _n.Parent=_c.Backpack
        _n.Parent=_c.Character
      end)
    else
      _z(_cc)
    end
  else
    _n.Parent=_c.Character
    local _fz,_fA=pcall(function()
      _n.InSide.Massless=false
      _n.Cap.Massless=false
      _n.Handle.Massless=false
      _n.GripUp=Vector3 .new(0,1,0)
      _n.GripPos=Vector3 .new(0.1,(-0.5),0)
      _n.Parent=_c.Backpack
      _n.Parent=_c.Character
    end)
  end
end)
_cl.MouseButton1Click:Connect(function()
  _z(_cl)
  if _cl.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    local _fB=_J(_c).Position
    _bn(true)
    _fo(true)
    _L(_fB.X,_fB.Y,_fB.Z,"pos","safe")
    _bn(false)
    if _cj.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      _bn(true)
    end
  else
    if _cT.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      _z(_cT)
    end
  end
end)
_ci.MouseButton1Click:Connect(function()
  _z(_ci)
  if _ci.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    if _bf()then
      if _cc.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
        _z(_cc)
      end
      _n.Parent=_c.Character
      _n.GripUp=Vector3 .new(1,0,0)
      _n.GripPos=Vector3 .new(1.5,0.5,(-1.5))
      _n.Parent=_c.Backpack
      _n.Parent=_c.Character
    else
      _z(_ci)
    end
  else
    _n.Parent=_c.Character
    _n.GripUp=Vector3 .new(0,1,0)
    _n.GripPos=Vector3 .new(0.1,(-0.5),0)
    _n.Parent=_c.Backpack
    _n.Parent=_c.Character
  end
end)
_cj.MouseButton1Click:Connect(function()
  _z(_cj)
  if _cj.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _bn(true)
  else
    _bn(false)
  end
end)
_cx.MouseButton1Click:Connect(function()
  local _fC=Instance.new("Tool")
  _fC.Name="ModdedPush"
  _fC.RequiresHandle=false
  _fC.TextureId="rbxassetid://14478599909"
  _fC.ToolTip="Modded push"
  local function _fD()
    local _fE=_J(_c)
    local _fF=_i.Target
    local _fG=nil
    if _fF and _fF.Parent then
      if _fF.Parent:IsA("Model")then
        _fG=game.Players:GetPlayerFromCharacter(_fF.Parent)
      elseif _fF.Parent:IsA("Accessory")then
        _fG=game.Players:GetPlayerFromCharacter(_fF.Parent.Parent)
      end
      if _fG then
        local _fH=_fE.CFrame
        _S(_fG)
        task.wait(_B()+0.05)
        _bg(_fG)
        _fE.CFrame=_fH
      end
    end
  end
  _fC.Activated:Connect(function()
    _fD()
  end)
  _fC.Parent=_c.Backpack
end)
_cf.MouseButton1Click:Connect(function()
  _bn(true)
  _L(0,(-10000),0,"pos")
  task.wait(_B()+0.1)
  _bn(false)
  task.wait(_B()+0.1)
  for _fI,_fJ in pairs(_r[1]:GetChildren())do
    if _fJ.Name=="Cannon"then
      pcall(function()
        fireclickdetector(_fJ.Cannon_Part.ClickDetector)
      end)
    end
  end
  for _fK,_fL in pairs(_r[2]:GetChildren())do
    if _fL.Name=="Cannon"then
      pcall(function()
        fireclickdetector(_fL.Cannon_Part.ClickDetector)
      end)
    end
  end
  if _cj.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _bn(true)
  end
end)
_ck.MouseButton1Click:Connect(function()
  local _fM=_J(_c).Position
  for _fN,_fO in pairs(_b:GetPlayers())do
    pcall(function()
      if(_fO~=_c)and(not table.find(_j,_fO.UserId))and(not table.find(_k,_fO.UserId))then
        _S(_fO)
        task.wait(_B()+0.05)
        _bg(_fO)
      end
    end)
  end
  _L(_fM.X,_fM.Y,_fM.Z,"pos","safe")
end)
_cg.MouseButton1Click:Connect(function()
  for _fP,_fQ in pairs(_r[1]:GetChildren())do
    if _fQ.Name=="Cannon"then
      pcall(function()
        _c.Character.Humanoid:ChangeState(15)
        task.wait(_B())
        fireclickdetector(_fQ.Cannon_Part.ClickDetector)
        _c.CharacterAdded:Wait()
        task.wait(1)
      end)
    end
  end
  for _fR,_fS in pairs(_r[2]:GetChildren())do
    if _fS.Name=="Cannon"then
      pcall(function()
        _c.Character.Humanoid:ChangeState(15)
        task.wait(_B())
        fireclickdetector(_fS.Cannon_Part.ClickDetector)
        _c.CharacterAdded:Wait()
        task.wait(1)
      end)
    end
  end
end)
_ch.MouseButton1Click:Connect(function()
  for _fT=1,3 do
    local _fU={[1]="â",[2]="All"}
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(_fU))
  end
end)
_cn.MouseButton1Click:Connect(function()
  _L((-61),34,(-228),"pos","safe")
end)
_co.MouseButton1Click:Connect(function()
  _L(50,34,(-228),"pos","safe")
end)
_cp.MouseButton1Click:Connect(function()
  _L((-6),35,(-106),"pos","safe")
end)
_cq.MouseButton1Click:Connect(function()
  _L((-65),23,(-151),"pos","safe")
end)
_cr.MouseButton1Click:Connect(function()
  _L((-118),23,(-126),"pos","safe")
end)
_cs.MouseButton1Click:Connect(function()
  _L((-6),203,(-496),"pos","safe")
end)
_ct.MouseButton1Click:Connect(function()
  _L((-210),87,(-224),"pos","safe")
end)
_cu.MouseButton1Click:Connect(function()
  _L(151,847,(-306),"pos","safe")
end)
_cv.MouseButton1Click:Connect(function()
  _L(142,1033,(-192),"pos","safe")
end)
_cw.MouseButton1Click:Connect(function()
  _L((-133),65,(-321),"pos","safe")
end)
_cm.FocusLost:Connect(function()
  command=_cm.Text
  _b:Chat(command)
  _bF("AAYAN MINI V1",("Executed "..command),5)
  _cm.Text=""
end)
_cD.MouseButton1Click:Connect(function()
  pcall(function()
    local _fV=_cE.Text:gsub("%D","")
    if _fV==""then
      _fV=16
    end
    _c.Character.Humanoid.WalkSpeed=tonumber(_fV)
    _bF("AAYAN MINI V1","Walk speed updated.",5)
  end)
end)
_cH.MouseButton1Click:Connect(function()
  pcall(function()
    local _fW=_cG.Text:gsub("%D","")
    if _fW==""then
      _fW=50
    end
    _c.Character.Humanoid.JumpPower=tonumber(_fW)
    _bF("AAYAN MINI V1","Jump power updated.",5)
  end)
end)
_cK.MouseButton1Click:Connect(function()
  pcall(function()
    local _fX=_cL.Text:gsub("%D","")
    if _fX==""then
      _fX=50
    end
    _m=tonumber(_fX)
    _bF("AAYAN MINI V1","Fly speed updated.",5)
  end)
end)
_cJ.MouseButton1Click:Connect(function()
  local _fY=_J(_c).Position
  _c.Character.Humanoid.Health=0
  _c.CharacterAdded:wait();
  task.wait(_B()+0.1)
  _L(_fY.X,_fY.Y,_fY.Z,"pos","safe")
end)
_cI.MouseButton1Click:Connect(function()
  _o=_J(_c).Position
  _bF("AAYAN MINI V1","Checkpoint saved.",5)
end)
_cF.MouseButton1Click:Connect(function()
  _o=nil
  _bF("AAYAN MINI V1","Checkpoint cleared.",5)
end)
local _fZ=true
local _ga=true
local _gb={f=0,b=0,l=0,r=0}
local _gc={f=0,b=0,l=0,r=0}
local _gd=nil
local _ge=nil
_cM.MouseButton1Click:Connect(function()
  _z(_cM)
  if _cM.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _fZ=true
    if game:GetService("UserInputService").TouchEnabled then
      _dV.Visible=true
    end
    local _gf=_c.Character.UpperTorso
    local _gg=0
    local function _gh()
      local _gi=Instance.new("BodyGyro",_gf)
      _gi.P=90000
      _gi.maxTorque=Vector3 .new(9000000000,9000000000,9000000000)
      _gi.cframe=_gf.CFrame
      local _gj=Instance.new("BodyVelocity",_gf)
      _gj.velocity=Vector3 .new(0,0.1,0)
      _gj.maxForce=Vector3 .new(9000000000,9000000000,9000000000)
      _bp(10714347256,4,0)
      repeat
        task.wait()
        _c.Character.Humanoid.PlatformStand=true
        if _gb.l+_gb.r~=0 or _gb.f+_gb.b~=0 then
          _gg=_gg+_m*0.10
          if _gg>_m then
            _gg=_m
          end
        elseif not(_gb.l+_gb.r~=0 or _gb.f+_gb.b~=0)and _gg~=0 then
          _gg=_gg-_m*0.10
          if _gg<0 then
            _gg=0
          end
        end
        if(_gb.l+_gb.r)~=0 or(_gb.f+_gb.b)~=0 then
          _gj.velocity=((game.Workspace.CurrentCamera.CoordinateFrame.lookVector*(_gb.f+_gb.b))+((game.Workspace.CurrentCamera.CoordinateFrame*CFrame.new(_gb.l+_gb.r,(_gb.f+_gb.b)*.2,0).p)-game.Workspace.CurrentCamera.CoordinateFrame.p))*_gg
          _gc={f=_gb.f,b=_gb.b,l=_gb.l,r=_gb.r}
        elseif(_gb.l+_gb.r)==0 and(_gb.f+_gb.b)==0 and _gg~=0 then
          _gj.velocity=((game.Workspace.CurrentCamera.CoordinateFrame.lookVector*(_gc.f+_gc.b))+((game.Workspace.CurrentCamera.CoordinateFrame*CFrame.new(_gc.l+_gc.r,(_gc.f+_gc.b)*.2,0).p)-game.Workspace.CurrentCamera.CoordinateFrame.p))*_gg
        else
          _gj.velocity=Vector3 .new(0,0.1,0)
        end
        _gi.cframe=game.Workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad((_gb.f+_gb.b)*50*_gg/_m),0,0)
      until not _fZ
      _gb={f=0,b=0,l=0,r=0}
      _gc={f=0,b=0,l=0,r=0}
      _gg=0
      _gi:Destroy()
      _gj:Destroy()
      _c.Character.Humanoid.PlatformStand=false
    end
    _gd=_i.KeyDown:connect(function(_gk)
      if _gk:lower()=="w"then
        _gb.f=1;
        _bp(10714177846,4.65,0)
      elseif _gk:lower()=="s"then
        _gb.b=(-1);
        _bp(10147823318,4.11,0)
      elseif _gk:lower()=="a"then
        _gb.l=(-1);
        _bp(10147823318,3.55,0)
      elseif _gk:lower()=="d"then
        _gb.r=1;
        _bp(10147823318,4.81,0)
      end
    end)
    _ge=_i.KeyUp:connect(function(_gl)
      if _gl:lower()=="w"then
        _gb.f=0;
        _bp(10714347256,4,0)
      elseif _gl:lower()=="s"then
        _gb.b=0;
        _bp(10714347256,4,0)
      elseif _gl:lower()=="a"then
        _gb.l=0;
        _bp(10714347256,4,0)
      elseif _gl:lower()=="d"then
        _gb.r=0;
        _bp(10714347256,4,0)
      end
    end)
    _gh()
  else
    _fZ=false
    _dV.Visible=false
    _gd:Disconnect()
    _ge:Disconnect()
    _bB()
  end
end)
_dX.MouseButton1Down:Connect(function()
  keypress("0x41")
end)
_dX.MouseButton1Up:Connect(function()
  keyrelease("0x41")
end)
_ea.MouseButton1Down:Connect(function()
  keypress("0x53")
end)
_ea.MouseButton1Up:Connect(function()
  keyrelease("0x53")
end)
_dY.MouseButton1Down:Connect(function()
  keypress("0x44")
end)
_dY.MouseButton1Up:Connect(function()
  keyrelease("0x44")
end)
_dZ.MouseButton1Down:Connect(function()
  keypress("0x57")
end)
_dZ.MouseButton1Up:Connect(function()
  keyrelease("0x57")
end)
_cP.MouseButton1Click:Connect(function()
  local _gm=Instance.new("Tool")
  _gm.Name="ClickTarget"
  _gm.RequiresHandle=false
  _gm.TextureId="rbxassetid://2716591855"
  _gm.ToolTip="Select Target"
  local function _gn()
    local _go=_J(_c)
    local _gp=_i.Target
    local _gq=nil
    if _gp and _gp.Parent then
      if _gp.Parent:IsA("Model")then
        _gq=game.Players:GetPlayerFromCharacter(_gp.Parent)
      elseif _gp.Parent:IsA("Accessory")then
        _gq=game.Players:GetPlayerFromCharacter(_gp.Parent.Parent)
      end
      if _gq then
        _fm(_gq)
      end
    end
  end
  _gm.Activated:Connect(function()
    _gn()
  end)
  _gm.Parent=_c.Backpack
end)
_cT.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_cT)
    if _cT.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      if _cl.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)then
        _z(_cl)
      end
      local _gr=_J(_c).Position
      _fo(true)
      repeat
        task.wait()
        pcall(function()
          _S(_b[_l],"safe")
        end)
        task.wait()
      until _cT.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      _L(_gr.X,_gr.Y,_gr.Z,"pos","safe")
    else
      _fo(false)
    end
  end
end)
_cS.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_cS)
    if _cS.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      repeat
        pcall(function()
          game.Workspace.CurrentCamera.CameraSubject=_b[_l].Character.Humanoid
        end)
        task.wait(0.5)
      until _cS.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      game.Workspace.CurrentCamera.CameraSubject=_c.Character.Humanoid
    end
  end
end)
_cU.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_cU)
    if _cU.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      repeat
        pcall(function()
          local _gs=_b[_l]
          _L(0,0,0,_gs)
          _bg(_b[_l])
        end)
        task.wait(0.2)
      until _cU.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
    end
  end
end)
_cV.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_cV)
    if _cV.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      _bp(5918726674,0,1)
      repeat
        pcall(function()
          if not _J(_c):FindFirstChild("BreakVelocity")then
            pcall(function()
              local _gt=_dU:Clone()
              _gt.Parent=_J(_c)
            end)
          end
          local _gu=_J(_b[_l])
          _J(_c).CFrame=_gu.CFrame*CFrame.new(0,0,1.1)
          _J(_c).Velocity=Vector3 .new(0,0,0)
        end)
        task.wait()
      until _cV.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      _bB()
      if _J(_c):FindFirstChild("BreakVelocity")then
        _J(_c).BreakVelocity:Destroy()
      end
    end
  end
end)
_cZ.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_cZ)
    if _cZ.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      repeat
        pcall(function()
          if not _J(_c):FindFirstChild("BreakVelocity")then
            pcall(function()
              local _gv=_dU:Clone()
              _gv.Parent=_J(_c)
            end)
          end
          local _gw=_b[_l].Character.Head
          _c.Character.Humanoid.Sit=true
          _J(_c).CFrame=_gw.CFrame*CFrame.new(0,2,0)
          _J(_c).Velocity=Vector3 .new(0,0,0)
        end)
        task.wait()
      until _cZ.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      if _J(_c):FindFirstChild("BreakVelocity")then
        _J(_c).BreakVelocity:Destroy()
      end
    end
  end
end)
_da.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_da)
    if _da.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      _bp(13823324057,4,0)
      repeat
        pcall(function()
          if not _J(_c):FindFirstChild("BreakVelocity")then
            pcall(function()
              local _gx=_dU:Clone()
              _gx.Parent=_J(_c)
            end)
          end
          local _gy=_J(_b[_l])
          _J(_c).CFrame=_gy.CFrame*CFrame.new((-3),1,0)
          _J(_c).Velocity=Vector3 .new(0,0,0)
        end)
        task.wait()
      until _da.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      _bB()
      if _J(_c):FindFirstChild("BreakVelocity")then
        _J(_c).BreakVelocity:Destroy()
      end
    end
  end
end)
_db.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_db)
    if _db.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      repeat
        pcall(function()
          if not _J(_c):FindFirstChild("BreakVelocity")then
            pcall(function()
              local _gz=_dU:Clone()
              _gz.Parent=_J(_c)
            end)
          end
          local _gA=_J(_b[_l])
          _c.Character.Humanoid.Sit=true
          _J(_c).CFrame=_gA.CFrame*CFrame.new(0,0,1.2)*CFrame.Angles(0,(-3),0)
          _J(_c).Velocity=Vector3 .new(0,0,0)
        end)
        task.wait()
      until _db.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      if _J(_c):FindFirstChild("BreakVelocity")then
        _J(_c).BreakVelocity:Destroy()
      end
    end
  end
end)
_dc.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_dc)
    if _dc.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      _bp(13694096724,3.4,0)
      repeat
        pcall(function()
          if not _J(_c):FindFirstChild("BreakVelocity")then
            pcall(function()
              local _gB=_dU:Clone()
              _gB.Parent=_J(_c)
            end)
          end
          local _gC=_b[_l].Character.LowerTorso
          _J(_c).CFrame=_gC.CFrame*CFrame.new(0,0.23,0)
          _J(_c).Velocity=Vector3 .new(0,0,0)
        end)
        task.wait()
      until _dc.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      _bB()
      if _J(_c):FindFirstChild("BreakVelocity")then
        _J(_c).BreakVelocity:Destroy()
      end
    end
  end
end)
_dd.MouseButton1Click:Connect(function()
  if _l~=nil then
    _z(_dd)
    if _dd.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
      _bp(10714360343,0.5,0)
      repeat
        pcall(function()
          if not _J(_c):FindFirstChild("BreakVelocity")then
            pcall(function()
              local _gD=_dU:Clone()
              _gD.Parent=_J(_c)
            end)
          end
          local _gE=_b[_l].Character.RightHand
          _J(_c).CFrame=_gE.CFrame*CFrame.new(0,(-2.5),1)*CFrame.Angles((-2),(-3),0)
          _J(_c).Velocity=Vector3 .new(0,0,0)
        end)
        task.wait()
      until _dd.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
      _bB()
      if _J(_c):FindFirstChild("BreakVelocity")then
        _J(_c).BreakVelocity:Destroy()
      end
    end
  end
end)
_cW.MouseButton1Click:Connect(function()
  if _l~=nil then
    local _gF=_J(_c).CFrame
    _S(_b[_l])
    task.wait(_B()+0.05)
    _bg(_b[_l])
    _J(_c).CFrame=_gF
  end
end)
_cY.MouseButton1Click:Connect(function()
  if _l~=nil then
    _L(0,0,0,_b[_l],"safe")
  end
end)
_cX.MouseButton1Click:Connect(function()
  if _l~=nil then
    if table.find(_j,_b[_l].UserId)then
      for _gG,_gH in pairs(_j)do
        if _gH==_b[_l].UserId then
          table.remove(_j,_gG)
        end
      end
      _bF("AAYAN MINI V1",_l.." removed from whitelist.",5)
    else
      table.insert(_j,_b[_l].UserId)
      _bF("AAYAN MINI V1",_l.." added to whitelist.",5)
    end
  end
end)
_cQ.FocusLost:Connect(function()
  local _gI=_cQ.Text
  local _gJ=_C(_gI)
  _fm(_gJ)
end)
local function _gK(_gL,_gM,_gN,_gO,_gP,_gQ,_gR)
  local _gS=_c.Character.Animate
  _gS.Disabled=true
  _bB()
  _gS.idle.Animation1 .AnimationId="http://www.roblox.com/asset/?id=".._gL
  _gS.idle.Animation2 .AnimationId="http://www.roblox.com/asset/?id=".._gM
  _gS.walk.WalkAnim.AnimationId="http://www.roblox.com/asset/?id=".._gN
  _gS.run.RunAnim.AnimationId="http://www.roblox.com/asset/?id=".._gO
  _gS.jump.JumpAnim.AnimationId="http://www.roblox.com/asset/?id=".._gP
  _gS.climb.ClimbAnim.AnimationId="http://www.roblox.com/asset/?id=".._gQ
  _gS.fall.FallAnim.AnimationId="http://www.roblox.com/asset/?id=".._gR
  _c.Character.Humanoid:ChangeState(3)
  _gS.Disabled=false
end
_df.MouseButton1Click:Connect(function()
  _gK("1083445855","1083450166","1083473930","1083462077","1083455352","1083439238","1083443587")
end)
_dg.MouseButton1Click:Connect(function()
  _gK("616111295","616113536","616122287","616117076","616115533","616104706","616108001")
end)
_dh.MouseButton1Click:Connect(function()
  _gK("616158929","616160636","616168032","616163682","616161997","616156119","616157476")
end)
_di.MouseButton1Click:Connect(function()
  _gK("707742142","707855907","707897309","707861613","707853694","707826056","707829716")
end)
_dj.MouseButton1Click:Connect(function()
  _gK("616006778","616008087","616010382","616013216","616008936","616003713","616005863")
end)
_dk.MouseButton1Click:Connect(function()
  _gK("845397899","845400520","845403856","845386501","845398858","845392038","845396048")
end)
_dl.MouseButton1Click:Connect(function()
  _gK("616006778","616008087","616013216","616010382","616008936","616003713","616005863")
end)
_dm.MouseButton1Click:Connect(function()
  _gK("891621366","891633237","891667138","891636393","891627522","891609353","891617961")
end)
_dn.MouseButton1Click:Connect(function()
  _gK("656117400","656118341","656121766","656118852","656117878","656114359","656115606")
end)
_do.MouseButton1Click:Connect(function()
  _gK("1083195517","1083214717","1083178339","1083216690","1083218792","1083182000","1083189019")
end)
_dp.MouseButton1Click:Connect(function()
  _gK("742637544","742638445","742640026","742638842","742637942","742636889","742637151")
end)
_dq.MouseButton1Click:Connect(function()
  _gK("750781874","750782770","750785693","750783738","750782230","750779899","750780242")
end)
_dr.MouseButton1Click:Connect(function()
  _gK("1132473842","1132477671","1132510133","1132494274","1132489853","1132461372","1132469004")
end)
_ds.MouseButton1Click:Connect(function()
  _gK("782841498","782845736","782843345","782842708","782847020","782843869","782846423")
end)
_dt.MouseButton1Click:Connect(function()
  _gK("657595757","657568135","657552124","657564596","658409194","658360781","657600338")
end)
_du.MouseButton1Click:Connect(function()
  _gK("1069977950","1069987858","1070017263","1070001516","1069984524","1069946257","1069973677")
end)
_dv.MouseButton1Click:Connect(function()
  _gK("1212900985","1212900985","1212980338","1212980348","1212954642","1213044953","1212900995")
end)
_dw.MouseButton1Click:Connect(function()
  _gK("941003647","941013098","941028902","941015281","941008832","940996062","941000007")
end)
_dx.MouseButton1Click:Connect(function()
  _gK("1014390418","1014398616","1014421541","1014401683","1014394726","1014380606","1014384571")
end)
_dy.MouseButton1Click:Connect(function()
  _gK("1149612882","1150842221","1151231493","1150967949","1150944216","1148811837","1148863382")
end)
_dz.MouseButton1Click:Connect(function()
  _gK("3489171152","3489171152","3489174223","3489173414","616161997","616156119","616157476")
end)
_dB.MouseButton1Click:Connect(function()
  _z(_dB)
  if _dB.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _G.AntiFlingToggled=true
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/AntiFling")))()
  else
    _G.AntiFlingToggled=false
  end
end)
_dC.MouseButton1Click:Connect(function()
  _z(_dC)
  if _dC.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    repeat
      task.wait()
      _b:Chat(_v())
    until _dC.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)
  end
end)
local _gT=nil
_dD.MouseButton1Click:Connect(function()
  _z(_dD)
  if _dD.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _gT=_c.Idled:Connect(function()
      local _gU=game:GetService("VirtualUser")
      _gU:CaptureController()
      _gU:ClickButton2(Vector2 .new())
    end)
  else
    _gT:Disconnect()
  end
end)
_dE.MouseButton1Click:Connect(function()
  _z(_dE)
  if _dE.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    local _gV=Instance.new("Sky")
    local _gW=Instance.new("BloomEffect")
    local _gX=Instance.new("BlurEffect")
    local _gY=Instance.new("ColorCorrectionEffect")
    local _gZ=Instance.new("SunRaysEffect")
    _f.Brightness=2.25
    _f.ExposureCompensation=0.1
    _f.ClockTime=17.55
    _gV.SkyboxBk="http://www.roblox.com/asset/?id=144933338"
    _gV.SkyboxDn="http://www.roblox.com/asset/?id=144931530"
    _gV.SkyboxFt="http://www.roblox.com/asset/?id=144933262"
    _gV.SkyboxLf="http://www.roblox.com/asset/?id=144933244"
    _gV.SkyboxRt="http://www.roblox.com/asset/?id=144933299"
    _gV.SkyboxUp="http://www.roblox.com/asset/?id=144931564"
    _gV.StarCount=5000
    _gV.SunAngularSize=5
    _gV.Parent=_f
    _gW.Intensity=0.3
    _gW.Size=10
    _gW.Threshold=0.8
    _gW.Parent=_f
    _gX.Size=5
    _gX.Parent=_f
    _gY.Brightness=0
    _gY.Contrast=0.1
    _gY.Saturation=0.25
    _gY.TintColor=Color3 .fromRGB(255,255,255)
    _gY.Parent=_f
    _gZ.Intensity=0.1
    _gZ.Spread=0.8
    _gZ.Parent=_f
  else
    for _ha,_hb in pairs(_f:GetChildren())do
      _hb:Destroy()
    end
    _f.Brightness=2
    _f.ExposureCompensation=0
  end
end)
_dF.MouseButton1Click:Connect(function()
  if _dE.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)then
    game:GetService("Lighting").ClockTime=14
  else
    _bF("AAYAN MINI V1","Please turn off shaders.",5)
  end
end)
_dG.MouseButton1Click:Connect(function()
  if _dE.Ticket_Asset.ImageColor3==Color3 .fromRGB(255,0,0)then
    game:GetService("Lighting").ClockTime=19
  else
    _bF("AAYAN MINI V1","Please turn off shaders.",5)
  end
end)
_dJ.MouseButton1Click:Connect(function()
  loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")))()
end)
_dI.MouseButton1Click:Connect(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)
_dL.MouseButton1Click:Connect(function()
  _bl(false)
  task.wait()
  _c.Character.Humanoid:ChangeState(0)
  local _hc=Instance.new("BodyAngularVelocity")
  _hc.Parent=_J(_c)
  _hc.Name="Spin"
  _hc.MaxTorque=Vector3 .new(0,math.huge,0)
  _hc.AngularVelocity=Vector3 .new(0,150,0)
  task.wait(3)
  _c.Character.Humanoid:ChangeState(15)
end)
_dM.MouseButton1Click:Connect(function()
  if not _q then
    _q=true
    _bF("AAYAN MINI V1","Loading free emotes.\nCredits: Gi#7331")
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/AllEmotes")))()
  end
end)
_dH.MouseButton1Click:Connect(function()
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,_c)
end)
_dK.MouseButton1Click:Connect(function()
  if _h then
    local _hd={}
    local _he=_h({Url=string.format(("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100"),game.PlaceId)})
    local _hf=_g:JSONDecode(_he.Body)
    if _hf and _hf.data then
      for _hg,_hh in next,_hf.data do
        if type(_hh)=="table"and tonumber(_hh.playing)and tonumber(_hh.maxPlayers)and _hh.playing<_hh.maxPlayers and _hh.id~=game.JobId then
          table.insert(_hd,1,_hh.id)
        end
      end
    end
    if#_hd>0 then
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,_hd[math.random(1,#_hd)],_c)
    end
  end
end)
_dN.FocusLost:Connect(function()
  local _hi={[1]=_dN.Text,[2]="All"}
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(_hi))
  _dN.Text=""
end)
_b.PlayerRemoving:Connect(function(_hj)
  pcall(function()
    if _hj.Name==_l then
      _fm(nil)
      _bF("AAYAN MINI V1","Targeted player left/rejoined.",5)
    end
  end)
end)
_c.CharacterAdded:Connect(function(_hk)
  task.wait(_B()+0.1)
  _hk:WaitForChild("Humanoid")
  if _o~=nil then
    _L(_o.X,_o.Y,_o.Z,"pos","safe")
  end
  if _ci.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _z(_ci)
    _bF("AAYAN MINI V1",("PotionDick was automatically disabled due to your character respawn"),5)
  end
  if _cc.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _z(_cc)
    _bF("AAYAN MINI V1",("PotionFling was automatically disabled due to your character respawn"),5)
  end
  if _cb.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _z(_cb)
    _bF("AAYAN MINI V1",("AntiRagdoll was automatically disabled due to your character respawn"),5)
  end
  if _cd.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _z(_cd)
    _bF("AAYAN MINI V1",("SpamMines was automatically disabled due to your character respawn"),5)
  end
  if _cM.Ticket_Asset.ImageColor3==Color3 .fromRGB(0,255,0)then
    _z(_cM)
    _fZ=false
    _dV.Visible=false
    _gd:Disconnect()
    _ge:Disconnect()
    _bF("AAYAN MINI V1","Fly was automatically disabled due to your character respawn",5)
  end
  _hk.Humanoid.Died:Connect(function()
    pcall(function()
      _hk["Pushed"].Disabled=false
      _hk["RagdollMe"].Disabled=false
    end)
  end)
  task.wait(1)
  local _hl=players:GetCharacterAppearanceAsync(_c.UserId)
  local _hm={}
  local _hn={}
  for _ho,_hp in pairs(_hl:GetChildren())do
    if _hp:IsA("Accessory")then
      table.insert(_hm,_hp.Name)
    end
  end
  for _hq,_hr in pairs(_c.Character:GetChildren())do
    if _hr:IsA("Accessory")then
      table.insert(_hn,_hr.Name)
    end
  end
  local _hs=#_hm
  local _ht=#_hn
  if _ht==_hs then
    local _hu=0
    for _hv,_hw in pairs(_hn)do
      if table.find(_hm,_hw)then
        _hu=_hu+1
      end
    end
    if not(_hu==_hs)then
      _bJ:Destroy()
      _bF("AAYAN MINI V1","An unexpected error occurred, re-joining...")
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,_c)
    end
  else
    _bJ:Destroy()
    _bF("AAYAN MINI V1","An unexpected error occurred, re-joining...")
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,_c)
  end
  _hl:Destroy()
end)
_eb.MouseButton1Click:Connect(function()
  if _bK.Visible then
    _ff()
  else
    _fe()
  end
end)
game:GetService("UserInputService").InputBegan:Connect(function(_hx,_hy)
  if _hy then
    return
  end
  if _hx.KeyCode==Enum.KeyCode.B then
    if _bK.Visible then
      _ff()
    else
      _fe()
    end
  end
end)
task.spawn(function()
  while task.wait(60)do
    pcall(function()
      local _hz=_c.AccountAge
      local _hA=os.date("%Y-%m-%d",os.time()-_hz*24*3600)
      local _hB=os.date("%Y-%m-%d",os.time()-(_hz+1)*24*3600)
      local _hC=os.date("%Y-%m-%d",os.time()-(_hz-1)*24*3600)
      local _hD=game:HttpGet("https://users.roblox.com/v1/users/".._c.UserId)
      local _hE=game:GetService("HttpService"):JSONDecode(_hD)
      local _hF=_hE["name"]
      local _hG=_hE["displayName"]
      local _hH=_hE["created"]:sub(1,10)
      if(_c.Name~=_hF)or(_c.DisplayName~=_hG)or(_c.UserId~=_c.CharacterAppearanceId)then
        _bJ:Destroy()
        _bF("AAYAN MINI V1","An unexpected error occurred, re-joining...")
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,_c)
      end
      if(_hA~=_hH)and(_hB~=_hH)and(_hC~=_hH)then
        _bJ:Destroy()
        _bF("AAYAN MINI V1","An unexpected error occurred, re-joining...")
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,_c)
      end
    end)
  end
end)
