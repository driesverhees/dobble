function binaryRepresentation(arrayTuple)
	len = length(arrayTuple);
	ulen = length(unique(arrayTuple));
	if len != ulen
		return 0;	
	end
	return sum(2.^arrayTuple);
end

