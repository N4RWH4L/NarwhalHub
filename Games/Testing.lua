
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(Narwhal_IlIIllIIlIIlIIII,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl)local Narwhal_IlIIlIIIlIl=string.char;local Narwhal_lllIllIlIlIIlllIIlIllII=string.sub;local Narwhal_IIllIlIIIlIIIlIIlIlII=table.concat;local Narwhal_llIIllIIllI=math.ldexp;local Narwhal_IIllIIlllIIlI=getfenv or function()return _ENV end;local Narwhal_lIIlIIllIIlllIIlIllIlIlI=select;local Narwhal_lIIIllIIIIII=unpack or table.unpack;local Narwhal_IlllIIllIIllIIIlIlIlIlIl=tonumber;local function Narwhal_lIllIIIIIllIllIIll(Narwhal_llllllIIlIIIIlI)local Narwhal_IlllIlIllI,Narwhal_IIIIlIlIIIlIIIlII,Narwhal_lIIIllIIIIII="","",{}local Narwhal_llllIIllII=256;local Narwhal_IlIlIIlllIlIIIlII={}for Narwhal_llIlIlIllIlIIIIlllllIl=0,Narwhal_llllIIllII-1 do Narwhal_IlIlIIlllIlIIIlII[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlIIlIIIlIl(Narwhal_llIlIlIllIlIIIIlllllIl)end;local Narwhal_llIlIlIllIlIIIIlllllIl=1;local function Narwhal_IlIIllIIlIIlIIII()local Narwhal_IlllIlIllI=Narwhal_IlllIIllIIllIIIlIlIlIlIl(Narwhal_lllIllIlIlIIlllIIlIllII(Narwhal_llllllIIlIIIIlI,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl),36)Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl+1;local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlllIIllIIllIIIlIlIlIlIl(Narwhal_lllIllIlIlIIlllIIlIllII(Narwhal_llllllIIlIIIIlI,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl+Narwhal_IlllIlIllI-1),36)Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl+Narwhal_IlllIlIllI;return Narwhal_IIIIlIlIIIlIIIlII end;Narwhal_IlllIlIllI=Narwhal_IlIIlIIIlIl(Narwhal_IlIIllIIlIIlIIII())Narwhal_lIIIllIIIIII[1]=Narwhal_IlllIlIllI;while Narwhal_llIlIlIllIlIIIIlllllIl<#Narwhal_llllllIIlIIIIlI do local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_IlIIllIIlIIlIIII()if Narwhal_IlIlIIlllIlIIIlII[Narwhal_llIlIlIllIlIIIIlllllIl]then Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlIlIIlllIlIIIlII[Narwhal_llIlIlIllIlIIIIlllllIl]else Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlllIlIllI..Narwhal_lllIllIlIlIIlllIIlIllII(Narwhal_IlllIlIllI,1,1)end;Narwhal_IlIlIIlllIlIIIlII[Narwhal_llllIIllII]=Narwhal_IlllIlIllI..Narwhal_lllIllIlIlIIlllIIlIllII(Narwhal_IIIIlIlIIIlIIIlII,1,1)Narwhal_lIIIllIIIIII[#Narwhal_lIIIllIIIIII+1],Narwhal_IlllIlIllI,Narwhal_llllIIllII=Narwhal_IIIIlIlIIIlIIIlII,Narwhal_IIIIlIlIIIlIIIlII,Narwhal_llllIIllII+1 end;return table.concat(Narwhal_lIIIllIIIIII)end;local Narwhal_IlllIIllIIllIIIlIlIlIlIl=Narwhal_lIllIIIIIllIllIIll('25E25N27525K25D27525N24N24K24Q24V25425B25524I24L24S25K25P27923M24M25724K25525B27L27924E23M26D24N25A24Q25K25J27923S25524U24Q25B24U24C27I24V24K25825K25O27924F24U27F27I27K25F27923U24V24V23R24Q24P24U24N25K25R27928924Z27T25H28I24J24I25426J29726J24Q26J28927F28Y27N24L24I25B27927526327926128327525M29O29R25N25L29T29V25N25K29L29U29W2A129L2A329L29S29W26J29U27528Z26127625N25Q2A429S2A02A927529W29S27M29Z25N28Z29U26Z2652AR25N28H28O27929W28Z29S2AA29Y2752742B029Y29S2A12BA25N');local Narwhal_llIlIlIllIlIIIIlllllIl=(bit or bit32);local Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl and Narwhal_llIlIlIllIlIIIIlllllIl.bxor or function(Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_IIIIlIlIIIlIIIlII)local Narwhal_IlllIlIllI,Narwhal_IlIlIIlllIlIIIlII,Narwhal_lllIllIlIlIIlllIIlIllII=1,0,10 while Narwhal_llIlIlIllIlIIIIlllllIl>0 and Narwhal_IIIIlIlIIIlIIIlII>0 do local Narwhal_lllIllIlIlIIlllIIlIllII,Narwhal_llllIIllII=Narwhal_llIlIlIllIlIIIIlllllIl%2,Narwhal_IIIIlIlIIIlIIIlII%2 if Narwhal_lllIllIlIlIIlllIIlIllII~=Narwhal_llllIIllII then Narwhal_IlIlIIlllIlIIIlII=Narwhal_IlIlIIlllIlIIIlII+Narwhal_IlllIlIllI end Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_IIIIlIlIIIlIIIlII,Narwhal_IlllIlIllI=(Narwhal_llIlIlIllIlIIIIlllllIl-Narwhal_lllIllIlIlIIlllIIlIllII)/2,(Narwhal_IIIIlIlIIIlIIIlII-Narwhal_llllIIllII)/2,Narwhal_IlllIlIllI*2 end if Narwhal_llIlIlIllIlIIIIlllllIl<Narwhal_IIIIlIlIIIlIIIlII then Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_IIIIlIlIIIlIIIlII end while Narwhal_llIlIlIllIlIIIIlllllIl>0 do local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl%2 if Narwhal_IIIIlIlIIIlIIIlII>0 then Narwhal_IlIlIIlllIlIIIlII=Narwhal_IlIlIIlllIlIIIlII+Narwhal_IlllIlIllI end Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_IlllIlIllI=(Narwhal_llIlIlIllIlIIIIlllllIl-Narwhal_IIIIlIlIIIlIIIlII)/2,Narwhal_IlllIlIllI*2 end return Narwhal_IlIlIIlllIlIIIlII end local function Narwhal_IIIIlIlIIIlIIIlII(Narwhal_IIIIlIlIIIlIIIlII,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_IlllIlIllI)if Narwhal_IlllIlIllI then local Narwhal_llIlIlIllIlIIIIlllllIl=(Narwhal_IIIIlIlIIIlIIIlII/2^(Narwhal_llIlIlIllIlIIIIlllllIl-1))%2^((Narwhal_IlllIlIllI-1)-(Narwhal_llIlIlIllIlIIIIlllllIl-1)+1);return Narwhal_llIlIlIllIlIIIIlllllIl-Narwhal_llIlIlIllIlIIIIlllllIl%1;else local Narwhal_llIlIlIllIlIIIIlllllIl=2^(Narwhal_llIlIlIllIlIIIIlllllIl-1);return(Narwhal_IIIIlIlIIIlIIIlII%(Narwhal_llIlIlIllIlIIIIlllllIl+Narwhal_llIlIlIllIlIIIIlllllIl)>=Narwhal_llIlIlIllIlIIIIlllllIl)and 1 or 0;end;end;local Narwhal_llIlIlIllIlIIIIlllllIl=1;local function Narwhal_IlllIlIllI()local Narwhal_IIIIlIlIIIlIIIlII,Narwhal_lllIllIlIlIIlllIIlIllII,Narwhal_IlllIlIllI,Narwhal_llllIIllII=Narwhal_IlIIllIIlIIlIIII(Narwhal_IlllIIllIIllIIIlIlIlIlIl,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl+3);Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlIlIIlllIlIIIlII(Narwhal_IIIIlIlIIIlIIIlII,203)Narwhal_lllIllIlIlIIlllIIlIllII=Narwhal_IlIlIIlllIlIIIlII(Narwhal_lllIllIlIlIIlllIIlIllII,203)Narwhal_IlllIlIllI=Narwhal_IlIlIIlllIlIIIlII(Narwhal_IlllIlIllI,203)Narwhal_llllIIllII=Narwhal_IlIlIIlllIlIIIlII(Narwhal_llllIIllII,203)Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl+4;return(Narwhal_llllIIllII*16777216)+(Narwhal_IlllIlIllI*65536)+(Narwhal_lllIllIlIlIIlllIIlIllII*256)+Narwhal_IIIIlIlIIIlIIIlII;end;local function Narwhal_llllllIIlIIIIlI()local Narwhal_IlllIlIllI=Narwhal_IlIlIIlllIlIIIlII(Narwhal_IlIIllIIlIIlIIII(Narwhal_IlllIIllIIllIIIlIlIlIlIl,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl),203);Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl+1;return Narwhal_IlllIlIllI;end;local function Narwhal_llllIIllII()local Narwhal_IlllIlIllI,Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlIIllIIlIIlIIII(Narwhal_IlllIIllIIllIIIlIlIlIlIl,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl+2);Narwhal_IlllIlIllI=Narwhal_IlIlIIlllIlIIIlII(Narwhal_IlllIlIllI,203)Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlIlIIlllIlIIIlII(Narwhal_IIIIlIlIIIlIIIlII,203)Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl+2;return(Narwhal_IIIIlIlIIIlIIIlII*256)+Narwhal_IlllIlIllI;end;local function Narwhal_lIllIIIIIllIllIIll()local Narwhal_IlIlIIlllIlIIIlII=Narwhal_IlllIlIllI();local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_IlllIlIllI();local Narwhal_lllIllIlIlIIlllIIlIllII=1;local Narwhal_IlIlIIlllIlIIIlII=(Narwhal_IIIIlIlIIIlIIIlII(Narwhal_llIlIlIllIlIIIIlllllIl,1,20)*(2^32))+Narwhal_IlIlIIlllIlIIIlII;local Narwhal_IlllIlIllI=Narwhal_IIIIlIlIIIlIIIlII(Narwhal_llIlIlIllIlIIIIlllllIl,21,31);local Narwhal_llIlIlIllIlIIIIlllllIl=((-1)^Narwhal_IIIIlIlIIIlIIIlII(Narwhal_llIlIlIllIlIIIIlllllIl,32));if(Narwhal_IlllIlIllI==0)then if(Narwhal_IlIlIIlllIlIIIlII==0)then return Narwhal_llIlIlIllIlIIIIlllllIl*0;else Narwhal_IlllIlIllI=1;Narwhal_lllIllIlIlIIlllIIlIllII=0;end;elseif(Narwhal_IlllIlIllI==2047)then return(Narwhal_IlIlIIlllIlIIIlII==0)and(Narwhal_llIlIlIllIlIIIIlllllIl*(1/0))or(Narwhal_llIlIlIllIlIIIIlllllIl*(0/0));end;return Narwhal_llIIllIIllI(Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_IlllIlIllI-1023)*(Narwhal_lllIllIlIlIIlllIIlIllII+(Narwhal_IlIlIIlllIlIIIlII/(2^52)));end;local Narwhal_IIlIlIIlIIIIIlIIIl=Narwhal_IlllIlIllI;local function Narwhal_llIIllIIllI(Narwhal_IlllIlIllI)local Narwhal_IIIIlIlIIIlIIIlII;if(not Narwhal_IlllIlIllI)then Narwhal_IlllIlIllI=Narwhal_IIlIlIIlIIIIIlIIIl();if(Narwhal_IlllIlIllI==0)then return'';end;end;Narwhal_IIIIlIlIIIlIIIlII=Narwhal_lllIllIlIlIIlllIIlIllII(Narwhal_IlllIIllIIllIIIlIlIlIlIl,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl+Narwhal_IlllIlIllI-1);Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl+Narwhal_IlllIlIllI;local Narwhal_IlllIlIllI={}for Narwhal_llIlIlIllIlIIIIlllllIl=1,#Narwhal_IIIIlIlIIIlIIIlII do Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlIIlIIIlIl(Narwhal_IlIlIIlllIlIIIlII(Narwhal_IlIIllIIlIIlIIII(Narwhal_lllIllIlIlIIlllIIlIllII(Narwhal_IIIIlIlIIIlIIIlII,Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llIlIlIllIlIIIIlllllIl)),203))end return Narwhal_IIllIlIIIlIIIlIIlIlII(Narwhal_IlllIlIllI);end;local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_IlllIlIllI;local function Narwhal_IIlIlIIlIIIIIlIIIl(...)return{...},Narwhal_lIIlIIllIIlllIIlIllIlIlI('#',...)end local function Narwhal_IlIIlIIIlIl()local Narwhal_IlIIllIIlIIlIIII={};local Narwhal_IlIlIIlllIlIIIlII={};local Narwhal_llIlIlIllIlIIIIlllllIl={};local Narwhal_IlllIIllIIllIIIlIlIlIlIl={[#{{571;730;227;292};{582;790;804;376};}]=Narwhal_IlIlIIlllIlIIIlII,[#{"1 + 1 = 111";"1 + 1 = 111";{557;639;199;468};}]=nil,[#{"1 + 1 = 111";{269;808;426;356};{532;245;874;727};"1 + 1 = 111";}]=Narwhal_llIlIlIllIlIIIIlllllIl,[#{"1 + 1 = 111";}]=Narwhal_IlIIllIIlIIlIIII,};local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_IlllIlIllI()local Narwhal_lllIllIlIlIIlllIIlIllII={}for Narwhal_IIIIlIlIIIlIIIlII=1,Narwhal_llIlIlIllIlIIIIlllllIl do local Narwhal_IlllIlIllI=Narwhal_llllllIIlIIIIlI();local Narwhal_llIlIlIllIlIIIIlllllIl;if(Narwhal_IlllIlIllI==1)then Narwhal_llIlIlIllIlIIIIlllllIl=(Narwhal_llllllIIlIIIIlI()~=0);elseif(Narwhal_IlllIlIllI==0)then Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lIllIIIIIllIllIIll();elseif(Narwhal_IlllIlIllI==3)then Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIIllIIllI();end;Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII]=Narwhal_llIlIlIllIlIIIIlllllIl;end;Narwhal_IlllIIllIIllIIIlIlIlIlIl[3]=Narwhal_llllllIIlIIIIlI();for Narwhal_llIlIlIllIlIIIIlllllIl=1,Narwhal_IlllIlIllI()do Narwhal_IlIlIIlllIlIIIlII[Narwhal_llIlIlIllIlIIIIlllllIl-1]=Narwhal_IlIIlIIIlIl();end;for Narwhal_IlllIIllIIllIIIlIlIlIlIl=1,Narwhal_IlllIlIllI()do local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llllllIIlIIIIlI();if(Narwhal_IIIIlIlIIIlIIIlII(Narwhal_llIlIlIllIlIIIIlllllIl,1,1)==0)then local Narwhal_IlIlIIlllIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII(Narwhal_llIlIlIllIlIIIIlllllIl,2,3);local Narwhal_lIIIllIIIIII=Narwhal_IIIIlIlIIIlIIIlII(Narwhal_llIlIlIllIlIIIIlllllIl,4,6);local Narwhal_llIlIlIllIlIIIIlllllIl={Narwhal_llllIIllII(),Narwhal_llllIIllII(),nil,nil};if(Narwhal_IlIlIIlllIlIIIlII==0)then Narwhal_llIlIlIllIlIIIIlllllIl[#("DjK")]=Narwhal_llllIIllII();Narwhal_llIlIlIllIlIIIIlllllIl[#("ZuRT")]=Narwhal_llllIIllII();elseif(Narwhal_IlIlIIlllIlIIIlII==1)then Narwhal_llIlIlIllIlIIIIlllllIl[#("gbU")]=Narwhal_IlllIlIllI();elseif(Narwhal_IlIlIIlllIlIIIlII==2)then Narwhal_llIlIlIllIlIIIIlllllIl[#("ZcY")]=Narwhal_IlllIlIllI()-(2^16)elseif(Narwhal_IlIlIIlllIlIIIlII==3)then Narwhal_llIlIlIllIlIIIIlllllIl[#("moH")]=Narwhal_IlllIlIllI()-(2^16)Narwhal_llIlIlIllIlIIIIlllllIl[#("H3Cd")]=Narwhal_llllIIllII();end;if(Narwhal_IIIIlIlIIIlIIIlII(Narwhal_lIIIllIIIIII,1,1)==1)then Narwhal_llIlIlIllIlIIIIlllllIl[#("ge")]=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_llIlIlIllIlIIIIlllllIl[#("b3")]]end if(Narwhal_IIIIlIlIIIlIIIlII(Narwhal_lIIIllIIIIII,2,2)==1)then Narwhal_llIlIlIllIlIIIIlllllIl[#("SV5")]=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_llIlIlIllIlIIIIlllllIl[#("U3N")]]end if(Narwhal_IIIIlIlIIIlIIIlII(Narwhal_lIIIllIIIIII,3,3)==1)then Narwhal_llIlIlIllIlIIIIlllllIl[#("suHJ")]=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_llIlIlIllIlIIIIlllllIl[#("h0ST")]]end Narwhal_IlIIllIIlIIlIIII[Narwhal_IlllIIllIIllIIIlIlIlIlIl]=Narwhal_llIlIlIllIlIIIIlllllIl;end end;return Narwhal_IlllIIllIIllIIIlIlIlIlIl;end;local function Narwhal_lIllIIIIIllIllIIll(Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_IlllIlIllI,Narwhal_IlIIllIIlIIlIIII)Narwhal_llIlIlIllIlIIIIlllllIl=(Narwhal_llIlIlIllIlIIIIlllllIl==true and Narwhal_IlIIlIIIlIl())or Narwhal_llIlIlIllIlIIIIlllllIl;return(function(...)local Narwhal_lllIllIlIlIIlllIIlIllII=Narwhal_llIlIlIllIlIIIIlllllIl[1];local Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[3];local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[2];local Narwhal_IlIIlIIIlIl=Narwhal_IIlIlIIlIIIIIlIIIl local Narwhal_IIIIlIlIIIlIIIlII=1;local Narwhal_llllIIllII=-1;local Narwhal_llIIllIIllI={};local Narwhal_llllllIIlIIIIlI={...};local Narwhal_IlllIIllIIllIIIlIlIlIlIl=Narwhal_lIIlIIllIIlllIIlIllIlIlI('#',...)-1;local Narwhal_llIlIlIllIlIIIIlllllIl={};local Narwhal_IlllIlIllI={};for Narwhal_llIlIlIllIlIIIIlllllIl=0,Narwhal_IlllIIllIIllIIIlIlIlIlIl do if(Narwhal_llIlIlIllIlIIIIlllllIl>=Narwhal_IlIlIIlllIlIIIlII)then Narwhal_llIIllIIllI[Narwhal_llIlIlIllIlIIIIlllllIl-Narwhal_IlIlIIlllIlIIIlII]=Narwhal_llllllIIlIIIIlI[Narwhal_llIlIlIllIlIIIIlllllIl+1];else Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_llllllIIlIIIIlI[Narwhal_llIlIlIllIlIIIIlllllIl+#{{261;258;541;661};}];end;end;local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_IlllIIllIIllIIIlIlIlIlIl-Narwhal_IlIlIIlllIlIIIlII+1 local Narwhal_llIlIlIllIlIIIIlllllIl;local Narwhal_IlIlIIlllIlIIIlII;while true do Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("3")];if Narwhal_IlIlIIlllIlIIIlII<=#("e3xj9RUqAJHz")then if Narwhal_IlIlIIlllIlIIIlII<=#("XGHDa")then if Narwhal_IlIlIIlllIlIIIlII<=#{"1 + 1 = 111";"1 + 1 = 111";}then if Narwhal_IlIlIIlllIlIIIlII<=#("")then local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#("jW")]Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl](Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl+1])elseif Narwhal_IlIlIIlllIlIIIlII>#("3")then Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("Ss")]]=Narwhal_llIlIlIllIlIIIIlllllIl[#("14d")];else local Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("rS")];local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("msM")]];Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII+1]=Narwhal_IIIIlIlIIIlIIIlII;Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_IIIIlIlIIIlIIIlII[Narwhal_llIlIlIllIlIIIIlllllIl[#("iCDH")]];end;elseif Narwhal_IlIlIIlllIlIIIlII<=#("5NQ")then Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("AS")]]={};elseif Narwhal_IlIlIIlllIlIIIlII==#("FT4A")then do return end;else Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("ik")]]=Narwhal_llIlIlIllIlIIIIlllllIl[#("tVT")];end;elseif Narwhal_IlIlIIlllIlIIIlII<=#("eKSTqF3P")then if Narwhal_IlIlIIlllIlIIIlII<=#("7WTBYo")then Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("Bj")]]=Narwhal_IlIIllIIlIIlIIII[Narwhal_llIlIlIllIlIIIIlllllIl[#("QOA")]];elseif Narwhal_IlIlIIlllIlIIIlII==#{{24;766;720;946};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{214;569;481;416};{55;358;484;128};}then local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("UZ")]Narwhal_IlllIlIllI[Narwhal_IIIIlIlIIIlIIIlII]=Narwhal_IlllIlIllI[Narwhal_IIIIlIlIIIlIIIlII](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_IIIIlIlIIIlIIIlII+1,Narwhal_llIlIlIllIlIIIIlllllIl[#{"1 + 1 = 111";"1 + 1 = 111";{229;513;29;279};}]))else Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("cG")]]=Narwhal_IlIIllIIlIIlIIII[Narwhal_llIlIlIllIlIIIIlllllIl[#("JSA")]];end;elseif Narwhal_IlIlIIlllIlIIIlII<=#("2edds4ZM8G")then if Narwhal_IlIlIIlllIlIIIlII>#("5YUTFoF27")then local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#("K5")]Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_llIlIlIllIlIIIIlllllIl+1,Narwhal_llllIIllII))else local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("VQ")]Narwhal_IlllIlIllI[Narwhal_IIIIlIlIIIlIIIlII](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_IIIIlIlIIIlIIIlII+1,Narwhal_llIlIlIllIlIIIIlllllIl[#("tAQ")]))end;elseif Narwhal_IlIlIIlllIlIIIlII==#("JFZC4NBCaG9")then Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("3y")]][Narwhal_llIlIlIllIlIIIIlllllIl[#("akM")]]=Narwhal_llIlIlIllIlIIIIlllllIl[#("5lbR")];else local Narwhal_llllllIIlIIIIlI;local Narwhal_IlllIIllIIllIIIlIlIlIlIl;local Narwhal_lIIlIIllIIlllIIlIllIlIlI,Narwhal_llIIllIIllI;local Narwhal_IlIlIIlllIlIIIlII;Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("Ry")]]=Narwhal_IlIIllIIlIIlIIII[Narwhal_llIlIlIllIlIIIIlllllIl[#("GAD")]];Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("jl")]]=Narwhal_IlIIllIIlIIlIIII[Narwhal_llIlIlIllIlIIIIlllllIl[#("87t")]];Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("Zn")]]=Narwhal_llIlIlIllIlIIIIlllllIl[#("BBc")];Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#{"1 + 1 = 111";"1 + 1 = 111";}]Narwhal_lIIlIIllIIlllIIlIllIlIlI,Narwhal_llIIllIIllI=Narwhal_IlIIlIIIlIl(Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII](Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII+1]))Narwhal_llllIIllII=Narwhal_llIIllIIllI+Narwhal_IlIlIIlllIlIIIlII-1 Narwhal_IlllIIllIIllIIIlIlIlIlIl=0;for Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_IlIlIIlllIlIIIlII,Narwhal_llllIIllII do Narwhal_IlllIIllIIllIIIlIlIlIlIl=Narwhal_IlllIIllIIllIIIlIlIlIlIl+1;Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_lIIlIIllIIlllIIlIllIlIlI[Narwhal_IlllIIllIIllIIIlIlIlIlIl];end;Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("Er")]Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_IlIlIIlllIlIIIlII+1,Narwhal_llllIIllII))Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("eQ")]Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]()Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("Tq")];Narwhal_llllllIIlIIIIlI=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("FVZ")]];Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII+1]=Narwhal_llllllIIlIIIIlI;Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_llllllIIlIIIIlI[Narwhal_llIlIlIllIlIIIIlllllIl[#("mLNz")]];Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#{{508;953;458;280};"1 + 1 = 111";}]]=Narwhal_llIlIlIllIlIIIIlllllIl[#{"1 + 1 = 111";{151;289;79;797};"1 + 1 = 111";}];Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("Nh")]Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_IlIlIIlllIlIIIlII+1,Narwhal_llIlIlIllIlIIIIlllllIl[#{{742;510;740;908};{236;868;323;991};"1 + 1 = 111";}]))Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("OG")];Narwhal_llllllIIlIIIIlI=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("EoD")]];Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII+1]=Narwhal_llllllIIlIIIIlI;Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_llllllIIlIIIIlI[Narwhal_llIlIlIllIlIIIIlllllIl[#("0Gta")]];end;elseif Narwhal_IlIlIIlllIlIIIlII<=#("o0mBZxmikU4fsoiJ7l")then if Narwhal_IlIlIIlllIlIIIlII<=#("m9xsKoMyryk8aTt")then if Narwhal_IlIlIIlllIlIIIlII<=#("3GeziQZ6YKTiQ")then local Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#{"1 + 1 = 111";"1 + 1 = 111";}];local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("N8x")]];Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII+1]=Narwhal_IIIIlIlIIIlIIIlII;Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_IIIIlIlIIIlIIIlII[Narwhal_llIlIlIllIlIIIIlllllIl[#("CfeX")]];elseif Narwhal_IlIlIIlllIlIIIlII==#("2EZUXM2INln85U")then local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#("BC")]Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl](Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl+1])else local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#("Qr")]Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_llIlIlIllIlIIIIlllllIl+1,Narwhal_llllIIllII))end;elseif Narwhal_IlIlIIlllIlIIIlII<=#("W4x9Ppc3WNGkAF9G")then local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("25")]Narwhal_IlllIlIllI[Narwhal_IIIIlIlIIIlIIIlII](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_IIIIlIlIIIlIIIlII+1,Narwhal_llIlIlIllIlIIIIlllllIl[#("iko")]))elseif Narwhal_IlIlIIlllIlIIIlII==#("SXGQjp5RRv22ljVf6")then Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("NH")]][Narwhal_llIlIlIllIlIIIIlllllIl[#("knd")]]=Narwhal_llIlIlIllIlIIIIlllllIl[#("8bbS")];else do return end;end;elseif Narwhal_IlIlIIlllIlIIIlII<=#{{55;884;750;113};"1 + 1 = 111";"1 + 1 = 111";{758;795;900;292};"1 + 1 = 111";{974;272;36;296};"1 + 1 = 111";{45;70;655;599};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{932;263;705;764};"1 + 1 = 111";{498;377;855;224};{653;106;751;514};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then if Narwhal_IlIlIIlllIlIIIlII<=#("Bs73jaLDUeDCtkuSJRe")then local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#("Hg")]Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]()elseif Narwhal_IlIlIIlllIlIIIlII==#("iOopsomC4O1NAb50duPK")then Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("iR")]]={};else local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#("tk")]local Narwhal_IlIlIIlllIlIIIlII,Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlIIlIIIlIl(Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl](Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl+1]))Narwhal_llllIIllII=Narwhal_IIIIlIlIIIlIIIlII+Narwhal_llIlIlIllIlIIIIlllllIl-1 local Narwhal_IIIIlIlIIIlIIIlII=0;for Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llllIIllII do Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlIlIIlllIlIIIlII[Narwhal_IIIIlIlIIIlIIIlII];end;end;elseif Narwhal_IlIlIIlllIlIIIlII<=#("OHx8KtFzIJHoGFWdRL4YiJg")then if Narwhal_IlIlIIlllIlIIIlII==#("0cspFOobFPFh1qS5Rdxfuz")then local Narwhal_llllIIllII;local Narwhal_IlIlIIlllIlIIIlII;Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("m4")]][Narwhal_llIlIlIllIlIIIIlllllIl[#("vuH")]]=Narwhal_llIlIlIllIlIIIIlllllIl[#("qoZ1")];Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("8G")]Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_IlIlIIlllIlIIIlII+1,Narwhal_llIlIlIllIlIIIIlllllIl[#("Q7s")]))Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#{"1 + 1 = 111";"1 + 1 = 111";}];Narwhal_llllIIllII=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl[#("LMr")]];Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII+1]=Narwhal_llllIIllII;Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII]=Narwhal_llllIIllII[Narwhal_llIlIlIllIlIIIIlllllIl[#("x1kX")]];Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];Narwhal_IlIlIIlllIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("9x")]Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII](Narwhal_IlllIlIllI[Narwhal_IlIlIIlllIlIIIlII+1])Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_lllIllIlIlIIlllIIlIllII[Narwhal_IIIIlIlIIIlIIIlII];do return end;else local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#{"1 + 1 = 111";{567;706;392;923};}]Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]()end;elseif Narwhal_IlIlIIlllIlIIIlII>#("GiWvTUWsfAjiIap33uFU1aPl")then local Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl[#("5y")]local Narwhal_IlIlIIlllIlIIIlII,Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IlIIlIIIlIl(Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl](Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl+1]))Narwhal_llllIIllII=Narwhal_IIIIlIlIIIlIIIlII+Narwhal_llIlIlIllIlIIIIlllllIl-1 local Narwhal_IIIIlIlIIIlIIIlII=0;for Narwhal_llIlIlIllIlIIIIlllllIl=Narwhal_llIlIlIllIlIIIIlllllIl,Narwhal_llllIIllII do Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;Narwhal_IlllIlIllI[Narwhal_llIlIlIllIlIIIIlllllIl]=Narwhal_IlIlIIlllIlIIIlII[Narwhal_IIIIlIlIIIlIIIlII];end;else local Narwhal_IIIIlIlIIIlIIIlII=Narwhal_llIlIlIllIlIIIIlllllIl[#("60")]Narwhal_IlllIlIllI[Narwhal_IIIIlIlIIIlIIIlII]=Narwhal_IlllIlIllI[Narwhal_IIIIlIlIIIlIIIlII](Narwhal_lIIIllIIIIII(Narwhal_IlllIlIllI,Narwhal_IIIIlIlIIIlIIIlII+1,Narwhal_llIlIlIllIlIIIIlllllIl[#("7IH")]))end;Narwhal_IIIIlIlIIIlIIIlII=Narwhal_IIIIlIlIIIlIIIlII+1;end;end);end;return Narwhal_lIllIIIIIllIllIIll(true,{},Narwhal_IIllIIlllIIlI())();end)(string.byte,table.insert,setmetatable);
