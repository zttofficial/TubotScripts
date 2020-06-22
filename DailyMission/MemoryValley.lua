check=1
MemoryValley = {}
maketeam()
bot_stop()

local function isNumEnd()
	if indun_get(95800) == 3.0 then 
		return true
	end
	return false
end

local function isItemHave()
	if item_if(430458241) == 0.0 then
		return false
	end
	return true
end



local function isInMap()
	if getmapid() == 84600
	or getmapid() == 84601
	or getmapid() == 84602
	or getmapid() == 83300
	or getmapid() == 83301
	or getmapid() == 83302
	or getmapid() == 83303
	or getmapid() == 83304
	or getmapid() == 83305
	or getmapid() == 83306
	or getmapid() == 83307
	or getmapid() == 83308
	or getmapid() == 83309
	or getmapid() == 83310
	or getmapid() == 83311
	or getmapid() == 83312
	or getmapid() == 83313
	or getmapid() == 83314
	or getmapid() == 83315
	or getmapid() == 83316	then
		return true
	end
	return false
end

function MemoryValley.begin()
	bot_stop()
    printgame(0,255,255,"If you press wrong, you have 5 seconds to stop loading.")
    sleep(5000)
	
	if not isInMap() then
		if isNumEnd() then
			speak("End.")
			bot_stop()
			return
		end
	end
	
	if not isInMap() then
		if not isItemHave() then
			sleep(2000)
			speak("Lack of Teleport Stone")
			return
		end
		item_use(430458241)
	end
	
	bot_start()
	while(true)
	do
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then
			mapid_last = mapid_now
			
			if(getmapid()==84600) then 
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132332C313337352E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end		
			
			if getmapid()==84601 then 
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132382E33382C3738332E3133312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313439362E30362C313332372E36312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			
			if getmapid()==84602 then
				script_txt_loaddata("D7F3CCF82CD7F326D3D2CAB12C313932302E32322C3738332E31322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD7F326D3D2CAB12C323236372E35342C313332372E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD7F326D3D2CAB12C333037392E38382C313236332E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333134352E37322C313130332E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
				while(true)
				do
					if door_if(3167,1103)==1 then
						break
					end
				end
				if isNumEnd() then
					speak("Completed 3 times, end.")
					bot_stop()
					return
				end
			end
			
			if getmapid()==83300 or getmapid()==83301then --Bottom Right
				script_txt_loaddata("D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C3733362E3731382C3330342E38342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3733352E3339392C3733352E35382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313234372C3731312E3432372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			
			if getmapid()==83302 or getmapid()==83304 then --Bottom Left
				script_txt_loaddata("D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C3534342E3335382C3733352E37322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C3539312E3038312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			
			if getmapid()==83303 then --Top Left
				script_txt_loaddata("D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C3534342E3335382C3733352E37322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F326D3D2CAB12C33322C3539312E3038312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C3238372E3734372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			
			if getmapid()==83305 or getmapid()==83307 then --BOSS room
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C38352E373538352C3633392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			
			if getmapid()==84800 then 
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C3539312E3830312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C3534342E3333392C3733352E3532312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
		end
	sleep(50)
	end
end

MemoryValley.begin()

return MemoryValley