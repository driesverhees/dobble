include("cantorPairingRecursive.jl");
include("inverseCantorPairingRecursive.jl");
include("binaryRepresentation.jl");


q = 3; # Number of symbols on each card
m = 6; # Number of symbols in total

# Card representation: (i1,i2,..,iq) with i = 1..m
#

max = cantorPairingRecursive(m*ones(Int64,q));
maxRepresentation = 2^(m+1)-1
for i = 1:max
	card = binaryRepresentation(inverseCantorPairingRecursive(i,q));
	if (0 < card <= maxRepresentation)
		# The next card
		print(string(i,"->",card,"->",bin(card,2),"\n"));
	end
end