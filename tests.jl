include("day1.jl")
include("day2.jl")
include("day3.jl")
include("common.jl")

import .Day1
import .Day2
import .Day3
using .Common
using Test

# Day 1 tests
a1, a2 = Day1.answer(retrieve_test_input(1))
@test a1 == 24000
@test a2 == 45000

# Day2 tests
@test Day2.is_win("A", "Y")
@test !Day2.is_win("A", "X")
@test Day2.compute_score("A", "Y") == 8
a1, a2 = Day2.answer(retrieve_test_input(2))
@test a1 == 15


# Day3 tests
a1, a2 = Day3.answer(retrieve_test_input(3))
@test a1 == 157
@test a2 == 70 
