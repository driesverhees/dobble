function countSymbols(intNumber)
	return length(matchall(r"1", bin(intNumber,2)))
end

