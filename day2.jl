module Day2
export is_win, compute_score, answer


    ShapeScore = Dict{String, Integer}("X"=>1, "Y"=>2, "Z"=>3)
    WinningMoves = Dict{String, String}("A"=> "Y", "B"=> "Z", "C"=>"X")
    LosingMoves = Dict{String, String}("A"=> "Z", "B"=> "X", "C"=>"Y")
    MoveMapping = Dict{String, String}("A"=>"X", "B"=>"Y", "C"=>"Z")
    OutcomeScore = Dict{String, Integer}("X"=>0, "Y"=> 3, "Z" => 6)
    

    function is_win(opponent::String, my_move::String)
        winning_move = WinningMoves[opponent]

        my_move == winning_move
    end

    function is_draw(opponent_move, my_move)
        translation = MoveMapping[opponent_move]
        translation == my_move
    end


    function compute_score(opponent_move, my_move)
        score = ShapeScore[my_move]

        if is_win(opponent_move, my_move)
            return score + 6
        elseif is_draw(opponent_move, my_move)
            return score + 3
        else
            return score
        end

    end

    function compute_second_score(opponent_move, outcome)
        score = OutcomeScore[outcome]

        if outcome == "X"
            shape = LosingMoves[opponent_move]
        elseif outcome == "Y"
            shape = MoveMapping[opponent_move]
        elseif outcome == "Z"
            shape = WinningMoves[opponent_move]
        end
        score + ShapeScore[shape]

    end

    function answer(list)
        score1 = 0
        score2 = 0

        for line in list
            splitted = split(line, " ")
            opponent_move, my_move = @. String(splitted)
            score1 += compute_score(opponent_move, my_move)
            score2 += compute_second_score(opponent_move, my_move)
        end

        return score1, score2
    end

end
