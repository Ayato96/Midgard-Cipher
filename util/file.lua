local File = {};

File.read_file = function(path)
	local file = assert(io.open(path, "rb"))
	local text = file:read "*a"
	io.close(file)
	return text
end

File.write_file = function(path, content)
	local file = io.open(path, "w")
	io.output(file)
	io.write(content)
	io.close(file)
end

return File;