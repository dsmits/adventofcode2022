module Day3
export answer

    PRIORITY = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    GROUP_SIZE = 3

    function find_common_item(items::String)
        split = Int(length(items)/2)

        compartment1 = items[begin:split]
        compartment2 = items[split+1:end]

        common = intersect(Set(compartment1), Set(compartment2))

        # Has to be one item
        pop!(common)

    end

    function get_priority(c)
        findfirst(c, PRIORITY)
    end
    
    function answer(list)
        score1 = 0
        for items in list
            common_item = find_common_item(items)
            score1 += get_priority(common_item)
        end
        
        score2 = 0
        
        for i in 1:GROUP_SIZE:length(list)
            sets = @. Set(list[i:i+GROUP_SIZE-1])
            common_item = intersect(sets...)
            common_item = pop!(common_item)
            score2 += get_priority(common_item)
        end

        return score1, score2
    end

end
