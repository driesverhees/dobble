include("cantorPairingRecursive.jl");
include("inverseCantorPairingRecursive.jl");
include("binaryRepresentation.jl");
include("isValidSet.jl");

q = 4; # Number of symbols on each card, currently does not work for q >= 5 because an overflow for max will happen
m = q*(q-1)+1; # Number of symbols/card in total
# Card representation: (i1,i2,..,iq) with i = 1..m
#
max = cantorPairingRecursive(m*ones(Int64,q));
maxRepresentation = 2^(m+1)-1
# The next variables are used to construct the set
setLength = 0;
set = Array{Int64}(m);
#
for i = 1:max
    cardSymbols = inverseCantorPairingRecursive(i,q);
	card = binaryRepresentation(cardSymbols, m);
	if (0 < card <= maxRepresentation)
        #print(string(cardSymbols,"->",card,"->",bin(card,2),"\n"));
        if (setLength == 0)
            set[1] = card;
            setLength = 1;
            print(string("Card ", cardSymbols ," added","\n"));
        elseif (!in(card, set))
            tmpSet = push!(set[1:setLength], card);
            validTmpSet = isValidSet(tmpSet);
            if (validTmpSet)
                set[setLength+1] = card;
                setLength = setLength + 1;
                print(string("Card ", setLength ," added: ",cardSymbols,"\n"));
                if (setLength == m)
                    break;
                end
            end
        end
	end
end
print(string("-> Set contains ", setLength, " cards!","\n"))
