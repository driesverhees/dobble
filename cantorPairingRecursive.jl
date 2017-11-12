include("cantorPairing.jl");

function cantorPairingRecursive(arrayTuple)
	len = length(arrayTuple);
	if (len == 2)
		return cantorPairing(arrayTuple[1], arrayTuple[2]);
	else
		return cantorPairing(arrayTuple[1], cantorPairingRecursive(arrayTuple[2:len]));
	end
end

