function binaryRepresentation(arrayTuple, maxSymbol)
    if (maximum(arrayTuple) > maxSymbol)
        # Element in the array exceeding the max symbol index, therefore not a valid card
        return 0;
    end
    if in(0, arrayTuple)
        # Array representation contains a zero, which is not a valid symbol
        return 0;
    end
	len = length(arrayTuple);
	ulen = length(unique(arrayTuple));
	if len != ulen
        # Duplicate symbols found on the card
		return 0;
    end
	return sum(2.^arrayTuple) >>> 1;
end

