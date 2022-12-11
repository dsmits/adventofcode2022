include("day1.jl")
include("day2.jl")
include("day3.jl")
include("common.jl")

import .Day1
import .Day2
import .Day3
using .Common

println("Day 1: ")
println(Day1.answer(retrieve_input(1)))

println("Day 2: ")
println(Day2.answer(retrieve_input(2)))

println("Day 3: ")
println(Day3.answer(retrieve_input(3)))
