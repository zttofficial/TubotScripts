check=1
PowerCube={}
reload=0


local function isInMap() --check location
getmapnow=getmapid()
	if getmapnow==8900
	or getmapnow==8901
	or getmapnow==9600
	or getmapnow==9601
	or getmapnow==9602
	or getmapnow==9603
	or getmapnow==9604
	or getmapnow==9605
	or getmapnow==9606
	or getmapnow==9607
	or getmapnow==9608
	or getmapnow==9609
	or getmapnow==9611
	or getmapnow==8902 then
		return true
	end
return false
end

function PowerCube.begin()
	if not isInMap() then
		plane(15)--Goto Monster Mansion, Big Apple--
		sleep(5000)
	end
	bot_start()
	while(true)
	do
	sleep(100)
	getmapnow=getmapid()
		if getmapnow~=lastmapid then --map id change
			lastmapid=getmapnow
			reload=0
			if getmapnow==8900 then --Big Apple--
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313434302C313437312E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			if getmapnow==8901 then --Monster Mansion--
				item_num=item_if("能量晶块")
				speak("No. of power cubes: " ..item_num..)
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313237392C3437392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3638372C3437392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C3437392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",0)
			end
			if getmapnow==9600 
			or getmapnow==9601
			or getmapnow==9602
			or getmapnow==9603
			or getmapnow==9604
			or getmapnow==9605
			or getmapnow==9606
			or getmapnow==9607
			or getmapnow==9608	then 
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313334332E38322C3531312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C36342E383939312C3531312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3639322E36362C3531312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			if getmapnow==9609	then 
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3434392E362C3531312E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C36342E343039362C3531312E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313539392E30322C3531312E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
			if getmapnow==9611 or getmapnow==8902 then
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313038372E36312C3531312E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C36342E393838392C3531312E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3230302E3639392C3531312E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
			end
		end
		reload=reload+1
		if reload > 600 then
			plane(15)
			sleep(5000)
		end
	end
end


PowerCube.begin()
return PowerCube