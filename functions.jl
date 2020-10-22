# Defining functions in julia will look like this
function plus_two(x)
    #perform some operations
    return x + 2
end
println(plus_two(2))

# define function the inline version
plus_two2(x) = x+2
println(plus_two2(2))


# it is also possible to create anonymous functions (like lambdas in Python) using the following structure:
plus_two3 = x -> x+2
println(plus_two3(2))


# More on anonymous functions
f(x,y,z) = (x^2 + 2y)*z

function integral_of_f(y,z)
    arg(x) = f(x,y,z)
    result = quadgk(arg, 3, 4)
    return result
end


# Void functions
function say_hi()
    println("Hello from TechyTok!")
    return
end

# Optional positional arguments
function myWeight(weightOnEarth, g=9.81)
    return weightOnEarth*g/9.81
end

println(myWeight(60))

weightInMars = myWeight(60, 3.72) # https://en.wikipedia.org/wiki/Gravity_of_Mars
println(weightInMars)
