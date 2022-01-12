--[[
while n > 1 do 
	wait(1)
	tim += 1
	print(n..":".."("..tim..")")
	if n % 2 ~= 0 then
		n = 3*n + 1
	else
		n = n/2
	end
	if n == 1 then
		print("end")
	end
end
--]]

--

while n > 1 do
	wait()
	tim += 1
	n = n % 2 ~= 0 and 3*n + 1 or n/2
	print(n..":".."("..tim..")")
	if n == 1 then
		print("end");
	end
end

--]]

--local function conjecture(n)
--	n = n % 2 ~= 0 and 3*n + 1 or n/2 
--	return n  
--end

--[[
n = 901
offset = 1
intep = 0.01

local function quadraticBezier(interpilation, p0, p1, p2)
	return ((1 - interpilation)^2 * p0 + 2*(interpilation)*(1 - interpilation) * p1 + (interpilation)^2 * p2 )
end

local function midPoint(x, y)
	return (x + y)/2
end

local p0, p2, p1 = workspace.SpawnLocation, workspace.p1, workspace.p2
local part;

local co = coroutine.wrap(function()
	while n > 1 do
		wait()
		offset +=1
		intep +=0.01
		part = Instance.new("Part", workspace.ForRandom); part.Anchored = true
		----
		part.Position = Vector3.new(n,n,1)
		part.Position = quadraticBezier(offset*intep/n, p0.Position, p1.Position, p2.Position)
		part.Color = Color3.fromRGB(math.random(1, 255),math.random(1, 255),math.random(1, 255))
		part.Size = Vector3.new(1.5,1.5,1.5)
		part.Material = Enum.Material.Neon
		if n % 2 ~= 0 then
			n = 3*n + 1
			part.CFrame = part.CFrame * CFrame.Angles(math.random(0, 90),1,1)
		else
			n = n/2
			part.CFrame = part.CFrame * CFrame.Angles(math.random(90, 180),1,1)
		end
		print(n)
		if n == 1 then
			print("end")
		end
	end
end)()
--]]
--[[

thresh = 167
delta = 1

local root = workspace.root.CFrame

local n = {
	
	x = thresh;
	y = thresh;
	z = thresh;
	
}

while thresh > 1 do
	
	wait(1)
	delta += 1
	
	thresh = thresh%2 ~= 0 and 3*thresh + 1 or thresh/2
	n["x"] = thresh; n["y"] = thresh; n["z"] = thresh
	
	local part = Instance.new("Part", workspace.ForRandom); part.Anchored = true
	part.Position = Vector3.new(n["x"], n["y"], n["z"])
	
	if thresh == 1 then
		print("end")
	end
	
end



--]]
