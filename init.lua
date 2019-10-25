local Midgard_Cipher = {};

Midgard_Cipher.ALLOW_INSECURE = true;

Midgard_Cipher.insecure = function()
	assert(Midgard_Cipher.ALLOW_INSECURE,"This module is insecure!  It should not be used in production.  If you really want to use it, set Midgard_Cipher.ALLOW_INSECURE to true before importing it");
end

return Midgard_Cipher;
