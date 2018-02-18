include("isValidPair.jl");
function isValidSetCard(set, newCard)
    setLength = length(set);
    if (setLength < 1)
        return true;
    end
    if (in(newCard, set))
        return false;
    end
    for j = 1:setLength
        valid = isValidPair(set[j], newCard)
        if (!valid)
            return false;
        end
    end
    return true;
end
