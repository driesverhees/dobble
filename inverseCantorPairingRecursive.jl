include("inverseCantorPairing.jl");
function inverseCantorPairingRecursive(z, q)
	pair = inverseCantorPairing(z);
	if q == 2
		return pair;
	else
		recursiveResult = inverseCantorPairingRecursive(pair[2], q-1);
		result = Array{Int64, 1}(q)
		result[1] = pair[1]
		result[2:q] = recursiveResult
		return result;
	end
end

