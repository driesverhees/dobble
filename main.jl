q = 3; # Number of symbols on each card
m = 6; # Number of symbols in total

# Card representation: (i1,i2,..,iq) with i = 1..m
#

# Example q = 3
for i = 1:m
	for j = i+1:m
		for k = j+1:m
			cardBinRep = 2^i + 2^j + 2^k;
			print(string(i,j,k,"->",bin(cardBinRep,2),"\n"));
		end
	end
end