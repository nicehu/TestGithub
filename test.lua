dofile("./data.lua")

function SaveTableContent(file, obj, t)
	szType = type(obj)
	if szType == "number" then
		if t = "key"
			file:write("[")
			file:write(obj)
			file:write("]")
		else
			file:write("=")
			file:write(obj)
			file:write(",\n")
		end
	elseif szType == "string" then
		if t = "key"
			file:write(obj)
			file:write("=")
		else
			file:write(string.format("%q",obj))
			file:write(",\n")
		end


	end