include("binaryRepresentation.jl");
include("isValidSet.jl");

q = 5; # Number of symbols on each card
m = q*(q-1)+1; # Number of symbols/card in total
# Card representation: (i1,i2,..,iq) with i = 1..m
# The next variables are used to store the set
setLength = 0;
set = Array{Int64}(m);
# Construct initial card (with symbols 1, 2, 3, ..., q)
cardSymbols = Array{Int64}(1:q);
set[1] = binaryRepresentation(cardSymbols, m);
setLength = 1;
print(string("Initial card: ",cardSymbols,"\n"));
# Loop and generate cards
while true
# Construct the next card
    for c=q:-1:1
        if (cardSymbols[c] < m)
            # The symbol can be increased
            cardSymbols[c] = cardSymbols[c] + 1;
            # The card symbols should be in increasing order, therefore update the remaing digits
            if (c < q)
                cardSymbols[c+1:q] = cardSymbols[c] + Array{Int64}(1:(q-c))
            end
            # Exit card generator
            break;
        end
    end

    # Calculate int representation, if any
	card = binaryRepresentation(cardSymbols, m);
	if (0 < card)
        if (!in(card, set))
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
    #
    if (cardSymbols[1] >= m)
        break;
    end
end
print(string("-> Set contains ", setLength, " cards! (Maximum: ",m,")\n"))
