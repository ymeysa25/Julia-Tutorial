using QuadGK

# Calculations
# The function used to perform numerical integration is quadgk
# The first argument of quadgk is the function to be integrated, 
# while the second and third are the integration boundaries. 
# Let’s compute a Gaussian integral:

func1(x) = exp(-x^2)
res, err = quadgk(func1, -Inf, Inf)

println(abs(res - sqrt(π)) / sqrt(π))


# use rtol to get better estimation of the value 
res, err = quadgk(func1, -Inf, Inf, rtol=1e-15)
println(abs(res - sqrt(π)) / sqrt(π))


res, err = quadgk(func1, -Inf, Inf, order=12)
println(abs(res - sqrt(π)) / sqrt(π))


# Function with Multiple argument
# Let's suppose we have a function which take mre than on argument:
println("============ Function with Multiple argument==========")
func2(x, y, z) = x + y^2 + sin(z)

x = 5
z = 3
arg(y) = func2(x, y, z)

println(quadgk(arg, 1, 3))

func3(x, y, z) = x + y + z
x = 5
z = 3
arg(y) = func3(x, y, z)
println(quadgk(arg, 1, 3))

# Another case where this notation is useful is when the 
# integration appears inside a function:
func3(x,y) = x^2*exp(y)

function test_int(x, ymin, ymax)
    arg(y) = func3(x, y)
    return quadgk(arg, ymin, ymax)[1]
end

test_int(3, 1, 5)

