include("day1.jl")
import Pkg; Pkg.add("Plots")
import .Day1

print("Day 1: ")
print(Day1.answer("input/day1.txt"))
