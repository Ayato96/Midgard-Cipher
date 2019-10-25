local String = require("string");
local File = require("midgard-cipher.util.file");
local Array = require("midgard-cipher.util.array");
local Stream = require("midgard-cipher.util.stream");
local ZeroPadding = require("midgard-cipher.padding.zero");
local DES3Cipher = require("midgard-cipher.cipher.des3");
local CBCMode = require("midgard-cipher.cipher.mode.cbc");

local Decrypt = {};

Decrypt.decrypt_file = function(path, key, iv)
	local encrypted = File.read_file(path)
	if not encrypted then return {} end

	local decipher = CBCMode.Decipher()
			.setKey(Array.fromString(key))
			.setBlockCipher(DES3Cipher)
			.setPadding(ZeroPadding);
	
	local decrypted = decipher
				.init()
				.update(Stream.fromString(iv))
				.update(Stream.fromArray(Array.fromHex(encrypted)))
				.finish()
				.asBytes();
 
	File.write_file(path, Array.toString(decrypted))
end

return Decrypt;