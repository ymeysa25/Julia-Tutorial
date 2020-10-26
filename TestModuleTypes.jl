module TestModuleTypes

export Circle, computePerimeter, computeArea, printCircleEquation

mutable struct Circle{T<:Real}
	radius::T
	perimeter::Float64
	area::Float64

	function Circle{T}(radius::T) where T<:Real
		# we initialize perimeter and area to -1.0, which is not a possible value
		new(radius, -1.0, -1.0)
	end
end

@doc raw"""
	computePerimeter(circle::Circle)

Compute the perimeter of `circle` and store the value.
"""
function computePerimeter(circle::Circle)
	circle.perimeter = 2*π*circle.radius
	return circle.perimeter
end

@doc raw"""
	computeArea(circle::Circle)

Compute the area of `circle` and store the value.
"""
function computeArea(circle::Circle)
	circle.area = π*circle.radius^2
	return circle.area
end

@doc raw"""
	printCircleEquation(xc::Real, yc::Real, circle::Circle )

Print the equation of a cricle with center at (xc, yc) and radius given by circle.
"""
function printCircleEquation(xc::Real, yc::Real, circle::Circle )
	println("(x - $xc)^2 + (y - $yc)^2 = $(circle.radius^2)")
	return
end
end # end module
