module Day1
export analyze_list
export count_calories
export get_total_top_calories

    function retrieve_list(path::String)
        f = open(path)
        readlines(f)
    end

    function count_calories(list)
        current_max = 0
        current_count = 0
        counts = []
        for item in list
            if item == ""
                push!(counts, current_count)
                current_count = 0
            else
                current_count += parse(Int, item)
            end

        end
        push!(counts, current_count)
        return counts
    end

    function analyze_list(path::String):int
        list = retrieve_list(path)
        calories = count_calories(list)

        max(calories...)
    end

    function get_total_top_calories(counts, top_n::Int)
        sorted = sort(counts, rev=true)

        sum(sorted[begin:top_n])
    end

    function answer(path)
        list = retrieve_list(path)
        counts = count_calories(list)
        # Answer 1
        top_calories = max(counts...)

        # Answer 2
        top_3_calories = get_total_top_calories(counts, 3)

        return top_calories, top_3_calories

    end

end