local Encrypt = require("midgard-cipher.encrypt");
local Decrypt = require("midgard-cipher.decrypt");

function test()
	local path = "C:/Users/13093596/Documents/github/Midgard-Client/modules/client/client.lua"
	local key = "Duz+3q6u/t6tyr7t";
	local iv = "abcdefgh";

	print("----- ENCRYPTING -----")
	Encrypt.encrypt_file(path, key, iv)
	
	print("----- DECRYPTING -----")
	Decrypt.decrypt_file(path, key, iv)
	
	print("----- SUCCESS -----")
end 

test()