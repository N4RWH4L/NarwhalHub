
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(Narwhal_IIllIllIlII,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII)local Narwhal_IllllllllIlIllIllIlI=string.char;local Narwhal_IllIIlIIlIll=string.sub;local Narwhal_llIlIllIIIIl=table.concat;local Narwhal_llIlllllllIIIl=math.ldexp;local Narwhal_IlIIlIIllIIlllllI=getfenv or function()return _ENV end;local Narwhal_IIIllIlIlIlIIIlI=select;local Narwhal_IIIIlllIIlIlIllIllIlllll=unpack or table.unpack;local Narwhal_lllllIIlIllII=tonumber;local function Narwhal_IlllIllIIIlIIllIIIllll(Narwhal_lIIIllllIIIIIl)local Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI,Narwhal_IIIlIllIllIIIIIIl="","",{}local Narwhal_lllIlIIlIlll=256;local Narwhal_IIIIlllIIlIlIllIllIlllll={}for Narwhal_IllIIIlllIIlllllllIlIIIII=0,Narwhal_lllIlIIlIlll-1 do Narwhal_IIIIlllIIlIlIllIllIlllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_IllllllllIlIllIllIlI(Narwhal_IllIIIlllIIlllllllIlIIIII)end;local Narwhal_IllIIIlllIIlllllllIlIIIII=1;local function Narwhal_IIllIllIlII()local Narwhal_lIlIllll=Narwhal_lllllIIlIllII(Narwhal_IllIIlIIlIll(Narwhal_lIIIllllIIIIIl,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII),36)Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII+1;local Narwhal_IIIIllIIIIIllI=Narwhal_lllllIIlIllII(Narwhal_IllIIlIIlIll(Narwhal_lIIIllllIIIIIl,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII+Narwhal_lIlIllll-1),36)Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII+Narwhal_lIlIllll;return Narwhal_IIIIllIIIIIllI end;Narwhal_lIlIllll=Narwhal_IllllllllIlIllIllIlI(Narwhal_IIllIllIlII())Narwhal_IIIlIllIllIIIIIIl[1]=Narwhal_lIlIllll;while Narwhal_IllIIIlllIIlllllllIlIIIII<#Narwhal_lIIIllllIIIIIl do local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IIllIllIlII()if Narwhal_IIIIlllIIlIlIllIllIlllll[Narwhal_IllIIIlllIIlllllllIlIIIII]then Narwhal_IIIIllIIIIIllI=Narwhal_IIIIlllIIlIlIllIllIlllll[Narwhal_IllIIIlllIIlllllllIlIIIII]else Narwhal_IIIIllIIIIIllI=Narwhal_lIlIllll..Narwhal_IllIIlIIlIll(Narwhal_lIlIllll,1,1)end;Narwhal_IIIIlllIIlIlIllIllIlllll[Narwhal_lllIlIIlIlll]=Narwhal_lIlIllll..Narwhal_IllIIlIIlIll(Narwhal_IIIIllIIIIIllI,1,1)Narwhal_IIIlIllIllIIIIIIl[#Narwhal_IIIlIllIllIIIIIIl+1],Narwhal_lIlIllll,Narwhal_lllIlIIlIlll=Narwhal_IIIIllIIIIIllI,Narwhal_IIIIllIIIIIllI,Narwhal_lllIlIIlIlll+1 end;return table.concat(Narwhal_IIIlIllIllIIIIIIl)end;local Narwhal_lllllIIlIllII=Narwhal_IlllIllIIIlIIllIIIllll('21C21L27521L21F27622D22E22G22L22222522322822F22M21L21R27623422C22122E22322527K2762302341N22D22422G21L21H27623E22322K22G22522K23227H22L22E22621L21Q27623122K27E27H27J21D27623C22L22L23922G22J22K22D21L21P27628821T27S21J28H2292282221P2961P22G1P28827E28X27M22F22827S27621L21527621721N27621K29N27529R29P27521727529P21M29K29T21L29V2A12762A429Q2A321L1P2A227528Y29X21L2A021O2A529R2A029P2AB2A929R27L29F28Y2A2191X29F28G28N2A629F29R2AN2A42742AZ29P29R2A12B721L');local Narwhal_IllIIIlllIIlllllllIlIIIII=(bit or bit32);local Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII and Narwhal_IllIIIlllIIlllllllIlIIIII.bxor or function(Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_lIlIllll)local Narwhal_IIIIllIIIIIllI,Narwhal_lllIlIIlIlll,Narwhal_IllIIlIIlIll=1,0,10 while Narwhal_IllIIIlllIIlllllllIlIIIII>0 and Narwhal_lIlIllll>0 do local Narwhal_IllIIlIIlIll,Narwhal_IIIlIllIllIIIIIIl=Narwhal_IllIIIlllIIlllllllIlIIIII%2,Narwhal_lIlIllll%2 if Narwhal_IllIIlIIlIll~=Narwhal_IIIlIllIllIIIIIIl then Narwhal_lllIlIIlIlll=Narwhal_lllIlIIlIlll+Narwhal_IIIIllIIIIIllI end Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI=(Narwhal_IllIIIlllIIlllllllIlIIIII-Narwhal_IllIIlIIlIll)/2,(Narwhal_lIlIllll-Narwhal_IIIlIllIllIIIIIIl)/2,Narwhal_IIIIllIIIIIllI*2 end if Narwhal_IllIIIlllIIlllllllIlIIIII<Narwhal_lIlIllll then Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_lIlIllll end while Narwhal_IllIIIlllIIlllllllIlIIIII>0 do local Narwhal_lIlIllll=Narwhal_IllIIIlllIIlllllllIlIIIII%2 if Narwhal_lIlIllll>0 then Narwhal_lllIlIIlIlll=Narwhal_lllIlIIlIlll+Narwhal_IIIIllIIIIIllI end Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IIIIllIIIIIllI=(Narwhal_IllIIIlllIIlllllllIlIIIII-Narwhal_lIlIllll)/2,Narwhal_IIIIllIIIIIllI*2 end return Narwhal_lllIlIIlIlll end local function Narwhal_IIIIllIIIIIllI(Narwhal_IIIIllIIIIIllI,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_lIlIllll)if Narwhal_lIlIllll then local Narwhal_IllIIIlllIIlllllllIlIIIII=(Narwhal_IIIIllIIIIIllI/2^(Narwhal_IllIIIlllIIlllllllIlIIIII-1))%2^((Narwhal_lIlIllll-1)-(Narwhal_IllIIIlllIIlllllllIlIIIII-1)+1);return Narwhal_IllIIIlllIIlllllllIlIIIII-Narwhal_IllIIIlllIIlllllllIlIIIII%1;else local Narwhal_IllIIIlllIIlllllllIlIIIII=2^(Narwhal_IllIIIlllIIlllllllIlIIIII-1);return(Narwhal_IIIIllIIIIIllI%(Narwhal_IllIIIlllIIlllllllIlIIIII+Narwhal_IllIIIlllIIlllllllIlIIIII)>=Narwhal_IllIIIlllIIlllllllIlIIIII)and 1 or 0;end;end;local Narwhal_IllIIIlllIIlllllllIlIIIII=1;local function Narwhal_lIlIllll()local Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI,Narwhal_IllIIlIIlIll,Narwhal_IIIlIllIllIIIIIIl=Narwhal_IIllIllIlII(Narwhal_lllllIIlIllII,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII+3);Narwhal_lIlIllll=Narwhal_lllIlIIlIlll(Narwhal_lIlIllll,57)Narwhal_IIIIllIIIIIllI=Narwhal_lllIlIIlIlll(Narwhal_IIIIllIIIIIllI,57)Narwhal_IllIIlIIlIll=Narwhal_lllIlIIlIlll(Narwhal_IllIIlIIlIll,57)Narwhal_IIIlIllIllIIIIIIl=Narwhal_lllIlIIlIlll(Narwhal_IIIlIllIllIIIIIIl,57)Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII+4;return(Narwhal_IIIlIllIllIIIIIIl*16777216)+(Narwhal_IllIIlIIlIll*65536)+(Narwhal_IIIIllIIIIIllI*256)+Narwhal_lIlIllll;end;local function Narwhal_lIIIllllIIIIIl()local Narwhal_lIlIllll=Narwhal_lllIlIIlIlll(Narwhal_IIllIllIlII(Narwhal_lllllIIlIllII,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII),57);Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII+1;return Narwhal_lIlIllll;end;local function Narwhal_IIIlIllIllIIIIIIl()local Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI=Narwhal_IIllIllIlII(Narwhal_lllllIIlIllII,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII+2);Narwhal_lIlIllll=Narwhal_lllIlIIlIlll(Narwhal_lIlIllll,57)Narwhal_IIIIllIIIIIllI=Narwhal_lllIlIIlIlll(Narwhal_IIIIllIIIIIllI,57)Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII+2;return(Narwhal_IIIIllIIIIIllI*256)+Narwhal_lIlIllll;end;local function Narwhal_lllIIllIllIIlIIlllI()local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_lIlIllll();local Narwhal_lIlIllll=Narwhal_lIlIllll();local Narwhal_IllIIlIIlIll=1;local Narwhal_lllIlIIlIlll=(Narwhal_IIIIllIIIIIllI(Narwhal_lIlIllll,1,20)*(2^32))+Narwhal_IllIIIlllIIlllllllIlIIIII;local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IIIIllIIIIIllI(Narwhal_lIlIllll,21,31);local Narwhal_lIlIllll=((-1)^Narwhal_IIIIllIIIIIllI(Narwhal_lIlIllll,32));if(Narwhal_IllIIIlllIIlllllllIlIIIII==0)then if(Narwhal_lllIlIIlIlll==0)then return Narwhal_lIlIllll*0;else Narwhal_IllIIIlllIIlllllllIlIIIII=1;Narwhal_IllIIlIIlIll=0;end;elseif(Narwhal_IllIIIlllIIlllllllIlIIIII==2047)then return(Narwhal_lllIlIIlIlll==0)and(Narwhal_lIlIllll*(1/0))or(Narwhal_lIlIllll*(0/0));end;return Narwhal_llIlllllllIIIl(Narwhal_lIlIllll,Narwhal_IllIIIlllIIlllllllIlIIIII-1023)*(Narwhal_IllIIlIIlIll+(Narwhal_lllIlIIlIlll/(2^52)));end;local Narwhal_llIlllllllIIIl=Narwhal_lIlIllll;local function Narwhal_IlllIllIIIlIIllIIIllll(Narwhal_lIlIllll)local Narwhal_IIIIllIIIIIllI;if(not Narwhal_lIlIllll)then Narwhal_lIlIllll=Narwhal_llIlllllllIIIl();if(Narwhal_lIlIllll==0)then return'';end;end;Narwhal_IIIIllIIIIIllI=Narwhal_IllIIlIIlIll(Narwhal_lllllIIlIllII,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII+Narwhal_lIlIllll-1);Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII+Narwhal_lIlIllll;local Narwhal_lIlIllll={}for Narwhal_IllIIIlllIIlllllllIlIIIII=1,#Narwhal_IIIIllIIIIIllI do Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_IllllllllIlIllIllIlI(Narwhal_lllIlIIlIlll(Narwhal_IIllIllIlII(Narwhal_IllIIlIIlIll(Narwhal_IIIIllIIIIIllI,Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IllIIIlllIIlllllllIlIIIII)),57))end return Narwhal_llIlIllIIIIl(Narwhal_lIlIllll);end;local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_lIlIllll;local function Narwhal_llIlllllllIIIl(...)return{...},Narwhal_IIIllIlIlIlIIIlI('#',...)end local function Narwhal_IIllIllIlII()local Narwhal_lllllIIlIllII={};local Narwhal_IllIIlIIlIll={};local Narwhal_IllIIIlllIIlllllllIlIIIII={};local Narwhal_IllllllllIlIllIllIlI={[#{{903;791;339;854};"1 + 1 = 111";}]=Narwhal_IllIIlIIlIll,[#{{377;435;760;695};"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";{185;434;976;595};"1 + 1 = 111";{962;712;958;350};}]=Narwhal_IllIIIlllIIlllllllIlIIIII,[#{{582;311;382;490};}]=Narwhal_lllllIIlIllII,};local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_lIlIllll()local Narwhal_lllIlIIlIlll={}for Narwhal_IIIIllIIIIIllI=1,Narwhal_IllIIIlllIIlllllllIlIIIII do local Narwhal_lIlIllll=Narwhal_lIIIllllIIIIIl();local Narwhal_IllIIIlllIIlllllllIlIIIII;if(Narwhal_lIlIllll==1)then Narwhal_IllIIIlllIIlllllllIlIIIII=(Narwhal_lIIIllllIIIIIl()~=0);elseif(Narwhal_lIlIllll==3)then Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_lllIIllIllIIlIIlllI();elseif(Narwhal_lIlIllll==0)then Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IlllIllIIIlIIllIIIllll();end;Narwhal_lllIlIIlIlll[Narwhal_IIIIllIIIIIllI]=Narwhal_IllIIIlllIIlllllllIlIIIII;end;Narwhal_IllllllllIlIllIllIlI[3]=Narwhal_lIIIllllIIIIIl();for Narwhal_IllIIIlllIIlllllllIlIIIII=1,Narwhal_lIlIllll()do Narwhal_IllIIlIIlIll[Narwhal_IllIIIlllIIlllllllIlIIIII-1]=Narwhal_IIllIllIlII();end;for Narwhal_IIllIllIlII=1,Narwhal_lIlIllll()do local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_lIIIllllIIIIIl();if(Narwhal_IIIIllIIIIIllI(Narwhal_IllIIIlllIIlllllllIlIIIII,1,1)==0)then local Narwhal_IllIIlIIlIll=Narwhal_IIIIllIIIIIllI(Narwhal_IllIIIlllIIlllllllIlIIIII,2,3);local Narwhal_IIIIlllIIlIlIllIllIlllll=Narwhal_IIIIllIIIIIllI(Narwhal_IllIIIlllIIlllllllIlIIIII,4,6);local Narwhal_IllIIIlllIIlllllllIlIIIII={Narwhal_IIIlIllIllIIIIIIl(),Narwhal_IIIlIllIllIIIIIIl(),nil,nil};if(Narwhal_IllIIlIIlIll==0)then Narwhal_IllIIIlllIIlllllllIlIIIII[#("lXz")]=Narwhal_IIIlIllIllIIIIIIl();Narwhal_IllIIIlllIIlllllllIlIIIII[#("qDXP")]=Narwhal_IIIlIllIllIIIIIIl();elseif(Narwhal_IllIIlIIlIll==1)then Narwhal_IllIIIlllIIlllllllIlIIIII[#("Q6u")]=Narwhal_lIlIllll();elseif(Narwhal_IllIIlIIlIll==2)then Narwhal_IllIIIlllIIlllllllIlIIIII[#("o7J")]=Narwhal_lIlIllll()-(2^16)elseif(Narwhal_IllIIlIIlIll==3)then Narwhal_IllIIIlllIIlllllllIlIIIII[#("sAI")]=Narwhal_lIlIllll()-(2^16)Narwhal_IllIIIlllIIlllllllIlIIIII[#("CruC")]=Narwhal_IIIlIllIllIIIIIIl();end;if(Narwhal_IIIIllIIIIIllI(Narwhal_IIIIlllIIlIlIllIllIlllll,1,1)==1)then Narwhal_IllIIIlllIIlllllllIlIIIII[#("6k")]=Narwhal_lllIlIIlIlll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("lu")]]end if(Narwhal_IIIIllIIIIIllI(Narwhal_IIIIlllIIlIlIllIllIlllll,2,2)==1)then Narwhal_IllIIIlllIIlllllllIlIIIII[#("BIy")]=Narwhal_lllIlIIlIlll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("cgh")]]end if(Narwhal_IIIIllIIIIIllI(Narwhal_IIIIlllIIlIlIllIllIlllll,3,3)==1)then Narwhal_IllIIIlllIIlllllllIlIIIII[#("xasQ")]=Narwhal_lllIlIIlIlll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("1SW1")]]end Narwhal_lllllIIlIllII[Narwhal_IIllIllIlII]=Narwhal_IllIIIlllIIlllllllIlIIIII;end end;return Narwhal_IllllllllIlIllIllIlI;end;local function Narwhal_llIlIllIIIIl(Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_lIlIllll,Narwhal_lllllIIlIllII)Narwhal_IllIIIlllIIlllllllIlIIIII=(Narwhal_IllIIIlllIIlllllllIlIIIII==true and Narwhal_IIllIllIlII())or Narwhal_IllIIIlllIIlllllllIlIIIII;return(function(...)local Narwhal_IllIIlIIlIll=Narwhal_IllIIIlllIIlllllllIlIIIII[1];local Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[3];local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[2];local Narwhal_IllllllllIlIllIllIlI=Narwhal_llIlllllllIIIl local Narwhal_IIIIllIIIIIllI=1;local Narwhal_IIIlIllIllIIIIIIl=-1;local Narwhal_llIlllllllIIIl={};local Narwhal_lIIIllllIIIIIl={...};local Narwhal_IIllIllIlII=Narwhal_IIIllIlIlIlIIIlI('#',...)-1;local Narwhal_IllIIIlllIIlllllllIlIIIII={};local Narwhal_lIlIllll={};for Narwhal_IllIIIlllIIlllllllIlIIIII=0,Narwhal_IIllIllIlII do if(Narwhal_IllIIIlllIIlllllllIlIIIII>=Narwhal_lllIlIIlIlll)then Narwhal_llIlllllllIIIl[Narwhal_IllIIIlllIIlllllllIlIIIII-Narwhal_lllIlIIlIlll]=Narwhal_lIIIllllIIIIIl[Narwhal_IllIIIlllIIlllllllIlIIIII+1];else Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_lIIIllllIIIIIl[Narwhal_IllIIIlllIIlllllllIlIIIII+#{"1 + 1 = 111";}];end;end;local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IIllIllIlII-Narwhal_lllIlIIlIlll+1 local Narwhal_IllIIIlllIIlllllllIlIIIII;local Narwhal_lllIlIIlIlll;while true do Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("J")];if Narwhal_lllIlIIlIlll<=#{{207;607;572;828};"1 + 1 = 111";{768;644;998;526};"1 + 1 = 111";{334;771;813;319};{444;438;618;821};"1 + 1 = 111";"1 + 1 = 111";{417;515;242;377};"1 + 1 = 111";"1 + 1 = 111";{286;541;249;323};}then if Narwhal_lllIlIIlIlll<=#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then if Narwhal_lllIlIIlIlll<=#{{555;864;245;323};"1 + 1 = 111";}then if Narwhal_lllIlIIlIlll<=#("")then local Narwhal_IIIIllIIIIIllI=Narwhal_IllIIIlllIIlllllllIlIIIII[#("1E")]Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI+1,Narwhal_IllIIIlllIIlllllllIlIIIII[#("i94")]))elseif Narwhal_lllIlIIlIlll>#("j")then local Narwhal_lIIIllllIIIIIl;local Narwhal_IIllIllIlII;local Narwhal_IIIllIlIlIlIIIlI,Narwhal_llIlllllllIIIl;local Narwhal_lllIlIIlIlll;Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#{{119;758;333;948};{361;10;190;543};}]]=Narwhal_lllllIIlIllII[Narwhal_IllIIIlllIIlllllllIlIIIII[#("Kzu")]];Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("Rv")]]=Narwhal_lllllIIlIllII[Narwhal_IllIIIlllIIlllllllIlIIIII[#("A5U")]];Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("Ru")]]=Narwhal_IllIIIlllIIlllllllIlIIIII[#("9OR")];Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("4t")]Narwhal_IIIllIlIlIlIIIlI,Narwhal_llIlllllllIIIl=Narwhal_IllllllllIlIllIllIlI(Narwhal_lIlIllll[Narwhal_lllIlIIlIlll](Narwhal_lIlIllll[Narwhal_lllIlIIlIlll+1]))Narwhal_IIIlIllIllIIIIIIl=Narwhal_llIlllllllIIIl+Narwhal_lllIlIIlIlll-1 Narwhal_IIllIllIlII=0;for Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_lllIlIIlIlll,Narwhal_IIIlIllIllIIIIIIl do Narwhal_IIllIllIlII=Narwhal_IIllIllIlII+1;Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_IIIllIlIlIlIIIlI[Narwhal_IIllIllIlII];end;Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("zV")]Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]=Narwhal_lIlIllll[Narwhal_lllIlIIlIlll](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_lllIlIIlIlll+1,Narwhal_IIIlIllIllIIIIIIl))Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("4x")]Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]=Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]()Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("Ci")];Narwhal_lIIIllllIIIIIl=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("FrB")]];Narwhal_lIlIllll[Narwhal_lllIlIIlIlll+1]=Narwhal_lIIIllllIIIIIl;Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]=Narwhal_lIIIllllIIIIIl[Narwhal_IllIIIlllIIlllllllIlIIIII[#{{341;329;117;967};{418;192;768;817};"1 + 1 = 111";"1 + 1 = 111";}]];Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("ka")]]=Narwhal_IllIIIlllIIlllllllIlIIIII[#("Kbg")];Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("VD")]Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]=Narwhal_lIlIllll[Narwhal_lllIlIIlIlll](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_lllIlIIlIlll+1,Narwhal_IllIIIlllIIlllllllIlIIIII[#("jO1")]))Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("Rj")];Narwhal_lIIIllllIIIIIl=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#{{180;157;136;572};{812;862;864;635};{231;864;286;884};}]];Narwhal_lIlIllll[Narwhal_lllIlIIlIlll+1]=Narwhal_lIIIllllIIIIIl;Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]=Narwhal_lIIIllllIIIIIl[Narwhal_IllIIIlllIIlllllllIlIIIII[#("KAEg")]];else local Narwhal_IIIIllIIIIIllI=Narwhal_IllIIIlllIIlllllllIlIIIII[#("gY")];local Narwhal_lllIlIIlIlll=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#{{138;275;40;146};"1 + 1 = 111";"1 + 1 = 111";}]];Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI+1]=Narwhal_lllIlIIlIlll;Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI]=Narwhal_lllIlIIlIlll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("C1qo")]];end;elseif Narwhal_lllIlIIlIlll<=#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("DL")]Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII](Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII+1])elseif Narwhal_lllIlIIlIlll>#{{347;148;638;268};"1 + 1 = 111";{992;138;480;535};{796;635;938;393};}then Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("LL")]][Narwhal_IllIIIlllIIlllllllIlIIIII[#("bHz")]]=Narwhal_IllIIIlllIIlllllllIlIIIII[#("Lmjf")];else Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("BF")]]={};end;elseif Narwhal_lllIlIIlIlll<=#("QCEAJubm")then if Narwhal_lllIlIIlIlll<=#("d35OHl")then do return end;elseif Narwhal_lllIlIIlIlll>#("Ud9oCkM")then local Narwhal_IIIIllIIIIIllI=Narwhal_IllIIIlllIIlllllllIlIIIII[#("sF")]Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI]=Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI+1,Narwhal_IllIIIlllIIlllllllIlIIIII[#("Ned")]))else Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("eH")]]=Narwhal_lllllIIlIllII[Narwhal_IllIIIlllIIlllllllIlIIIII[#("Qfh")]];end;elseif Narwhal_lllIlIIlIlll<=#("IoI5Jtin65")then if Narwhal_lllIlIIlIlll==#("VYjJT5z5Z")then local Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("lq")];local Narwhal_IIIIllIIIIIllI=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("1HU")]];Narwhal_lIlIllll[Narwhal_lllIlIIlIlll+1]=Narwhal_IIIIllIIIIIllI;Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]=Narwhal_IIIIllIIIIIllI[Narwhal_IllIIIlllIIlllllllIlIIIII[#("sbdD")]];else local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("1A")]Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]()end;elseif Narwhal_lllIlIIlIlll>#("fZLr1apaYPG")then local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("eY")]Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]()else Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("t5")]][Narwhal_IllIIIlllIIlllllllIlIIIII[#("Qhq")]]=Narwhal_IllIIIlllIIlllllllIlIIIII[#("0V0v")];end;elseif Narwhal_lllIlIIlIlll<=#("J1uWgOF4Q9TPAxKEps")then if Narwhal_lllIlIIlIlll<=#{"1 + 1 = 111";{535;167;278;665};{160;69;137;85};"1 + 1 = 111";"1 + 1 = 111";{466;179;922;297};"1 + 1 = 111";{958;399;202;325};"1 + 1 = 111";{352;194;501;92};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{938;202;226;810};}then if Narwhal_lllIlIIlIlll<=#("ro6YVB4Jfg61E")then do return end;elseif Narwhal_lllIlIIlIlll>#("VUFNqd3z5ZE5lb")then local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("r9")]Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_IllIIIlllIIlllllllIlIIIII+1,Narwhal_IIIlIllIllIIIIIIl))else Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("vX")]]=Narwhal_IllIIIlllIIlllllllIlIIIII[#("3xO")];end;elseif Narwhal_lllIlIIlIlll<=#("2CrFhspsFqX1gxrb")then local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("W6")]Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII](Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII+1])elseif Narwhal_lllIlIIlIlll==#("o2hDMOf1x2thu0p3g")then local Narwhal_IIIIllIIIIIllI=Narwhal_IllIIIlllIIlllllllIlIIIII[#("ft")]Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI]=Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI+1,Narwhal_IllIIIlllIIlllllllIlIIIII[#("IrN")]))else local Narwhal_IIIIllIIIIIllI=Narwhal_IllIIIlllIIlllllllIlIIIII[#("ea")]Narwhal_lIlIllll[Narwhal_IIIIllIIIIIllI](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_IIIIllIIIIIllI+1,Narwhal_IllIIIlllIIlllllllIlIIIII[#("aPW")]))end;elseif Narwhal_lllIlIIlIlll<=#("OOvvhGBavElWbNXRRs4ap")then if Narwhal_lllIlIIlIlll<=#("lOVA6kjAI89jOxA2VLb")then Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("y1")]]=Narwhal_IllIIIlllIIlllllllIlIIIII[#("eaY")];elseif Narwhal_lllIlIIlIlll>#("rMPK1QuNi68f70CSLSKp")then local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("uR")]local Narwhal_lllIlIIlIlll,Narwhal_IIIIllIIIIIllI=Narwhal_IllllllllIlIllIllIlI(Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII](Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII+1]))Narwhal_IIIlIllIllIIIIIIl=Narwhal_IIIIllIIIIIllI+Narwhal_IllIIIlllIIlllllllIlIIIII-1 local Narwhal_IIIIllIIIIIllI=0;for Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IIIlIllIllIIIIIIl do Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_lllIlIIlIlll[Narwhal_IIIIllIIIIIllI];end;else Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("TG")]]={};end;elseif Narwhal_lllIlIIlIlll<=#("66nX19ArZIs8OHK9lIp0HqL")then if Narwhal_lllIlIIlIlll>#{{746;896;250;393};"1 + 1 = 111";{720;687;50;55};{395;768;211;398};{933;480;59;839};"1 + 1 = 111";{203;378;25;663};{765;352;201;235};{248;197;991;602};{840;508;555;654};"1 + 1 = 111";{326;222;961;896};"1 + 1 = 111";{289;632;257;351};{585;446;648;978};{599;866;640;305};{111;373;113;568};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{761;658;26;888};"1 + 1 = 111";}then local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("5p")]local Narwhal_lllIlIIlIlll,Narwhal_IIIIllIIIIIllI=Narwhal_IllllllllIlIllIllIlI(Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII](Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII+1]))Narwhal_IIIlIllIllIIIIIIl=Narwhal_IIIIllIIIIIllI+Narwhal_IllIIIlllIIlllllllIlIIIII-1 local Narwhal_IIIIllIIIIIllI=0;for Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII,Narwhal_IIIlIllIllIIIIIIl do Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_lllIlIIlIlll[Narwhal_IIIIllIIIIIllI];end;else local Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIIlllIIlllllllIlIIIII[#("vy")]Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII]=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_IllIIIlllIIlllllllIlIIIII+1,Narwhal_IIIlIllIllIIIIIIl))end;elseif Narwhal_lllIlIIlIlll==#("t2SAjtAtPun3QlFKIFrm2l4I")then local Narwhal_IIIlIllIllIIIIIIl;local Narwhal_lllIlIIlIlll;Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("0q")]][Narwhal_IllIIIlllIIlllllllIlIIIII[#("3Kx")]]=Narwhal_IllIIIlllIIlllllllIlIIIII[#("Mtrs")];Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("7i")]Narwhal_lIlIllll[Narwhal_lllIlIIlIlll](Narwhal_IIIIlllIIlIlIllIllIlllll(Narwhal_lIlIllll,Narwhal_lllIlIIlIlll+1,Narwhal_IllIIIlllIIlllllllIlIIIII[#("8S1")]))Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("z7")];Narwhal_IIIlIllIllIIIIIIl=Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#{"1 + 1 = 111";{758;406;166;571};"1 + 1 = 111";}]];Narwhal_lIlIllll[Narwhal_lllIlIIlIlll+1]=Narwhal_IIIlIllIllIIIIIIl;Narwhal_lIlIllll[Narwhal_lllIlIIlIlll]=Narwhal_IIIlIllIllIIIIIIl[Narwhal_IllIIIlllIIlllllllIlIIIII[#("FtNj")]];Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];Narwhal_lllIlIIlIlll=Narwhal_IllIIIlllIIlllllllIlIIIII[#("Ur")]Narwhal_lIlIllll[Narwhal_lllIlIIlIlll](Narwhal_lIlIllll[Narwhal_lllIlIIlIlll+1])Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;Narwhal_IllIIIlllIIlllllllIlIIIII=Narwhal_IllIIlIIlIll[Narwhal_IIIIllIIIIIllI];do return end;else Narwhal_lIlIllll[Narwhal_IllIIIlllIIlllllllIlIIIII[#("og")]]=Narwhal_lllllIIlIllII[Narwhal_IllIIIlllIIlllllllIlIIIII[#("gjz")]];end;Narwhal_IIIIllIIIIIllI=Narwhal_IIIIllIIIIIllI+1;end;end);end;return Narwhal_llIlIllIIIIl(true,{},Narwhal_IlIIlIIllIIlllllI())();end)(string.byte,table.insert,setmetatable);
