# using Pkg
# Pkg.add("Unitful")

using Unitful

# In order to add units of measurement to numbers we use the 
# notation u"unit":
one_meter = 1u"m"
# or 
one_meter = 1*u"m"

println("one meter :  $one_meter")


# Convertion

b = uconvert(u"km", one_meter)
println(b)

# after convert. uconvert won't change unit of the argument 
# variable and will return a variable of the desired unit.

# if we want to remove the unit from variable,
#  we can use ustrip(unit, variable)
c = ustrip(u"km", one_meter)
println(c)

# Function
println("========== Compute Speed =========")
function compute_speed(delta_x, delta_t)
    return delta_x / delta_t
end

speed = compute_speed(1u"km", 2u"s")

println(speed)

# or we can write lik eyhis

function compute_speed(delta_x::Unitful.Length, delta_t::Unitful.Time)
    return uconvert(u"m/s", delta_x / delta_t)
end



speed = compute_speed(1u"km", 2u"s")

println(speed)