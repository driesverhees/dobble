include("isValidPair.jl");
function isValidSet(set)
    setLength = length(set);
    if (setLength < 2)
        return true;
    end
    for j = 1:(setLength-1)
        for k = (j+1):setLength
            valid = isValidPair(set[j], set[k]);
            if (!valid)
                return false;
            end
        end
    end
    return true;
end
