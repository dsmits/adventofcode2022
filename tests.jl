include("day1.jl")
import .Day1
using Test

a1, a2 = Day1.answer("test_input/day1.txt")
@test a1 == 24000
@test a2 == 45000


