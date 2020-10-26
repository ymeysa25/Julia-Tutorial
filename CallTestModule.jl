include("TestModuleTypes.jl")

using .TestModuleTypes

circle1 = Circle{Float64}(5.0)

computePerimeter(circle1)
circle1.perimeter

computeArea(circle1)
circle1.area

printCircleEquation(2, 3, circle1)