function isValidPair(pair1, pair2)
	num = pair1 & pair2; #Only one bit in common
	if (num == 0)
		return false; #No bits in common
	elseif (num == 1)
		return true; #First bit in common
	else
        return log2(num) % 1 == 0 #Check if power of two (=1 bit in common)
	end
end

