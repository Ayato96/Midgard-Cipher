local String = require("string");
local File = require("midgard-cipher.util.file");
local Array = require("midgard-cipher.util.array");
local Stream = require("midgard-cipher.util.stream");
local ZeroPadding = require("midgard-cipher.padding.zero");
local DES3Cipher = require("midgard-cipher.cipher.des3");
local CBCMode = require("midgard-cipher.cipher.mode.cbc");

local Encrypt = {};

Encrypt.encrypt_file = function(path, key, iv)
	local plainText = File.read_file(path)
	if not plainText then return {} end

	local cipher = CBCMode.Cipher()
			.setKey(Array.fromString(key))
			.setBlockCipher(DES3Cipher)
			.setPadding(ZeroPadding);


	local encrypted = cipher
				.init()
				.update(Stream.fromString(iv))
				.update(Stream.fromArray(Array.fromString(plainText)))
				.finish()
				.asHex();		

	File.write_file(path, encrypted)
end

return Encrypt;